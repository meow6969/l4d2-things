// TODO
//  * save PlayerSettings each in their own file  ---  DONE
//  * localization & multi language support       ---  idk if will ever be added ,, until i can think of elegant solution probably will not be added
//                                                ---  problems include: 
//                                                       ---  individual players should be able to select language
//                                                       ---  would have to create intuitive solution to inserting variables
//                                                       ---  this solution would almost certainly be incredibly unintuitive as itd be basically random what information can be included in a string depending on the execution context of the print and the type of message that is being outputted
//                                                       ---  cant think of a good way to send this information to the function
//                                                       ---  the BhopCommand architecture would have to be entirely reliant on it , making the entire thing weird and not as universal of a system
//                                                       ---  having user generated localizations would be incredibly difficult to support
//                                                       ---  i dont actually know any language other then english so i dont even have a good way to test the usefulness of the system in its applicability to other languages


// this happens if the script is not running in l4d2
if (!("IncludeScript" in getroottable()))
{
	dofile("implement_l4d2_utils.nut");
}
IncludeScript("json.nut");
IncludeScript("argparse.nut");


::BhopClasses <-
{
	
}

class ::BhopClasses.BhopCommandCtx
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

class ::BhopClasses.BhopCommand
{
	commandMan = null;
	aliases = [];
	// displayed with <pfx> help
	brief = "";
	// displayed with <pfx> help <cmdName>
	help = "";
	// true means that this command is [ADMIN]
	privileged = false;
	// in ticks -- not implemented yet
	cooldown = 0;

	constructor(cmdMan)
	{
		this.commandMan = cmdMan;
	}

	// </ bhopCmd_vargv />
	function Callback(ctx, ...)
	{
		throw "::BhopClasses.BhopCommand.Callback(): NOT IMPLEMENTED";
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
}

class ::BhopClasses.HelpCommand extends ::BhopClasses.BhopCommand
{
	aliases = ["help"];
	brief = "show this text";
	help = "syntax: \"?\" means that a argument is not required, \"...\" means that a variable number of that argument can be passed";

	</ bhopCmd_param_cmd = "the alias of the command you want information on" />
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
			::BhopUtils.ClientPrintSplit(ctx.player, this.GetCmdFullHelp(ctx, _cmd));
			return;
		}
		::BhopUtils.ClientPrintSplit(ctx.player, this.GetHelpStr(ctx));
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
			printl("i="+i+", arg="+arg+"; ");
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
				if ("bhopCmd_vargvName" in clbkAttrs) rStr += "["+clbkAttrs["bhopCmd_vargvName"]+"]...";
				else rStr += "...";
				rStr += "\x01";
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

	//                        ::BhopClasses.BhopCommand
	function GetHelpCmdParams(cmd)  // -> string
	{
		local rLst = this.GetHelpCmdParamsArray(cmd);
		// printl("pre_rLst="+::Json.Serialize.ToString(rLst, 0));
		rLst.apply(@(a) a[0]);
		// printl("post_rLst="+::Json.Serialize.ToString(rLst, 0));
		// printl("join="+::BhopUtils.ArrayJoin(rLst, " "));
		return ::BhopUtils.ArrayJoin(rLst, " ");
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
		if (cmd.aliases.len() > 1) aliasesStr = "["+::BhopUtils.ArrayJoin(cmd.aliases, "|")+"]";
		else aliasesStr = cmd.aliases[0];
		local paramStr = strip("\x05"+aliasesStr+"\x01 "+::BhopUtils.ArrayJoin(paramLst, " ", (@(lst, i) lst[i][0])));

		if (cmd.privileged) privilegedStr = "\x03[ADMIN]\x01 ";
		if (strip(cmd.brief) != "" || privilegedStr != "") bStr = " : "+privilegedStr+cmd.brief;

		local rStr = "  \x01\"\x05"+ctx.prefix+"\x01 "+paramStr+"\""+bStr+"\n";

		if (strip(cmd.help) != "") rStr += "  \x01"+cmd.help;
		if (cmd.GetNumArgs() == 0) return rStr;
		rStr += "\n";
		rStr += "\x01"+"arguments:\n"
		local longestParam = ::BhopUtils.GetLongestStringLen(paramLst);
		local clbkAttrs = cmd.GetCallbackAttributes();
		// local paramLst
		foreach (prmBlah in paramLst)
		{
			printl("prmBlah="+::Json.Serialize.ToString(prmBlah, 0));
			local prm = prmBlah[0];
			local prmLen = prm.len();
			local numTabs = ceil((longestParam - prmLen + 1) / tabWidth);
			printl("numTabs="+numTabs);
			local padding = ::BhopUtils.StringMult("\t", numTabs);
			local paramDescription;
			local paramHelpKey;
			if (prmBlah[1] == "vargv") paramHelpKey = "bhopCmd_vargvHelp";
			else paramHelpKey = "bhopCmd_param_"+prmBlah[1];
			printl("paramHelpKey="+paramHelpKey);
			if (paramHelpKey in clbkAttrs) paramDescription = clbkAttrs[paramHelpKey];
			else paramDescription = "no description given";
			
			if (prmBlah.len() == 3)
				paramDescription += " (default: \x05"+::Json.Serialize.ToString(prmBlah[2], 0)+"\x01)";

			rStr += "  "+prm+padding+" : "+paramDescription+"\n";
		}
		return rStr.slice(0, -1);  // remove the last "\n"
	}

	function GetAllParamsHelps(ctx)  // -> table<alias[0]<string>, string>
	{
		local rTbl = {};
		// if (pfx == null) pfx = this.GetPrefix(ctx);
		foreach (cmd in this.commandMan.commands)
		{
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
		local longestHelp = ::BhopUtils.GetLongestStringLen(::BhopUtils.TableValues(allHelps));
		// printl("allHelps="+::Json.Serialize.ToString(allHelps));
		
		foreach (cmd in this.commandMan.commands)
		{
			local alias = cmd.aliases[0];
			if (!(alias in allHelps)) continue;
			local numTabs = ceil((longestHelp - allHelps[alias].len()) / tabWidth.tofloat());
			// if (numTabs < 1) numTabs = 1;
			printl("numTabs="+numTabs);
			local padding = ::BhopUtils.StringMult("\t", numTabs);
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

class ::BhopClasses.CommandManager
{
	// array<::BhopClasses.BhopCommand>
	commands = null;
	prefix = null;

	//          table[cmdClassName<string>] <- instanceof ::BhopClasses.BhopCommand
	constructor(cmdTable, pfx="!bhop", helpCmd=::BhopClasses.HelpCommand)
	{
		this.commands = [];
		this.prefix = pfx;
		local takenAliases = clone helpCmd.aliases;
		this.commands.append(helpCmd(this));
		foreach (clsName, cls in cmdTable)
		{
			if (cls.getbase() != ::BhopClasses.BhopCommand) continue;
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

	function GetCmdByAlias(alias) // -> ::BhopClasses.BhopCommand|null
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
		if (steamid == null) steamid = ::BhopUtils.GetPlayerSteamID(p);
		return ::BhopClasses.BhopCommandCtx(p, msg, this.prefix, steamid, ::BhopFunc.IsPlayerAdmin(steamid));
	}

	function Invoke(p, msg, steamid=null)
	{
		local message = strip(msg);
		local args = ::ArgParse.GetArgList(message);
		if (args.len() < 1) return false;

		args[0] = args[0].tolower();
		if (args[0] != this.prefix) return false;

		if (steamid == null) steamid = ::BhopUtils.GetPlayerSteamID(p);
		local ctx = this.GenerateCtx(p, message, steamid);
		if (args.len() == 1) 
		{
			this.commands[0].Callback(ctx);
			return;
		}
		printl("argslen="+args.len());
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
	}
}

class ::BhopClasses.BhopData
{
	vel						= null;			// float
	</ json_ignore = true />
	jumpPos					= null;			// Vector
	</ json_ignore = true />
	landPos					= null;			// Vector
	airTime					= 0;			// int<ticks>		-- idk if needed ?
		
	constructor(v, jP)  // , aT)			// v<float>, sP<Vector>, eP<Vector>, aT<int<ticks>>
	{
		this.vel = v;
		this.jumpPos = jP;
		this.airTime = 0;
		// this.startPos = sP;
		// this.landPos = eP;
		// this.airTime = aT;
	}

	// function FinishBhop()

	function StrideLength()
	{
		return ::BhopUtils.CalculateVectorDistance(this.jumpPos, this.landPos);
	}

	function _tostring()
	{
		return ::Json.Serialize.ToString(this); 
	}
}

class ::BhopClasses.BhopChainData
{
	</ json_type = "array", json_sub_type = ::BhopClasses.BhopData />
	bhopChain			= null;			// list[BhopData]
	bhopVels			= 0;			// float<velocity> (additive)
	maxVel				= 0;			// float<velocity>
	</ json_ignore = true />
	groundTime			= 0;			// int<tick>
	score				= 0;			// float
	timeString			= "";
	</ json_ignore = true />
	player				= null;			// Player
	</ json_ignore = true />
	playerSteamID		= null;			// string

	constructor(p, steamid, bhop=null)
	{
		this.player = p;
		this.playerSteamID = steamid;
		this.bhopChain = [];
		this.bhopVels = 0;
		this.maxVel = 0;
		if (this.player != null)
		{
			local tT = {};
			LocalTime(tT);
			this.timeString = tT["year"]+"/"+tT["month"]+"/"+tT["day"];
		}
		if (bhop != null)
		{
			this.AddBhop(bhop);
		}
	}

	function AddBhop(bhop)
	{
		this.bhopChain.append(bhop);
		/* local l = this.bhopChain.len()
		if (l > 1)
		{
			this.bhopChain[l - 2].landPos = bhop.jumpPos;
		} */
		this.bhopVels += bhop.vel;
		if (this.maxVel < bhop.vel)
		{
			this.maxVel = bhop.vel;
		}
	}
	
	function GetNumBhops()
	{
		// - 1 because the original jump that started the chain is also counted, even though its not a bhop
		return this.bhopChain.len() - 1;
	}

	function IncrementAirTime()
	{
		this.bhopChain[this.bhopChain.len() - 1].airTime++;
	}

	function AverageVelocity()
	{
		// i do bhopChain.len() instead of GetNumBhops() cause like idk why change it i guess 
		return this.bhopVels / this.bhopChain.len();
	}

	function ChainDistance()
	{
		return ::BhopUtils.CalculateVectorDistance(this.bhopChain[0].jumpPos, this.bhopChain[this.bhopChain.len() - 1].landPos);
	}

	function GetScore(numBhops, avgVel, bhopCountMult, bhopAvgVelMult) // -> float
	{
		local jumpMult = numBhops * bhopCountMult;
		local velMult = avgVel * bhopAvgVelMult;

		return jumpMult * velMult;
	}

	function ScoreBhop()  // -> bool|int  (false means not best bhop, true means new best bhop, 69 means user first bhop)
	{
		local numBhops = this.GetNumBhops();
		local avgVel = this.AverageVelocity();
		local bhopCountMult = ::BhopVars.ScoringSettings["BhopCountMult"];
		local bhopAvgVelMult = ::BhopVars.ScoringSettings["BhopAvgVelocityMult"];
		
		this.score = this.GetScore(numBhops, avgVel, bhopCountMult, bhopAvgVelMult);
		this.score = score.tointeger();
		
		if (this.player == null)
		{
			return null;
		}
		// local pSID = ::BhopUtils.GetPlayerSteamID(this.player);
		local pSID = this.playerSteamID;
		::BhopVars.PlayerSettings[pSID]["TotalBhops"] += numBhops;
		::BhopVars.PlayerSettings[pSID]["TotalDistanceBhopped"] += this.ChainDistance();
		::BhopVars.PlayerSettings[pSID]["ConfigAltered"] = true;
		if (this.maxVel > ::BhopVars.PlayerSettings[pSID]["HighestVelocity"])
		{
			::BhopVars.PlayerSettings[pSID]["HighestVelocity"] = this.maxVel;
		}
		if (::BhopVars.PlayerSettings[pSID]["BestBhop"] == null || this.score > ::BhopVars.PlayerSettings[pSID]["BestBhop"].score)
		{
			local previousBest = ::BhopVars.PlayerSettings[pSID]["BestBhop"];
			::BhopVars.PlayerSettings[pSID]["BestBhop"] = this;
			if (previousBest == null) 
			{
				return 69;  // this is the return code that means its the users first bhop record
			}
			return previousBest;
		}
		
		return false;
	}
}

class ::BhopClasses.PlayerSettings
{
	</ json_ignore = true />
	ConfigAltered			= false;
	Admin					= false;
	IgnoreBhop				= false;
	IgnorePerfectJumps		= false;
	TotalBhops				= 0;
	HighestVelocity			= 0;
	TotalDistanceBhopped	= 0;
	</ json_type = ::BhopClasses.BhopChainData />
	BestBhop				= null;
	Name					= "";
}

class ::BhopClasses.ScoringSettings
{
	BhopCountMult			= 0.2;
	BhopAvgVelocityMult		= 2.0;
}

class ::BhopClasses.Localization
{
	
}

class ::BhopClasses.BhopConfig
{
	</ json_ignore = true />
	ConfigPath				= "simple_bunnyhop_detect";
	</ json_ignore = true />
	ConfigAltered			= false;

	BunnyDetectCount		= 3;
	BunnyTickLeniency		= 3;
	BunnyMinStartingVel		= 0;

	ScoringSettings			= ::BhopClasses.ScoringSettings();
	NumLeaderboardSlots		= 5;
	LeaderboardOnGameEnd	= true;
	
	DefaultPlayerSettings	= ::BhopClasses.PlayerSettings();
	// </ json_sub_type = ::BhopClasses.PlayerSettings />
	</ json_ignore = true />
	PlayerSettings			= {};			//	dict[steamID<str>, PlayerSettings[dict]]
	</ json_ignore = true />
	BunnyTickerEnt			= null;
	</ json_ignore = true />
	BunnyUtilsTickerEnt		= null;
	</ json_ignore = true />
	ConfigTickerEnt			= null;
	</ json_ignore = true />
	SecondTickerEnt			= null;
	</ json_ignore = true />
	JumpingList				= {}; 			//	dict[str<steamID>, BhopChainData]
	</ json_ignore = true />
	PlayerInitList			= [];			// list[userid]  -- NOTE: userid IS NOT STEAM ID!!!!!!!!!!!
											// this helps us keep track of what players are initialized
	</ json_ignore = true />
	CommandManager			= null;
	</ json_ignore = true />
	build_num=51
}

printl("<mt2> Load bunny-hop detect script "+::BhopClasses.BhopConfig.build_num+"  !!!")


::BhopVars <- ::BhopClasses.BhopConfig();

// this is for functions that are more general and not specifically related to bhop detector
::BhopUtils <-
{
	// this function stole from vslib
	function IsEntityOnGroundVSLib(entity) 
	{
		local flags = NetProps.GetPropInt(entity, "m_fFlags");
		return flags == ( flags | 1 );
	}

	function GetPlayerSpeed(player) 
	{
		return player.GetVelocity().Length();
	}

	function GetPlayerSteamID(player)
	{
		return NetProps.GetPropString(player, "m_szNetworkIDString");
	}

	function ClientPrintSplit(p, s)
	{
		local msgs = ::ArgParse.Split(s, "\n");
		foreach (msg in msgs)
		{
			ClientPrint(p, 5, msg);
		}
	}

	function IsAlive(player)
	{
		if (!player || !player.IsValid())
		{
			return false;
		}

		local pClass = player.GetClassname();

		if (pClass == "player"
		|| pClass == "witch"
		|| pClass == "infected")
		{
			return NetProps.GetPropInt(player,"m_lifeState") == 0;
		}
		else
		{
			return player.GetHealth() > 0;
		}
	}

	function CalculateVectorDistanceSquared(v1, v2)	// v1<Vector>, v2<Vector> -> float<distanceSquared>
	{
		return pow(v1.x - v2.x, 2) + pow(v1.y - v2.y, 2) + pow(v1.z - v2.z, 2);
	}

	function CalculateVectorDistance(v1, v2)		// v1<Vector>, v2<Vector> -> float<distance>
	{
		return sqrt(::BhopUtils.CalculateVectorDistanceSquared(v1, v2));
	}

	// dis sucks wtf is wrong with me
	// dis gets called multiple times per tick -- fixed now 
	// and runs a loop inside of itself
	// its literally the worst kind of bad
	function GetPlayerFromSteamID(steamid)
	{
		// printl("SendToAllNon");
		local player = null;
		while (player = Entities.FindByClassname(player, "player"))
		{
			if (IsPlayerABot(player))
			{
				continue;
			}
			if (::BhopUtils.GetPlayerSteamID(player) == steamid)
			{
				return player;
			}
			
		}
		return null;
	}

	function TableKeys(t)
	{
		local r = [];
		foreach (k, v in t)
		{
			r.append(k);
		}
		return r;
	}

	function TableValues(t)
	{
		local r = [];
		foreach (k, v in t)
		{
			r.append(v);
		}
		return r;
	}

	//                           array<obj>, func
	function GetLongestStringLen(objs,       lenFinder=(@(a) a.len()))
	{
		if (objs.len() == 0) return null;
		local nObjs = clone objs;
		nObjs.sort(@(a,b) lenFinder(a) <=> lenFinder(b));
		nObjs.reverse();
		return nObjs[0].len();
	}

	// repeats a string n amount of times
	function StringMult(iStr, n)
	{
		local rStr = "";
		for (local i = 0; i < n; i++)
		{
			rStr += iStr;
		}
		return rStr;
	}

	function ArrayJoin(arr, sep=", ", itmFinder=(@(lst, i) lst[i]))
	{
		local rStr = "";
		if (arr.len() == 0) return "";
		for (local i = 0; i < arr.len(); i++)
		{
			rStr += itmFinder(arr, i)+sep;
		}
		return rStr.slice(0, -sep.len());
	}

	function MergeArrays(a1, a2)
	{
		local r = [];
		foreach (o in a1)
		{
			if (r.find(o) == null) r.append(o);
		}
		foreach (o in a2)
		{
			if (r.find(o) == null) r.append(o);
		}
		return r;
	}
}

::BhopFunc <-
{
	function loadFile()
	{
		printl("Bunnyhop detect condition (build num "+::BhopVars.build_num+") :  successfully reload !! yay!");
		
		printl("loaded bunny hop config:");
		::BhopFunc.ReadConfig();
		printl(::Json.Serialize.ToString(::BhopVars));
		::BhopFunc.SetCommandManager();
		::BhopFunc.WriteConfig();
		::BhopFunc.PopulatePlayerInitList();
		
		/* printl("  BunnyDetectCount="+::BhopVars.BunnyDetectCount);
		printl("  BunnyTickLeniency="+::BhopVars.BunnyTickLeniency);
		printl("  DefaultPlayerSettings="+::Json.Utils.WriteConfig()PrintThing(::BhopVars.DefaultPlayerSettings, true));
		printl("  PlayerSettings="+::Json.Utils.PrintThing(::BhopVars.PlayerSettings, true)); */
	}

	function SetCommandManager()
	{
		::BhopVars.CommandManager = ::BhopClasses.CommandManager(::BhopCmds, "!bhop", ::BhopClasses.HelpCommand);
	}

	function ReadPlayersManifest()  // -> array<string>
	{
		local path = ::BhopVars.ConfigPath+"/playersmanifest.txt";
		local file = FileToString(path);
		if (!file) return [];
		return ::ArgParse.Split(file, "\n");
	}

	function WritePlayersManifest()
	{
		local l = ::BhopFunc.ReadPlayersManifest();
		local steamids = ::BhopUtils.TableKeys(::BhopVars.PlayerSettings);
		steamids = steamids.filter(@(i, v) v.len() > 10);
		steamids.apply(@(v) v.slice(10));
		// printl("steamidstype="+typeof steamids);
		// printl("ltype="+typeof l);
		
		local r = ::BhopUtils.MergeArrays(l, steamids);
		printl("len(r)="+r.len()+", len(steamids)="+steamids.len()+", len(l)="+l.len());
		// this means nothing new was added,,,, probably,,,
		if (r.len() == steamids.len() && steamids.len() == l.len()) return;
		local path = ::BhopVars.ConfigPath+"/playersmanifest.txt";
		StringToFile(path, ::BhopUtils.ArrayJoin(r, "\n"));
	}

	function ReadConfig(doPlayers=true)
	{
		local path = ::BhopVars.ConfigPath+"/config.json";
		local file = FileToString(path);

		if(!file)
		{
			printl("not file !!");
			::BhopFunc.WriteConfig(path);
			return;
		}
		
		printl("file="+file);

		try
		{
			::BhopVars <- ::Json.Deserialize.StringToClass(file, ::BhopClasses.BhopConfig);
			::BhopFunc.SetCommandManager();
		}
		catch(error)
		{
			throw "Bunnyhop detect config parse error: "+error;
		}
		if (!doPlayers) return;

		local r = ::BhopFunc.ReadPlayersManifest();
		foreach (steamid in r)
		{
			local fullSteamid = "STEAM_1:1:"+steamid;
			local pSetPath = ::BhopVars.ConfigPath+"/players/"+steamid+".json";
			printl("pSetPath="+pSetPath);
			printl("fullSteamid="+fullSteamid);
			local pSet;
			try
			{
				pSet = ::Json.Deserialize.FileToClass(pSetPath, ::BhopClasses.PlayerSettings);
			}
			catch(error)
			{
				throw "Bunnyhop detect player config parse error for playerid="+steamid+": "+error;
			}
			::BhopVars.PlayerSettings[fullSteamid] <- pSet;
		}
		printl("::BhopVars.PlayerSettings="+::Json.Serialize.ToString(::BhopVars.PlayerSettings));
	}

	function WritePlayerSettings()
	{
		foreach (steamid, pSet in ::BhopVars.PlayerSettings)
		{
			if (steamid.len() < 10) continue;
			//                                              remove starting "STEAM_1:1:"
			local fName = ::BhopVars.ConfigPath+"/players/"+steamid.slice(10)+".json";
			if (!pSet.ConfigAltered) 
			{
				try
				{
					local c = ::Json.Deserialize.FileToClass(fName, ::BhopClasses.PlayerSettings);
					if (c != null)
					{
						::BhopVars.PlayerSettings[steamid] <- c;
						continue;
					}
				}
				catch (e)
				{
					// sex
				}
			}
			
			::Json.Serialize.ToFile(fName, pSet);
		}
		::BhopFunc.WritePlayersManifest();
	}

	function WriteConfig(path=null)
	{
		if (path == null) path = ::BhopVars.ConfigPath+"/config.json";
		// printl("WriteConfig()");
		::Json.Serialize.ToFile(path, ::BhopVars);

		::BhopFunc.WritePlayerSettings();  // AAAAAAAHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH
	}

	function PopulatePlayerInitList()
	{
		local player = null;
		while (player = Entities.FindByClassname(player, "player"))
		{
			if (IsPlayerABot(player))
			{
				continue;
			}
			local userid = player.GetPlayerUserId();
			if (::BhopFunc.IsPlayerInInitList(userid))
			{
				continue;
			}
			printl("initiating player: "+player.GetPlayerName());
			::BhopVars.PlayerInitList.append(userid);
		}
	}

	function SendToAllNonIgnoredPlayers(message)
	{
		local player = null;
		while (player = Entities.FindByClassname(player, "player"))
		{
			if (IsPlayerABot(player))
			{
				continue;
			}
			local steamid = ::BhopUtils.GetPlayerSteamID(player);
			if (IsPlayerIgnored(steamid))
			{
				// printl(player.GetPlayerName()+" was ignored SendToAllNon");
				continue;
			}
			ClientPrint(player, 5, message);
		}
	}

	function IgnorePlayer(steamid, ignore=true)
	{
		local pIgnored = ::BhopFunc.IsPlayerIgnored(steamid);
		if (ignore == pIgnored) return false;
		// ::BhopVars.ConfigAltered = true;
		::BhopVars.PlayerSettings[steamid]["ConfigAltered"] = true;
		::BhopVars.PlayerSettings[steamid]["IgnoreBhop"] = ignore;
		
		return true;
	}

	function PerfectJumpIgnorePlayer(steamid, ignore=true)
	{
		local pIgnored = ::BhopFunc.IsPlayerPerfectJumpIgnored(steamid);
		if (pIgnored == ignore) return false;
		// ::BhopVars.ConfigAltered = true;
		::BhopVars.PlayerSettings[steamid]["ConfigAltered"] = true;
		::BhopVars.PlayerSettings[steamid]["IgnorePerfectJumps"] = ignore;
		
		return true;
	}

	function IsPlayerIgnored(steamid)
	{
		// printl("IsPlayerIgnored(): "+::BhopVars.PlayerSettings[playerSID]["IgnoreBhop"]);
		if (!(steamid in ::BhopVars.PlayerSettings))
		{
			// by default we ignore everyone who hasnt been initialized in the PlayerSettings
			return true;
		}
		return ::BhopVars.PlayerSettings[steamid]["IgnoreBhop"];
	}

	function IsPlayerPerfectJumpIgnored(steamid)
	{
		if (!(steamid in ::BhopVars.PlayerSettings))
		{
			// by default we ignore everyone who hasnt been initialized in the PlayerSettings
			return true; 
		}
		return ::BhopVars.PlayerSettings[steamid]["IgnorePerfectJumps"];
	}

	function IsPlayerAdmin(steamid)
	{
		printl("IsPlayerAdmin(): steamid="+steamid);

		if (!(steamid in ::BhopVars.PlayerSettings))
		{
			printl("IsPlayerAdmin(): steamid not found");
			return false;
		}
		return ::BhopVars.PlayerSettings[steamid]["Admin"];
	}

	function DisplayLeaderboard(player=null)
	{
		// "\x01high score: \x04"+best["score"]+"\x01, total distance bhopped: \x04"+pSet["TotalDistanceBhopped"]+"\x01, total bhops: \x04"+pSet["TotalBhops"]+"\x01highest velocity: \x04"+pSet["HighestVelocity"]+"\x01"
		// ::BhopFunc.SendToAllNonIgnoredPlayers
		// ::BhopVars.NumLeaderboardSlots

		// {"steamID": "", "playerName": "", "score": 0.0, "numBhops": 0, "maxVel": 0.0, "avgVel": 0.0}

		local bestBhops;  // list[dict]
		// idk if returning 0 is good here since like i think it means the thing thinks that they are equal ? wait i think itlll work out .......... i hope 
		local MeowCompare = function (a, b)
		{
			if (a["BestBhop"] == null && b["BestBhop"] == null)
			{
				return 0;
			}
			if (a["BestBhop"] == null)
			{
				return -1;
			}
			if (b["BestBhop"] == null)
			{
				return 1;
			}
			if (a["BestBhop"]["score"] > b["BestBhop"]["score"])
			{
				return 1;
			}
			if (a["BestBhop"]["score"] < b["BestBhop"]["score"])
			{
				return -1;
			}
			return 0;
		}

		/* foreach (sID, playerSetting in ::BhopVars.PlayerSettings)
		{
			if (!("bhopChain" in playerSetting) || playerSetting["bhopChain"] == null)	
			{
				continue;
			}
			bestBhops.append({"steamID": sID, "playerName": playerSetting["Name"], "score": playerSetting["score"], });
		} */
		local tVals = ::BhopUtils.TableValues(::BhopVars.PlayerSettings);
		tVals.sort(MeowCompare);
		tVals.reverse();
		
		if (tVals.len() > ::BhopVars.NumLeaderboardSlots)
		{
			tVals = tVals.slice(0, ::BhopVars.NumLeaderboardSlots);
		}	
		bestBhops = tVals;

		local leaderboardSlot = 1;
		// local s = "";
		foreach (i, t in bestBhops)
		{
			if (t["BestBhop"] == null) continue;

			// l4d2 has 255 char message limit so this is really pushing it
			local s = "  \x03"+leaderboardSlot+"\x01: \x04"+t["Name"]+"\x01 \x05("+t["BestBhop"]["timeString"]+")\x01, score: \x05"+t["BestBhop"]["score"]+"\x01, bhops: \x05"+t["BestBhop"]["bhopChain"].len()+"\x01, max speed: \x05"+t["BestBhop"]["maxVel"]+"\x01, avg speed: \x05"+t["BestBhop"].AverageVelocity()+"\x01";
			// s += "  \x03"+leaderboardSlot+"\x01: \x04"+t["Name"]+"\x01 \x05("+t["BestBhop"]["timeString"]+")\x01, score: \x05"+t["BestBhop"]["score"]+"\x01, bhops: \x05"+t["BestBhop"]["bhopChain"].len()+"\x01, max speed: \x05"+t["BestBhop"]["maxVel"]+"\x01, avg speed: \x05"+t["BestBhop"].AverageVelocity()+"\x01\n";
			leaderboardSlot++;
			if (player == null)
			{
				::BhopFunc.SendToAllNonIgnoredPlayers(s);
				continue;
			}
			ClientPrint(player, 5, s);
		}
		// remove last "\n"
		/* s = s.slice(0, -1);
		if (player == null)
		{
			::BhopFunc.SendToAllNonIgnoredPlayers(s);
			return;
		} */
		// ClientPrint(player, 5, s);
	}

	function IsPlayerInInitList(userid)
	{
		if (::BhopVars.PlayerInitList.find(userid) != null)
		{
			return true;
		}
		return false;
	}

	function ShouldIgnorePlayer(userid, player)
	{
		if (IsPlayerABot(player))
		{
			return true;
		}
		
		if (::BhopFunc.IsPlayerInInitList(userid))
		{
			printl("player "+player.GetPlayerName()+" in init list, ignoring...");
			printl(::Json.Serialize.ToString(::BhopVars.PlayerInitList));
			return true;
		}

		if (!::BhopUtils.IsAlive(player))
		{
			return true;
		}
		return false;
	}

	function EnsurePlayerSettings(player, pName, steamid=null)
	{
		if (steamid == null) steamid = ::BhopUtils.GetPlayerSteamID(player);
		// local pName = player.GetPlayerName();
		// printl("EnsurePlayerSettings("+pName+")");
		// local pSID = ::BhopFunc.GetPlayerSteamID(player);
		if (IsPlayerABot(player))
		{
			// printl("player a bot: "+player.GetPlayerName())
			// return false;
			return true;
		}
		/* if (["BOT", ""].find(pSID) != null)
		{
			return false;
		} */
		// printl("player "+pName+" pSID="+pSID);
		if (strip(steamid).len() < 10 || strip(steamid).slice(0, 10) != "STEAM_1:1:")
		{
			// printl("player "+pName+" has invalid steamid, skipping...");
			return false;
		}
		// TODO
		// AAAHHH ITS BUGGED ITS BUGGED AHH
		// ok so write config when it says its altered
		// otherwise read 
		// should try to read file first, then check if its in player settings
		local fPath = ::BhopVars.ConfigPath+"/players/"+strip(steamid).slice(10)+".json"
		local fi = FileToString(fPath);
		if (fi == null)
		{
			if (!(steamid in ::BhopVars.PlayerSettings))
			{
				printl("setting playersettings[steamid] for player "+pName);
				::BhopVars.PlayerSettings[steamid] <- ::BhopClasses.PlayerSettings();
				ClientPrint(player, 5, "\x01hello \x05"+pName+"\x01! you seem to be new to bhop detector!");
				ClientPrint(player, 5, "\x01"+"enter \"\x05!bhop help\x01\" to see the help command, and do \"\x05!bhop toggle\x01\" to enable/disable me!");
				// dont need to set configaltered since it 100% runs later
			}
		}
		else
		{
			printl("reading playersettings[steamid] json file for player "+pName);
			try
			{
				::BhopVars.PlayerSettings[steamid] <- ::Json.Deserialize.StringToClass(fi, ::BhopClasses.PlayerSettings);
			}
			catch (e)
			{
				throw "error reading playersettings[steamid] json file \""+fPath+"\", "+e;
			}
		}

		if (::BhopVars.PlayerSettings[steamid].Name != pName)
		{
			::BhopVars.PlayerSettings[steamid].Name = pName;
			// ::BhopVars.ConfigAltered = true;
			::BhopVars.PlayerSettings[steamid].ConfigAltered = true;
		}
		// ::BhopFunc.WriteConfig(::BhopVars.ConfigPath);
		return true;
	}
}

// this is for the various timing related entities bhop detect spawns
::BhopEnts <-
{
	// TickTracker = 0,

	function CheckBhop(player, steamid)
	{
		if (::BhopVars.JumpingList[steamid].groundTime >= ::BhopVars.BunnyTickLeniency)
		{
			local pName = player.GetPlayerName();
			// local speed = this.GetPlayerSpeed(player);
			local bhopChain = ::BhopVars.JumpingList[steamid];
			
			local count = bhopChain.GetNumBhops();
			local topspeed = bhopChain.maxVel.tointeger();
			local avgspeed = bhopChain.AverageVelocity().tointeger();
			if (count >= ::BhopVars.BunnyDetectCount)
			{
				local best = bhopChain.ScoreBhop();
				::BhopFunc.SendToAllNonIgnoredPlayers("\x04"+pName+"\x01 got \x05"+count+"\x01 bunnyhop"+((count > 1)?"s":"")+ " in a row (top speed: \x05"+topspeed+"\x01, avg speed: \x05"+avgspeed+"\x01, score: \x05"+bhopChain.score+"\x01)");
				if (best == 69)
				{
					::BhopFunc.SendToAllNonIgnoredPlayers("\x04"+pName+"\x01 got their first bunnyhop record!");
				}
				else if (best)
				{
					::BhopFunc.SendToAllNonIgnoredPlayers("\x04"+pName+"\x01 beat their bunnyhop record! \x05+"+(bhopChain.score - best.score)+"\x01 points!");
				}
				// ClientPrint(null,5,"\x04"+pName+"\x01 got \x05"+count+"\x01 bunnyhop"+((count > 1)?"s":"")+ " in a row (top speed: \x05"+topspeed+"\x01)");
			}
			// printl("checkBhop(): failure");
			return false;
		}

		return true;
	}

	function BhopTick() 
	{
		// ::BhopEnts.TickTracker++;
		local markedForDeletion = [];  // list[steamID<str>]
		foreach (steamid, bhopChain in ::BhopVars.JumpingList)
		{
			local player = bhopChain.player;  // ::BhopFunc.GetPlayerFromSteamID(steamid);
			local pUserID = player.GetPlayerUserId();
			if (player == null)
			{
				printl("couldnt get player from bhopChain");
				markedForDeletion.append(steamid);
				continue;
			}
			
			if (::BhopFunc.IsPlayerIgnored(steamid))
			{
				printl("BhopTick(): ignoring player");
				markedForDeletion.append(steamid);
				continue;
			}
			if (::BhopFunc.ShouldIgnorePlayer(pUserID, player))
			{
				printl("BhopTick(): should ignoring player");
				markedForDeletion.append(steamid);
				continue;
			}

			if (!(::BhopUtils.IsEntityOnGroundVSLib(player))) 
			{
				// printl("BhopTick(): player not on ground");
				::BhopVars.JumpingList[steamid].IncrementAirTime();
				::BhopVars.JumpingList[steamid].groundTime = 0;
				continue;
			}

			local bhopChainLen = ::BhopVars.JumpingList[steamid].bhopChain.len();
			if (::BhopVars.JumpingList[steamid].bhopChain[bhopChainLen - 1].landPos == null) 
			{
				::BhopVars.JumpingList[steamid].bhopChain[bhopChainLen - 1].landPos = player.EyePosition();
			}
			::BhopVars.JumpingList[steamid].groundTime++;

			if(::BhopEnts.CheckBhop(player, steamid) == false)
			{
				// printl(player.GetPlayerName()+" failed bhop");
				// ClientPrint(null,3,player.GetPlayerName()+" failed bhop");
				markedForDeletion.append(steamid);
			}
		}
		foreach (i, steamid in markedForDeletion) 
		{
			delete ::BhopVars.JumpingList[steamid];
		}
	}

	function ConfigSaveTick()
	{
		if (::BhopVars.ConfigAltered)
		{
			printl("ConfigSaveTick()");
			::BhopFunc.WriteConfig();
			::BhopVars.ConfigAltered = false;
			return;
		}
		else
		{
			::BhopFunc.ReadConfig(false);
		}
		printl("ConfigSaveTick(): WritePlayerSettings!");
		::BhopFunc.WritePlayerSettings();
	}

	function UtilityTick()
	{
		// printl("UtilityTick()!");

		if (::BhopVars.PlayerInitList.len() == 0)
		{
			return;
		}

		local playersToRemove = [];
		
		foreach (i, userid in ::BhopVars.PlayerInitList)
		{
			local player = GetPlayerFromUserID(userid);
			local pName = player.GetPlayerName();
			
			printl("ensuring settings for player "+pName);
			local r = ::BhopFunc.EnsurePlayerSettings(player, pName);
			if (r)
			{
				ClientPrint(player, 5, "you have been initialized by bhop detect!");
				playersToRemove.append(userid);
			}
			// ::BhopFunc.WriteConfig(::BhopVars.ConfigPath);
			// newPlayerInit.remove(i);
			// ::BhopVars.PlayerInitList.remove(i);
		}
		foreach (userid in playersToRemove)
		{
			local b = ::BhopVars.PlayerInitList.find(userid);
			if (b == null) continue;
			
			::BhopVars.PlayerInitList.remove(b);
		}
	}

	/* function OneSecondTick()
	{
		printl(::BhopEnts.TickTracker+" ticks in 1 second!");
		::BhopEnts.TickTracker = 0;
	} */

	// we do this as a workaround bcs there is no on_tick() game event
	function AddBhopTicker()
	{
		// local tEnt = null;
		::BhopVars.BunnyTickerEnt = Entities.FindByName(null, "bhopTicker");
		if (::BhopVars.BunnyTickerEnt != null) 
		{
			if (::BhopVars.BunnyTickerEnt.IsValid())
				::BhopVars.BunnyTickerEnt.Kill();
		}

		::BhopVars.BunnyTickerEnt = SpawnEntityFromTable("info_target", {targetname = "bhopTicker"});

		::BhopVars.BunnyTickerEnt.ValidateScriptScope();
		local scrScope = ::BhopVars.BunnyTickerEnt.GetScriptScope();
		scrScope["BhopThink"] <- function () {
			// printl("BhopThink!");
			::BhopEnts.BhopTick();
			// return 0.03333;
			// return 0.01111;
			return 0.0001;  // without this it doesnt run every tick
		}
		AddThinkToEnt(::BhopVars.BunnyTickerEnt,"BhopThink");
	}
	
	function AddConfigSaveTicker()
	{	
		::BhopVars.ConfigTickerEnt = Entities.FindByName(null, "bhopConfigSaveTicker");
		if (::BhopVars.ConfigTickerEnt != null) 
		{
			if (::BhopVars.ConfigTickerEnt.IsValid())
				::BhopVars.ConfigTickerEnt.Kill();
		}

		::BhopVars.ConfigTickerEnt = SpawnEntityFromTable("logic_timer", {targetname = "bhopConfigSaveTicker", start_disabled = false, RefireTime = 30.0});
		
		::BhopVars.ConfigTickerEnt.ConnectOutput("OnTimer", "ConfigThink");

		::BhopVars.ConfigTickerEnt.ValidateScriptScope();
		::BhopVars.ConfigTickerEnt.GetScriptScope().ConfigThink <- function()
		{
			::BhopEnts.ConfigSaveTick();
		}
	}

	function AddUtilityTicker()
	{
		::BhopVars.BunnyUtilsTickerEnt = Entities.FindByName(null, "bhopUtilsTicker");
		if (::BhopVars.BunnyUtilsTickerEnt != null) 
		{
			if (::BhopVars.BunnyUtilsTickerEnt.IsValid())
				::BhopVars.BunnyUtilsTickerEnt.Kill();
		}

		::BhopVars.BunnyUtilsTickerEnt = SpawnEntityFromTable("logic_timer", {targetname = "bhopUtilsTicker", start_disabled = false, RefireTime = 5.0});
		
		::BhopVars.BunnyUtilsTickerEnt.ConnectOutput("OnTimer", "UtilityThink");

		::BhopVars.BunnyUtilsTickerEnt.ValidateScriptScope();
		::BhopVars.BunnyUtilsTickerEnt.GetScriptScope().UtilityThink <- function()
		{
			::BhopEnts.UtilityTick();
		}
	}

	/* function AddSecondsTickTracker()
	{
		::BhopEnts.TickTracker = 0;
		::BhopVars.SecondTickerEnt = Entities.FindByName(null, "bhopSecondsTicker");
		if (::BhopVars.SecondTickerEnt != null) 
		{
			if (::BhopVars.SecondTickerEnt.IsValid())
				::BhopVars.SecondTickerEnt.Kill();
		}

		::BhopVars.SecondTickerEnt = SpawnEntityFromTable("logic_timer", {targetname = "bhopSecondsTicker", start_disabled = false, RefireTime = 1.0});
		
		::BhopVars.SecondTickerEnt.ConnectOutput("OnTimer", "SecondsThink");

		::BhopVars.SecondTickerEnt.ValidateScriptScope();
		::BhopVars.SecondTickerEnt.GetScriptScope().SecondsThink <- function()
		{
			::BhopEnts.OneSecondTick();
		}
	} */

	function SpawnBhopEnts()
	{
		local ok = Entities.FindByName(null, "bhopSecondsTicker");
		if (ok != null) 
		{
			if (ok.IsValid())
				ok.Kill();
		}

		::BhopEnts.AddBhopTicker();
		::BhopEnts.AddConfigSaveTicker();
		::BhopEnts.AddUtilityTicker();
		// ::BhopEnts.AddSecondsTickTracker();
	}
}

::BhopCmds <-
{
	
}

class ::BhopCmds.Stats extends ::BhopClasses.BhopCommand
{
	aliases = ["stats"];
	brief = "show your bhop stats, supply name for others' stats";
	help = "show your bhop stats, supply name for others' stats. player name is case insensitive. put the players name in quotes \"\" if they have a space in their name";
	privileged = false;
	cooldown = 0;

	</ bhopCmd_param_otherPlayer = "the steam name of the other player. case insensitive" />
	function Callback(ctx, otherPlayer=null)
	{
		local pSet;
		if (otherPlayer != null)
		{
			local found = false;
			foreach (_pSet in ::BhopVars.PlayerSettings)
			{
				if (_pSet["Name"].tolower() == otherPlayer)
				{
					pSet = _pSet;
					found = true;
					break;
				}
			}
			if (!found)
			{
				ClientPrint(ctx.player,5,"ERROR: cant find player!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!I CANT FIND IT !!!!  AAAAAAAAAAAAAAAHHH AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
				return true;
			}
		}
		else
		{
			pSet = ::BhopVars.PlayerSettings[ctx.playerSteamID];
		}
		local best = pSet["BestBhop"];
		if (best == null)
		{
			local msg;
			if (otherPlayer == null) msg = "you have no stats tracked!";
			else msg = otherPlayer+" has no stats tracked!";
			ClientPrint(ctx.player, 3, msg);
			return true;
		}
		
		::BhopFunc.SendToAllNonIgnoredPlayers("\x01stats for \"\x05"+pSet.Name+"\x01\" - high score: \x04"+best["score"]+"\x01, total distance bhopped: \x04"+pSet["TotalDistanceBhopped"]+"\x01, total bhops: \x04"+pSet["TotalBhops"]+"\x01, highest velocity: \x04"+pSet["HighestVelocity"]+"\x01");
		return true;
	}
}

class ::BhopCmds.Leaderboard extends ::BhopClasses.BhopCommand
{
	aliases = ["leaderboard", "lb"];
	brief = "display the bhop leaderboard";
	// help = "display the bhop leaderboard";
	privileged = false;
	cooldown = 0;

	// </ bhopCmd_vargvName = "meows", bhopCmd_vargvHelp = "epic meow meow gangster gaming" />
	function Callback(ctx, ...)
	{
		::BhopFunc.DisplayLeaderboard(ctx.player);
	}
}

class ::BhopCmds.Settings extends ::BhopClasses.BhopCommand
{
	aliases = ["settings", "setting"];
	brief = "see variable value or change a setting value";
	help = "supply the value parameter to set the value, otherwise print the value. to see/edit a sub value, seperate table/class indexes with a pipe \"|\". ";
	privileged = true;
	cooldown = 0;

	</ bhopCmd_param_var = "the path to the variable, seperated with pipes \"|\"", 
	   bhopCmd_param_value = "the value to set the variable to. if this isnt supplied, it just prints the value" />
	function Callback(ctx, var, value=null)
	{
		local settingPath = var;
		local settingVal = value;
		local varPath = ::ArgParse.Split(settingPath, "|");
		if (varPath.len() == 0)
		{
			ClientPrint(ctx.player, 5, "ERROR: invalid index");
			return true;
		}
		/* if (!::BhopFunc.IsPlayerAdmin(ctx.playerSteamID))
		{
			ClientPrint(ctx.player, 5, "ERROR: you must be admin to use this commmand");
			return true;
		} */
		
		local curTable = ::BhopVars.weakref();
		local lastTable = curTable;
		local lastKey = strip(varPath[0]);		

		foreach (keyName in varPath)
		{
			keyName = strip(keyName);
			if (keyName == "")
			{
				ClientPrint(ctx.player, 5, "ERROR: invalid index");
			}
			if (!(keyName in curTable.ref()))
			{
				ClientPrint(ctx.player, 5, "ERROR: couldnt find index for keyname: \""+keyName+"\"");
				return;
			}
			try
			{
				lastTable = curTable;
				curTable = curTable.ref()[keyName].weakref();
				lastKey = keyName;
			}
			catch (e)
			{
				ClientPrint(player,3,"ERROR: "+e);
				return;
			}
		}

		local foundVal = lastTable.ref()[lastKey];
		if (settingVal == null)
		{
			ClientPrint(ctx.player, 5, "\x05\""+settingPath+"\"\x01 = \x04\""+foundVal.tostring()+"\"\x01");
			return;
		}
		local foundType = typeof foundVal;
		local convVal;
		
		try
		{
			switch (foundType)
			{
				case "string":
					convVal = settingVal;
					// lastTable.ref()[lastKey] <- replaceVal;
					break;
				case "integer":
					convVal = settingVal.tointeger();
					// lastTable.ref()[lastKey] <- replaceVal.tointeger();
					break;
				case "float":
					convVal = settingVal.tofloat();
					// lastTable.ref()[lastKey] <- replaceVal.tofloat();
					break;
				case "bool":
					if (settingVal.tolower() == "true")
					{
						convVal = true;
						break;
					}
					if (settingVal.tolower() == "false")
					{
						convVal = false;
						break;
					}
					ClientPrint(player,3,"ERROR: user input is not of bool type: \""+settingVal+"\"");
					break;
				default:
					ClientPrint(player,3,"ERROR: original value has invalid type: \""+foundType+"\"");
					return;
					break;
			}
			local writeThingType = typeof lastTable.ref();
			if (writeThingType == "instance")
			{
				lastTable.ref()[lastKey] = convVal;
			}
			else
			{
				lastTable.ref()[lastKey] <- convVal;
			}
			// return;
		}
		catch (e)
		{
			ClientPrint(player, 5, "ERROR1031: "+e);
			return;
		}
		if (varPath.len() > 2 && varPath[0] == "PlayerSettings" && varPath[1] in ::BhopVars.PlayerSettings)
			::BhopVars.PlayerSettings[varPath[1]].ConfigAltered = true;
		else ::BhopVars.ConfigAltered = true;
		ClientPrint(ctx.player, 5, "set variable \x05\""+settingPath+"\"\x01 to \x04\""+convVal+"\"\x01");
		return;
	}
}

class ::BhopCmds.Rules extends ::BhopClasses.BhopCommand
{
	aliases = ["rules", "r"];
	brief = "see the variables related to bhop detection & scoring";
	// help = "see the variable values related to bhop detection & scoring";
	privileged = false;
	cooldown = 0;

	function Callback(ctx)
	{
		ClientPrint(ctx.player, 5, "current bhop ruleset:");
		ClientPrint(ctx.player, 5, "  \x05"+"tick leniency\x01		: \x04"+::BhopVars.BunnyTickLeniency+"\x01");
		ClientPrint(ctx.player, 5, "  \x05"+"detection count\x01	: \x04"+::BhopVars.BunnyDetectCount+"\x01");
		ClientPrint(ctx.player, 5, "  \x05"+"min starting vel\x01	: \x05"+::BhopVars.BunnyMinStartingVel+"\x01");
		ClientPrint(ctx.player, 5, "scoring rules:");
		ClientPrint(ctx.player, 5, "  \x05"+"bhop count mult\x01	: \x04"+::BhopVars["ScoringSettings"]["BhopCountMult"]+"\x01");
		ClientPrint(ctx.player, 5, "  \x05"+"bhop speed mult\x01	: \x04"+::BhopVars["ScoringSettings"]["BhopAvgVelocityMult"]+"\x01");
		return true;
	}
}

class ::BhopCmds.Toggle extends ::BhopClasses.BhopCommand
{
	aliases = ["toggle"];
	brief = "toggle bhop announcing for you";
	help = "add the \"perfectjump\" parameter to only disable perfectjump announcing";

	</ bhopCmd_param_type = "type of thing to toggle. can either be anything or \"perfectjump\"" />
	function Callback(ctx, type="all")
	{
		local toggleType = type;
		if (toggleType == "perfectjump")
		{
			if (::BhopFunc.IsPlayerPerfectJumpIgnored(ctx.playerSteamID))
			{
				::BhopFunc.PerfectJumpIgnorePlayer(ctx.playerSteamID, false);
				ClientPrint(ctx.player, 5, "\x01you will now be notified of your perfect jumps!");
				return;
			}
			::BhopFunc.PerfectJumpIgnorePlayer(ctx.playerSteamID, true);
			ClientPrint(ctx.player, 5, "\x01you will no longer be notified of your perfect jumps!");
			return;
		}
		if (::BhopFunc.IsPlayerIgnored(ctx.playerSteamID))
		{
			::BhopFunc.IgnorePlayer(ctx.playerSteamID, false);
			ClientPrint(ctx.player, 5, "\x01you are no longer ignored by the bhop detector!");
			return true;
		}
		::BhopFunc.IgnorePlayer(ctx.playerSteamID, true);
		ClientPrint(ctx.player, 5, "\x01you will now be ignored by the bhop detector!");
		return true;
	}
}
//    define your custom command class
class ::BhopCmds.PinheadCommand extends ::BhopClasses.BhopCommand
{
	// put your aliases
	aliases = ["pinheadsex", "pinheadcuminsideofmee", "ppinheadcockinsidemyvaginaaanow"];
	// the brief is shown in !bhop help
	brief = "PINHEAD PINEHDA  I CANT TAKE IT I NEED YOUR COCK  NOOOWW";
	// the help is shown in !bhop help <cmdAlias>
	help = ":3";

	// this function gets called when someone runs your command
	function Callback(ctx)
	{
		ClientPrint(ctx.player, 5, "hehe.....  im cumming.,.  i,,   cm c   nm ibiiiio t  figu");
	}
}

::BhopEvent <-
{
	function OnGameEvent_player_jump(params)
	{
		local player = GetPlayerFromUserID(params.userid);
		local steamid = ::BhopUtils.GetPlayerSteamID(player);

		if (::BhopFunc.ShouldIgnorePlayer(params.userid, player))
		{
			printl("player_jump(): ignoring player "+player.GetPlayerName());
			return;
		}

		if (::BhopFunc.IsPlayerIgnored(steamid))
		{
			printl("OnGameEvent_player_jump(): ignoring player: "+player.GetPlayerName());
			return;
		}
		
		local speed = ::BhopUtils.GetPlayerSpeed(player);
		local pName = player.GetPlayerName();
		local jumpPos = player.EyePosition();  // this is the value returned by cl_showpos 1 i think
		// local indexName = "bhop"+index;
		
		if (!(steamid in ::BhopVars.JumpingList))
		{
			if (speed < ::BhopVars.BunnyMinStartingVel) 
				return;
			local bhopData = ::BhopClasses.BhopChainData(player, steamid, ::BhopClasses.BhopData(speed, jumpPos));
			::BhopVars.JumpingList[steamid] <- bhopData;
		}
		else
		{
			local bhopChain = ::BhopVars.JumpingList[steamid];
			if (bhopChain.groundTime <= 1 && !::BhopFunc.IsPlayerPerfectJumpIgnored(steamid))
			{
				ClientPrint(player, 5, "\x04perfect jump! speed=\x05"+speed.tointeger()+"\x01");
			}
			bhopChain.groundTime = 0;
			bhopChain.AddBhop(::BhopClasses.BhopData(speed, jumpPos));
			::BhopVars.JumpingList[steamid] <- bhopChain;
		}
	}
	
	// this is so the player steam id is always initialized
	function OnGameEvent_player_spawn(params)
	{
		if (::BhopFunc.IsPlayerInInitList(params.userid))
		{
			::BhopVars.PlayerInitList.append(params.userid);
		}
	}

	function OnGameEvent_player_team(params)
	{
		if (params.disconnect)
		{
			local i = ::BhopVars.PlayerInitList.find(params.userid);
			if (i == null)
			{
				return;
			}
			::BhopVars.PlayerInitList.remove(i);
		}
	}

	function OnGameEvent_player_say(params)
	{
		local player = GetPlayerFromUserID(params.userid);
		print("::BhopVars.CommandManager="+::BhopVars.CommandManager);
		::BhopVars.CommandManager.Invoke(player, params.text);
	}

	function OnGameEvent_finale_win(params)
	{
		// printl("leaderboard event !!!!");
		if (::BhopVars.LeaderboardOnGameEnd) 
		{
			::BhopFunc.DisplayLeaderboard();
		}
	}
}


::BhopFunc.loadFile();
::BhopEnts.SpawnBhopEnts();

__CollectEventCallbacks(::BhopEvent, "OnGameEvent_", "GameEventCallbacks", RegisterScriptGameEventListener);
