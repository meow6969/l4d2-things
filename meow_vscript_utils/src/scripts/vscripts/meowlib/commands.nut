

if ("Commands" in getroottable())
{
	return;
}

::Commands <-
{

}


IncludeScript("meowlib/MeowUtils.nut");
IncludeScript("meowlib/json.nut");


class ::Commands.CommandCtx
{
	player = null;
	playerPrivileged = false;
	playerName = "";
	message = "";
	prefix = "";
	playerSteamID = "";
	
	constructor(p, msg, pfx, steamid, privil=false)
	{
		this.player = p;
		this.playerName = p.GetPlayerName();
		this.message = msg;
		this.prefix = pfx;
		this.playerSteamID = steamid;
		this.playerPrivileged = privil;
	}
}

class ::Commands.Command
{
	commandMan = null;
	aliases = [];
	// displayed with <pfx> help
	brief = "";
	// displayed with <pfx> help <cmdName>
	help = "";
	// true means that this command is [ADMIN]
	privileged = false;
	// in seconds -- not implemented yet
	cooldown = 0;
	// this means it wont show up in the help menu
	hidden = false;

	cooldownTracker = {};

	constructor(cmdMan)
	{
		this.commandMan = cmdMan;
	}

	// </ meowCmd_vargv />
	function Callback(ctx, ...)
	{
		throw "::Commands.Command.Callback(): NOT IMPLEMENTED";
	}

	function GetCallbackAttributes()
	{
		return this.getclass().getattributes("Callback");
	}

	function GetCallbackInfos()
	{
		return this.Callback.getinfos();
	}

	function GetNumArgs()
	{
		local fInfos = this.Callback.getinfos();
		// if it has varargs we return -1 has null value
		if (fInfos["varargs"] > 0) return -1;
		// first arg is always this, second arg is always ctx
		return fInfos["parameters"].slice(2).len();
	}

	function GetMinArgs()
	{
		local fInfos = this.Callback.getinfos();
		local params = fInfos["parameters"];
		// slice this, ctx
		params = params.slice(2);
		// slice vargv, ...
		if (fInfos["varargs"] > 0) params = params.slice(0, -2);
		// slice default params
		params = params.slice(0, -fInfos["defparams"].len());
		return params.len();
	}

	// Time() returns a float value of the number of seconds the server has been alive
	function IsCooldown(pSID)
	{
		if (this.cooldown <= 0) return false;
		if (!(pSID in this.cooldownTracker)) return false;
		local diff = (this.cooldownTracker[pSID] + this.cooldown) - Time();
		if (diff > 0) return diff;
		delete this.cooldownTracker[pSID];
		return false;
	}

	function AddCooldown(pSID)
	{
		if (this.cooldown <= 0) return;
		this.cooldownTracker[pSID] <- Time();
	}
}

class ::Commands.HelpCommand extends ::Commands.Command
{
	aliases = ["help", "h"];
	brief = "show this text";
	help = "syntax: \"?\" means that a argument is not required, \"...\" means that a variable number of that argument can be passed";

	</ meowCmd_param_cmd = "the alias of the command you want information on" />
	function Callback(ctx, cmd="")
	{
		local cmdName = cmd;
		if (cmdName != "")
		{
			local _cmd = this.commandMan.GetCmdByAlias(cmdName);
			if (_cmd == null)
			{
				ClientPrint(ctx.player, 5, "ERROR: could not find command by alias: \""+cmdName+"\"");
				return;
			}
			::MeowUtils.ClientPrintSplit(ctx.player, this.GetCmdFullHelp(ctx, _cmd));
			return;
		}
		::MeowUtils.ClientPrintSplit(ctx.player, this.GetHelpStr(ctx));
	}

	function GetHelpCmdParamsArray(cmd)  // -> array<tuple<string, defaultValue<obj|>>>
	{
		local rLst = [];

		local clbkInfos = cmd.GetCallbackInfos();
		local params = clbkInfos["parameters"];
		local paramsLen = params.len();
		local defParams = clbkInfos["defparams"];
		local numDefParams = defParams.len();
		// in the documentation it shows "varargs = 2" , but ive never been able to get that my self?
		local variableParams = clbkInfos["varargs"] > 0;

		foreach (i, arg in params)
		{
			::MeowUtils.Log("i="+i+", arg="+arg+"; ");
			local rStr = "\x04";

			// u cant have a arg named "this" (at least from what i can tell from my testing)
			// "this" seems to always be reserved		if (strip(this.help) != "" && strip(this.brief) == "")
			// "ctx" is a special arg that all functions must have
			if (arg == "this" || arg == "ctx") continue;

			// if the index is equal to the second to last params index
			// functions with variable params always have the last 2 params being "vargv", "..."
			if (variableParams && i == paramsLen - 2)
			{
				// printl("variable params");
				local clbkAttrs = cmd.GetCallbackAttributes();
				if ("meowCmd_vargvName" in clbkAttrs) rStr += "["+clbkAttrs["meowCmd_vargvName"]+"]";
				rStr += "...\x01";
				// rLst.append(rStr);
				rLst.append([rStr, "vargv"]);
				// continue;
				break;
				// return rStr+"...";
			}
			rStr += "["+arg;
			local defParamsIndex = i - (paramsLen - numDefParams);
			local sLst = [null, arg];
			if (defParamsIndex >= 0)
			{
				// rStr += "="+infos.defparams[defParamsIndex];
				rStr += "?";
				sLst.append(defParams[defParamsIndex]);
			}
			rStr += "]\x01";
			sLst[0] = rStr;
			// printl("sLst="+::Json.Serialize.ToString(sLst, 0));
			// rLst.append(rStr);
			rLst.append(sLst);
		}
		return rLst;
	}

	//                        ::Commands.Command
	function GetHelpCmdParams(cmd)  // -> string
	{
		local rLst = this.GetHelpCmdParamsArray(cmd);
		// printl("pre_rLst="+::Json.Serialize.ToString(rLst, 0));
		rLst.apply(@(a) a[0]);
		// printl("post_rLst="+::Json.Serialize.ToString(rLst, 0));
		// printl("join="+::MeowUtils.ArrayJoin(rLst, " "));
		return ::MeowUtils.ArrayJoin(rLst, " ");
	}

	function GetCmdFullHelp(ctx, cmd)  // -> string
	{
		local isPriv = cmd.privileged;
		if (isPriv && !ctx.playerPrivileged)
		{
			return "ERROR: you dont have access to view this command!";
			return;
		}
		local tabWidth = 6;
		local bStr = "";
		local privilegedStr = "";
		local paramLst = this.GetHelpCmdParamsArray(cmd);
		local aliasesStr;
		if (cmd.aliases.len() > 1) aliasesStr = "["+::MeowUtils.ArrayJoin(cmd.aliases, "|")+"]";
		else aliasesStr = cmd.aliases[0];
		local paramStr = strip("\x05"+aliasesStr+"\x01 "+::MeowUtils.ArrayJoin(paramLst, " ", (@(lst, i) lst[i][0])));

		if (cmd.privileged) privilegedStr = "\x03[ADMIN]\x01 ";
		if (strip(cmd.brief) != "" || privilegedStr != "") bStr = " : "+privilegedStr+cmd.brief;

		local rStr = "  \x01\"\x05"+ctx.prefix+"\x01 "+paramStr+"\""+bStr+"\n";

		if (strip(cmd.help) != "") rStr += "    \x01"+cmd.help;
		if (cmd.GetNumArgs() == 0) return rStr;
		rStr += "\n";
		// rStr += "\x01"+"arguments:\n"
		rStr += "\x01"+"arguments:";
		local longestParam = ::MeowUtils.GetLongestStringLen(paramLst);
		local clbkAttrs = cmd.GetCallbackAttributes();
		// local paramLst
		// i think i can fix spacing issues by removing the color codes (\x01,\x02,...) from the strings before hand , but idk dont wanna
		foreach (prmBlah in paramLst)
		{
			// printl("prmBlah="+::Json.Serialize.ToString(prmBlah, 0));
			local prm = prmBlah[0];
			local prmLen = prm.len();
			local numTabs = ceil((longestParam - prmLen + 1) / tabWidth);
			// printl("numTabs="+numTabs);
			local padding = ::MeowUtils.StringMult("\t", numTabs);
			local paramDescription;
			local paramHelpKey;
			if (prmBlah[1] == "vargv") paramHelpKey = "meowCmd_vargvHelp";
			else paramHelpKey = "meowCmd_param_"+prmBlah[1];
			// printl("paramHelpKey="+paramHelpKey);
			if (paramHelpKey in clbkAttrs) paramDescription = clbkAttrs[paramHelpKey];
			else paramDescription = "no description given";
			
			if (prmBlah.len() == 3)
				paramDescription += " (default: \x05"+::Json.Serialize.ToString(prmBlah[2], 0)+"\x01)";

			// rStr += "  "+prm+padding+" : "+paramDescription+"\n"; 
			rStr += "\n  "+prm+padding+" : "+paramDescription;
		}
		// return rStr.slice(0, -1);  // remove the last "\n"
		return rStr;
	}

	function GetAllParamsHelps(ctx)  // -> table<alias[0]<string>, string>
	{
		local rTbl = {};
		// if (pfx == null) pfx = this.GetPrefix(ctx);
		foreach (cmd in this.commandMan.commands)
		{
			if (cmd.hidden) continue;
			if (cmd.privileged && !ctx.playerPrivileged) continue;
			local alias = cmd.aliases[0];
			// local paramStr = pfx+" "+alias+" "+this.GetHelpCmdParams(cmd);
			// rLst.append(paramStr);
			// rLst.append(pfx+" "+alias+" "+this.GetHelpCmdParams(cmd));
			rTbl[alias] <- strip("\x05"+alias+"\x01 "+this.GetHelpCmdParams(cmd));
		}
		return rTbl;
	}

	function GetHelpStr(ctx)  // -> string
	{
		local rStr = "";
		// local pfx = this.GetPrefix(ctx);
		local tabWidth = 8;
		// table[alias<string>] -> helpTxt<string>
		local allHelps = this.GetAllParamsHelps(ctx);
		local longestHelp = ::MeowUtils.GetLongestStringLen(::MeowUtils.TableValues(allHelps));
		// printl("allHelps="+::Json.Serialize.ToString(allHelps));
		
		foreach (cmd in this.commandMan.commands)
		{
			// if (cmd.hidden) continue;
			local alias = cmd.aliases[0];
			if (!(alias in allHelps)) continue;
			local numTabs = ceil((longestHelp - allHelps[alias].len()) / tabWidth.tofloat());
			// if (numTabs < 1) numTabs = 1;
			// printl("numTabs="+numTabs);
			local padding = ::MeowUtils.StringMult("\t", numTabs);
			// local paramStr = pfx+" "+alias+" "+allHelps[alias];
			local paramStr = allHelps[alias];
			local privilegedStr;
			if (ctx.playerPrivileged && cmd.privileged) privilegedStr = "\x03[ADMIN]\x01 ";
			else privilegedStr = "";

			rStr += "  \x01\"\x05"+ctx.prefix+"\x01 "+paramStr+"\" "+padding+": "+privilegedStr+cmd.brief+"\n";
		}
		return rStr;
	}
}

class ::Commands.CommandManager
{
	// array<::Commands.Command>
	commands = null;
	prefix = null;
	adminFunc = null; 

	//          table[cmdClassName<string>] <- instanceof ::Commands.Command
	constructor(cmdTable, pfx, userAdminFunc, helpCmd=::Commands.HelpCommand)
	{
		this.commands = [];
		this.prefix = pfx;
		if (userAdminFunc != null)
			this.adminFunc = userAdminFunc;
		else
			this.adminFunc = function(a) { return false; };
		local takenAliases = clone helpCmd.aliases;
		this.commands.append(helpCmd(this));
		foreach (clsName, cls in cmdTable)
		{
			if (cls.getbase() != ::Commands.Command) continue;
			if (cls.aliases.len() == 0) throw "command \""+clsName+"\" has no aliases";
			foreach (alias in cls.aliases) 
			{
				if (strip(alias) == "") throw "command \""+clsName+"\" has invalid alias, cannot be empty string ( alias=\"\" )";
				if (takenAliases.find(alias) != null) throw "command \""+clsName+"\" has invalid alias, alias \""+alias+"\" already taken";
				if (alias.tolower() != alias) throw "command \""+clsName+"\" has invalid alias, alias \""+alias+"\" is not all lowercase";
				takenAliases.append(alias);
			}
			this.commands.append(cls(this));
		}
	}

	function GetCmdByAlias(alias) // -> ::Commands.Command|null
	{
		alias = alias.tolower();
		foreach (cmd in this.commands)
		{
			if (cmd.aliases.find(alias) != null) return cmd;
		}
		return null;
	}

	function GenerateCtx(p, msg, steamid=null)
	{
		if (steamid == null) steamid = ::MeowUtils.GetPlayerSteamID(p);
		// return ::Commands.CommandCtx(p, msg, this.prefix, steamid, ::BhopFunc.IsPlayerAdmin(steamid));
		return ::Commands.CommandCtx(p, msg, this.prefix, steamid, this.adminFunc(steamid));
	}

	function Invoke(p, msg, steamid=null)
	{
		local message = strip(msg);
		local args = ::MeowUtils.GetArgList(message);
		if (args.len() < 1) return false;

		args[0] = args[0].tolower();
		if (args[0] != this.prefix) return false;

		if (steamid == null) steamid = ::MeowUtils.GetPlayerSteamID(p);
		local ctx = this.GenerateCtx(p, message, steamid);
		if (args.len() == 1) 
		{
			this.commands[0].Callback(ctx);
			return;
		}
		// printl("argslen="+args.len());
		args[1] = args[1].tolower();
		local alias = args[1];
		local cmd = this.GetCmdByAlias(alias);
		if (cmd == null) 
		{
			ClientPrint(p, 5, "ERROR: invalid alias \""+alias+"\"");
			ClientPrint(p, 5, "do \""+this.prefix+" help\" for help");
			return;
		}
		if (cmd.privileged && !ctx.playerPrivileged)
		{
			ClientPrint(p, 5, "ERROR: you do not have the permission to run this command");
			return;
		}
		local cldwn = cmd.IsCooldown(ctx.playerSteamID);
		if (cldwn)
		{
			ClientPrint(p, 5, "ERROR: this command is on cooldown! you have \x04"+cldwn+"\x01 seconds left");
			return;
		}
		//                        sliced prefix, alias
		local providedArgs = args.len() - 2;
		local maxArgs = cmd.GetNumArgs();
		local minArgs = cmd.GetMinArgs();
		if (minArgs > providedArgs)
		{
			ClientPrint(p, 5, "ERROR: not enough args, need \x05"+minArgs+"\x01, provided \x05"+providedArgs+"\x01");
			return;
		}
		if (maxArgs != -1 && providedArgs > maxArgs)
		{
			ClientPrint(p, 5, "ERROR: too many args, max \x05"+minArgs+"\x01, provided \x05"+providedArgs+"\x01");
			return;
		}
		local arrayArgs = [cmd, ctx];
		foreach (arg in args.slice(2))
		{
			arrayArgs.append(arg);
		}
		try
		{
			cmd.Callback.acall(arrayArgs);
		}
		catch (e)
		{
			ClientPrint(p, 5, "ERROR: internal error processing your command, "+e);
		}
		cmd.AddCooldown(ctx.playerSteamID);
	}
}

