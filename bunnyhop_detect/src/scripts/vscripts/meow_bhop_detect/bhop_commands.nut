


::BhopCmds <-
{
	
}

class ::BhopCmds.Stats extends ::Commands.Command
{
	aliases = ["stats", "s"];
	brief = "show your bhop stats, supply name for others' stats";
	help = "show your bhop stats, supply name for others' stats. player name is case insensitive. put the players name in quotes \"\" if they have a space in their name";
	privileged = false;
	cooldown = 0;

	</ meowCmd_param_otherPlayer = "the steam name of the other player. case insensitive" />
	function Callback(ctx, otherPlayer=null)
	{
		local pSet;
		if (otherPlayer != null)
		{
			local pSID = ::BhopFunc.GetSteamIDFromUserString(otherPlayer);
			// we do this so that we can get steam id from players not already loaded
			pSet = ::BhopFunc.GetPlayerSettingsFromSteamID(pSID);
			if (pSet == null)
			{
				// ClientPrint(ctx.player,5,"ERROR: cant find player!");
				this.commandMan.Send(ctx.player, "Errors|CantFindPlayer");
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
			// if (otherPlayer == null) msg = "you have no stats tracked!";
			if (otherPlayer == null) msg = this.commandMan.GetPlayerLocalizedString("Commands|stats|ErrorYouHaveNoStats", {}, ctx.playerSteamID, false);
			// else msg = otherPlayer+" has no stats tracked!";
			else msg = this.commandMan.GetPlayerLocalizedString("Commands|stats|ErrorOtherHasNoStats", {name = otherPlayer}, ctx.playerSteamID, false);
			ClientPrint(ctx.player, 3, msg);
			return true;
		}
		
		// local msg = "\x01stats for \"\x05"+pSet.Name+"\x01\" - high score: \x04"+best["score"]+"\x01, total distance bhopped: \x04"+pSet["TotalDistanceBhopped"]+"\x01, total bhops: \x04"+pSet["TotalBhops"]+"\x01, time spent bhopping: \x04"+::BhopFunc.DurationToString(pSet["TotalTimeSpentBhopped"])+"\x01, highest velocity: \x04"+pSet["HighestVelocity"]+"\x01";
		// local msg = this.CommandMan.GetPlayerLocalizedString("Commands|stats|NormalMessage", {}, ctx.)
		local infos = 
		{
			name = pSet.Name, 
			score = best["score"], 
			distance = pSet["TotalDistanceBhopped"], 
			numBhops = pSet["TotalBhops"], 
			duration = ::BhopFunc.DurationToString(pSet["TotalTimeSpentBhopped"]), 
			topSpeed = pSet["HighestVelocity"]
		};
		if (::BhopVars.PlayerSettings[ctx.playerSteamID].Banned || ::BhopFunc.IsPlayerIgnored(ctx.playerSteamID))
		{
			//ClientPrint(ctx.player, 5, "\x01"+"for your attention: i regret to inform you of the following,");
			//ClientPrint(ctx.player, 5, "\x01"+"you are currently \x04"+"BANNED\x01, your stats are not being \x04RECORDED\x01");
			if (::BhopVars.PlayerSettings[ctx.playerSteamID].Banned)
				this.commandMan.Send(ctx.player, "Commands|stats|Banned");
			// ClientPrint(ctx.player, 5, msg);
			this.commandMan.Send(ctx.player, "Commands|stats|NormalMessage", infos);
			return;
		}
		// ::BhopFunc.SendToAllNonIgnoredPlayers(msg);   /// AAAAAAH  -- nvm i already solved this
		printl("going to send the message now");
		this.commandMan.Send(null, "Commands|stats|NormalMessage", infos);
		return true;
	}
}

class ::BhopCmds.Leaderboard extends ::Commands.Command
{
	aliases = ["leaderboard", "lb"];
	brief = "display the bhop leaderboard";
	// help = "display the bhop leaderboard";
	privileged = false;
	cooldown = 0;

	</ meowCmd_param_session = "put any thing here to print the bhop leaderboard for this session" />
	function Callback(ctx, session=false)
	{
		if (session != false && strip(session) != "") session = true;
		::BhopFunc.DisplayLeaderboard(ctx.player, session);
	}
}

class ::BhopCmds.Settings extends ::Commands.Command
{
	aliases = ["settings", "setting"];
	brief = "see variable value or change a setting value";
	help = "supply the value parameter to set the value, otherwise print the value. to see/edit a sub value, seperate table/class indexes with a pipe \"|\".\nEX: \"!bhop settings BunnyTickLeniency 3\"";
	privileged = true;
	cooldown = 0;

	</ meowCmd_param_var = "the path to the variable, seperated with pipes \"|\"", 
	   meowCmd_param_value = "the value to set the variable to. if this isnt supplied, it just prints the value" />
	function Callback(ctx, var, value=null)
	{
		local settingPath = var;
		local settingVal = value;
		local varPath = split(settingPath, "|");
		if (varPath.len() == 0)
		{
			// ClientPrint(ctx.player, 5, "ERROR: invalid index");
			this.commandMan.Send(ctx.player, "Commands|settings|ErrorInvalidIndex");
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
				// ClientPrint(ctx.player, 5, "ERROR: invalid index");
				this.commandMan.Send(ctx.player, "Commands|settings|ErrorInvalidIndex");
				return;
			}
			if (!(keyName in curTable.ref()))
			{
				// ClientPrint(ctx.player, 5, "ERROR: couldnt find index for keyname: \""+keyName+"\"");
				this.commandMan.Send(ctx.player, "Commands|settings|ErrorInvalidKeyname", {keyName = keyName});
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
				// ClientPrint(ctx.player,3,"ERROR: "+e);
				this.commandMan.Send(ctx.player, "Errors|Generic", {error = e});
				return;
			}
		}

		local foundVal = lastTable.ref()[lastKey];
		if (settingVal == null)
		{
			// ClientPrint(ctx.player, 5, "\x05\""+settingPath+"\"\x01 = \x04\""+::Json.Serialize.ToString(foundVal)+"\"\x01");
			this.commandMan.Send(ctx.player, "Commands|settings|SuccessShowValue", {variablePath = settingPath, variableValue = ::Json.Serialize.ToString(foundVal, 0)});
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
					// ClientPrint(player,3,"ERROR: user input is not of bool type: \""+settingVal+"\"");
					this.commandMan.Send(ctx.player, "Commands|settings|ErrorInputNotBool", {userInput = settingVal});
					return;
					break;
				case "array":
					if (!settingVal[0] == '[')  
					{
						this.commandMan.Send(ctx.player, "Commnads|settings|ErrorInputNotArray", {userInput = settingVal});
						return;
					}
					convVal = ::Json.Deserialize.String(settingVal);
					break;
				default:
					// ClientPrint(player,3,"ERROR: original value has invalid type: \""+foundType+"\"");
					this.commandMan.Send(ctx.player, "Commands|settings|ErrorOriginalType", {squirrelType = foundType});
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
			// ClientPrint(player, 5, "ERROR: "+e);
			this.commandMan.Send(ctx.player, "Errors|Generic", {error = e});
			return;
		}
		if (varPath.len() > 2 && varPath[0] == "PlayerSettings" && varPath[1] in ::BhopVars.PlayerSettings)
			::BhopVars.PlayerSettings[varPath[1]].ConfigAltered = true;
		else ::BhopVars.ConfigAltered = true;
		// ClientPrint(ctx.player, 5, "set variable \x05\""+settingPath+"\"\x01 to \x04\""+convVal+"\"\x01");
		this.commandMan.Send(ctx.player, "Commands|settings|SuccessSetValue", {variablePath = settingPath, variableValue = ::Json.Serialize.ToString(convVal, 0)});
		return;
	}
}

/* class ::BhopCmds.Rescore extends ::Commands.Command
{
	aliases = ["rescore"];
	brief = "rescore all bhops";
	// help = "supply the value parameter to set the value, otherwise print the value. to see/edit a sub value, seperate table/class indexes with a pipe \"|\".\nEX: \"!bhop settings BunnyTickLeniency 3\"";
	privileged = true;
	cooldown = 10;

	// </ bhopCmd_param_var = "the path to the variable, seperated with pipes \"|\"", 
	//    bhopCmd_param_value = "the value to set the variable to. if this isnt supplied, it just prints the value" />
	function Callback(ctx)
	{
		foreach (pSID, pSet in ::BhopVars.PlayerSettings)
		{
			if (pSet["BestBhop"] == null)
				continue;
			local bhopChainData = pSet["BestBhop"];
			local newScore = bhopChainData.GetScore(bhopChainData.GetNumBhops(), bhopChainData.maxVel, 0, 0);
			newScore = newScore.tointeger();
			if (newScore != bhopChainData.score)
			{
				::BhopVars.PlayerSettings[pSID]["BestBhop"]["score"] = newScore;
				::BhopVars.PlayerSettings[pSID]["ConfigAltered"] = true;
				ClientPrint(ctx.player, 5, "updated best bhop score for player \""+pSet["Name"]+"\"");
			}
		}
		foreach (pSID, bhopChainData in ::BhopVars.SessionData)
		{
			local newScore = bhopChainData.GetScore(bhopChainData.GetNumBhops(), bhopChainData.maxVel, 0, 0);
			newScore = newScore.tointeger();
			if (newScore != bhopChainData.score)
			{
				::BhopVars.SessionData[pSID]["score"] = newScore;
				ClientPrint(ctx.player, 5, "updated session bhop score for player \""+pSet["Name"]+"\"");
			}
		}
		ClientPrint(ctx.player, 5, "done updating scores!");
	}
} */

class ::BhopCmds.Rules extends ::Commands.Command
{
	aliases = ["rules", "r"];
	brief = "see the variables related to bhop detection & scoring";
	// help = "see the variable values related to bhop detection & scoring";
	privileged = false;
	cooldown = 0;

	function Callback(ctx)
	{
		//ClientPrint(ctx.player, 5, "current bhop ruleset:");
		//ClientPrint(ctx.player, 5, "  \x05"+"tick leniency\x01	: \x04"+::BhopVars.BunnyTickLeniency+"\x01");
		//ClientPrint(ctx.player, 5, "  \x05"+"detection count\x01	: \x04"+::BhopVars.BunnyDetectCount+"\x01");
		//ClientPrint(ctx.player, 5, "  \x05"+"min starting vel\x01	: \x04"+::BhopVars.BunnyMinStartingVel+"\x01");
		this.commandMan.Send(ctx.player, "Commands|rules|Ruleset");
		this.commandMan.Send(ctx.player, "Commands|rules|TickRuleset", {variableValue = ::BhopVars.BunnyTickLeniency});
		this.commandMan.Send(ctx.player, "Commands|rules|CountRuleset", {variableValue = ::BhopVars.BunnyDetectCount});
		this.commandMan.Send(ctx.player, "Commands|rules|VelRuleset", {variableValue = ::BhopVars.BunnyMinStartingVel});
		if (::BhopVars.BunnyDetectDuration > 0)
			// ClientPrint(ctx.player, 5, "  \x05"+"bhop length count\x01	: \x04"+::BhopVars.BunnyDetectDuration+"\x01");
			this.commandMan.Send(ctx.player, "Commands|rules|LengthRuleset", {variableValue = ::BhopVars.BunnyDetectDuration});
		/* ClientPrint(ctx.player, 5, "scoring rules:");
		ClientPrint(ctx.player, 5, "  \x05"+"bhop count mult\x01	: \x04"+::BhopVars["ScoringSettings"]["BhopCountMult"]+"\x01");
		ClientPrint(ctx.player, 5, "  \x05"+"bhop speed mult\x01	: \x04"+::BhopVars["ScoringSettings"]["BhopAvgVelocityMult"]+"\x01"); */
		return true;
	}
}

class ::BhopCmds.Toggle extends ::Commands.Command
{
	aliases = ["toggle", "t"];
	brief = "toggle bhop announcing for you";
	help = "add the \"perfectjump\" parameter to only disable perfectjump announcing";

	</ meowCmd_param_type = "type of thing to toggle. can either be nothing, \"all\" or \"perfectjump\"" />
	function Callback(ctx, type="all")
	{
		local toggleType = type;
		if (toggleType == "perfectjump")
		{
			if (::BhopFunc.IsPlayerPerfectJumpIgnored(ctx.playerSteamID))
			{
				::BhopFunc.PerfectJumpIgnorePlayer(ctx.playerSteamID, false);
				// ClientPrint(ctx.player, 5, "\x01you will now be notified of your perfect jumps!");
				this.commandMan.Send(ctx.player, "Commands|toggle|TogglePerfectJumpOn");
				return;
			}
			::BhopFunc.PerfectJumpIgnorePlayer(ctx.playerSteamID, true);
			// ClientPrint(ctx.player, 5, "\x01you will no longer be notified of your perfect jumps!");
			this.commandMan.Send(ctx.player, "Commands|toggle|TogglePerfectJumpOff");
			return;
		}
		if (::BhopFunc.IsPlayerIgnored(ctx.playerSteamID))
		{
			::BhopFunc.IgnorePlayer(ctx.playerSteamID, false);
			// ClientPrint(ctx.player, 5, "\x01you are no longer ignored by MeowBhopDetect!");
			this.commandMan.Send(ctx.player, "Commands|toggle|ToggleModOn");
			return true;
		}
		::BhopFunc.IgnorePlayer(ctx.playerSteamID, true);
		// ClientPrint(ctx.player, 5, "\x01you will now be ignored by MeowBhopDetect!");
		this.commandMan.Send(ctx.player, "Commands|toggle|ToggleModOff");
		return true;
	}
}

class ::BhopCmds.About extends ::Commands.Command
{
	aliases = ["about", "a"];
	brief = "show information about bhop mod";

	function Callback(ctx)
	{
		//ClientPrint(ctx.player, 5, "\x01"+"MeowBhopDetect \x05r"+::BhopVars.build_num+"\x01");
		//ClientPrint(ctx.player, 5, "written by meowmeow, source code: \x05"+"https://github.com/meow6969/l4d2-things/tree/master/bunnyhop_detect\x01");
		//ClientPrint(ctx.player, 5, "a fork of simple bunny hop detect by mt2, link: \x05"+"https://steamcommunity.com/sharedfiles/filedetails/?id=2256379828\x01");
		this.commandMan.Send(ctx.player, "Commands|about|Callback", {version = ::BhopVars.build_num});
	}
}

class ::BhopCmds.Prefix extends ::Commands.Command
{
	aliases = ["prefix", "p"];
	brief = "change the prefix used for commands";
	privileged = true;

	</ meowCmd_param_prefix = "the new prefix the bot will use" />
	function Callback(ctx, prefix)
	{
		if (prefix.find(" ") != null)
		{
			// ClientPrint(ctx.player, 5, "prefix cant have a space");
			this.commandMan.Send(ctx.player, "Commands|prefix|ErrorPrefixSpace");
			return;
		}
	
		// ClientPrint(null, 5, "bhop detector prefix changed from \""+::BhopVars.CommandsPrefix+"\"->\""+prefix+"\"");

		::BhopVars.CommandsPrefix = prefix;
		::BhopVars.ConfigAltered = true;
		this.commandMan.prefix = prefix;
		
		this.commandMan.Send(null, "Commands|prefix|SuccessfullyChanged", {oldPrefix = ::BhopVars.CommandsPrefix, prefix = prefix}, false, ctx.player);
		
	}
}

class ::BhopCmds.RemoveScore extends ::Commands.FollowupCommand
{
	aliases = ["removescore", "re"];
	brief = "remove a score from the leaderboard";
	privileged = true;

	</ meowCmd_param_player = "the name or steam ID of the player who made the score" />
	function Callback(ctx, player)
	{
		local pSID = ::BhopFunc.GetSteamIDFromUserString(player);
		local pSet = ::BhopFunc.GetPlayerSettingsFromSteamID(pSID);
		if (pSet == null)
		{
			// ClientPrint(ctx.player,5,"ERROR: cant find player!");
			this.commandMan.Send(ctx.player, "Errors|CantFindPlayer");
			return false;
		}
		
		if (pSet["BestBhop"] == null)
		{
			// ClientPrint(ctx.player, 5, "ERROR: player has no tracked bhop!");
			this.commandMan.Send(ctx.player, "Commands|removescore|ErrorPlayerHasNoBhop");
			return false;
		}
		
		// ClientPrint(ctx.player, 5, "\x01"+"found bhop for player \x04"+pSet.Name+"\x01 steamid=\x03\""+pSID+"\"\x01, bhops=\x05"+pSet.BestBhop.numBhops+"\x01, score=\x05"+pSet.BestBhop.score+"\x01, date=\x05("+pSet.BestBhop.timeString+")\x01");
		// ClientPrint(ctx.player, 5, "\x01"+"are you sure you want to delete this score? Enter \x05\"YES\"\x01 to delete.");
		this.commandMan.Send(ctx.player, "Commands|removescore|Confirmation", {name = pSet.Name, steamID = pSID, numBhops = pSet.BestBhop.numBhops, score = pSet.BestBhop.score, timeString = pSet.BestBhop.timeString});
		return [pSID, pSet];
	}

	function Followup(ctx, followupData)
	{
		local pSID = followupData[0];
		local pSet = followupData[1];
		if (ctx.message != "YES")
		{
			// ClientPrint(ctx.player, 5, "\x01you did not say \x05\"YES\"\x01, will not be doing anything.");
			this.commandMan.Send(ctx.player, "Commands|removescore|FollowupFailed");
			return false;
		}
		// now just delete the score from things
		pSet["BestBhop"] = null;
		pSet["ConfigAltered"] = true;
		local i = ::BhopVars.LeaderboardUsers.find(pSID)
		if (i != null)
		{
			::BhopVars.LeaderboardUsers.remove(i)
			// shouldnt need to do this if statement but it could cause an error and thats scary
			if (pSID in ::BhopVars.LeaderboardData)
			{
				delete ::BhopVars.LeaderboardData[pSID];
	
			}
			::BhopFunc.WriteLeaderboard();
		}
		if (pSID in ::BhopVars.SessionData)
			delete ::BhopVars.SessionData[pSID];
	
		::BhopFunc.WritePlayerSetting(pSID, pSet);
	
		// ClientPrint(null, 5, "\x01"+"player \x04\""+pSet.Name+"\"\x01 has had their bhop scores removed");
		this.commandMan.Send(null, "Commands|removescore|FollowupSuccess", {name = pSet.Name}, false, ctx.player);
		return false;
	}
}


class ::BhopCmds.Ban extends ::Commands.Command
{
	aliases = ["ban", "b"];
	brief = "ban a player from leaderboards and bhop announcing";
	privileged = true;

	// i should probably write a transformer for inputting a player and just use the attributes to pass it as a custom function but no im to lazy rn later

	</ meowCmd_param_player = "the name or steam ID of the player you want to ban" />
	function Callback(ctx, player)
	{
		local pSID = ::BhopFunc.GetSteamIDFromUserString(player);
		local pSet = ::BhopFunc.GetPlayerSettingsFromSteamID(pSID);
		if (pSet == null)
		{
			//ClientPrint(ctx.player,5,"ERROR: cant find player!");
			this.commandMan.Send(ctx.player, "Errors|CantFindPlayer");
			return false;
		}
		if (pSet.Banned)
		{
			// ClientPrint(ctx.player, 5, "ERROR: player is already banned");
			this.commandMan.Send(ctx.player, "Commands|ban|ErrorAlreadyBanned");
			return;
		}
		pSet.Banned = true;
		pSet.ConfigAltered = true;
		::BhopFunc.WritePlayerSetting(pSID, pSet);
		// ClientPrint(null, 5, "\x01"+"player \x04\""+pSet.Name+"\"\x01, steamid="+pSID+" has been banned");
		this.commandMan.Send(null, "Commands|ban|SuccessfullyBanned", {name = pSet.Name, steamID = pSID}, false, ctx.player);
	}
}


class ::BhopCmds.Unban extends ::Commands.Command
{
	aliases = ["unban", "ub"];
	brief = "unban a player from leaderboards and bhop announcing";
	privileged = true;

	</ meowCmd_param_player = "the name or steam ID of the player you want to unban" />
	function Callback(ctx, player)
	{
		local pSID = ::BhopFunc.GetSteamIDFromUserString(player);
		local pSet = ::BhopFunc.GetPlayerSettingsFromSteamID(pSID);
		if (pSet == null)
		{
			// ClientPrint(ctx.player,5,"ERROR: cant find player!");
			this.commandMan.Send(ctx.player, "Errors|CantFindPlayer");
			return false;
		}
		if (!pSet.Banned)
		{
			// ClientPrint(ctx.player, 5, "ERROR: player is not banned");
			this.commandMan.Send(ctx.player, "Commands|unban|ErrorPlayerNotBanned");
			return;
		}
		pSet.Banned = false;
		pSet.ConfigAltered = true;
		::BhopFunc.WritePlayerSetting(pSID, pSet);
		// ClientPrint(null, 5, "\x01"+"player \x04\""+pSet.Name+"\"\x01, steamid="+pSID+" has been unbanned");
		this.commandMan.Send(null, "Commands|unban|SuccessfullyUnbanned", {name = pSet.Name, steamID = pSID}, false, ctx.player);
	}
}


class ::BhopCmds.Language extends ::Commands.Command
{
	aliases = ["language", "lang", "l"];
	brief = "change the language for you";

	function Callback(ctx, language=null)
	{
		if (language == null)
		{
			this.commandMan.Send(ctx.player, "Commands|language|Callback", {language = ::BhopFunc.GetPlayerLanguage(ctx.playerSteamID), languages = ::MeowUtils.ArrayJoin(::MeowUtils.TableKeys(::BhopLang))});
			// ClientPrint(ctx.player, 3, "your language:		"+::BhopFunc.GetPlayerLanguage(ctx.playerSteamID));
			// ClientPrint(ctx.player, 3, "available languages:	"+::MeowUtils.ArrayJoin(::MeowUtils.TableKeys(::BhopLang)));
			return;
		}
		//printl("language="+language);
		language = language.toupper();
		//printl("langs="+::Json.Serialize.ToString(::MeowUtils.TableKeys(::BhopLang)));
		if (!(language in ::BhopLang))
		{
			this.commandMan.Send(ctx.player, "Commands|language|ErrorInvalidLanguage", {language = language});
			return;
		}
		::BhopVars.PlayerSettings[ctx.playerSteamID].Language = language;
		::BhopVars.PlayerSettings[ctx.playerSteamID].ConfigAltered = true;
		this.commandMan.Send(ctx.player, "Commands|language|LanguageChanged");
	}
}


/* class ::BhopCmds.TestFollowup extends ::Commands.FollowupCommand
{
	aliases = ["testfollowup"];
	
	function Callback(ctx)
	{
		ClientPrint(ctx.player, 5, "callback!");
		return 0;
	}

	function Followup(ctx, followupData)
	{
		if (ctx.message == "YES")
		{
			ClientPrint(ctx.player, 5, "followup #"+followupData+", following up again");
			return followupData + 1;
		}
		ClientPrint(ctx.player, 5, "followup #"+followupData+", ending followup");
		// should still end followup even with no return statement
	}
} */





