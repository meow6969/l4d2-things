



::BhopFunc <-
{
	function loadFile()
	{
		::MeowUtils.Log("MeowBhopDetect r"+::BhopVars.build_num+" :  successfully load !! yay!");
		
		::MeowUtils.Log("loaded bunny hop config:");
		::BhopFunc.ReadConfig();
		::MeowUtils.Log(::Json.Serialize.ToString(::BhopVars));
		::BhopFunc.SetCommandManager();
		::BhopFunc.WriteConfig();
		::BhopFunc.PopulatePlayerInitList();
		// for some reason , scripts can get ran multiple times before the server has actaully started, we instead read SessionData at the first UtilityTick()
		// ::BhopVars.SessionData = ::BhopFunc.ReadSessionData();
		
		// else
		// 	::BhopVars.SessionData = {};
		
		/* printl("  BunnyDetectCount="+::BhopVars.BunnyDetectCount);
		printl("  BunnyTickLeniency="+::BhopVars.BunnyTickLeniency);
		printl("  DefaultPlayerSettings="+::Json.Utils.WriteConfig()PrintThing(::BhopVars.DefaultPlayerSettings, true));
		printl("  PlayerSettings="+::Json.Utils.PrintThing(::BhopVars.PlayerSettings, true)); */
	}

	function WriteSessionData(reset=false)
	{
		if (::BhopVars.SessionData == null || ::BhopVars.SessionData.len() == 0)
		{
			::MeowUtils.Log("SessionData is empty, skipping write");
			return;
		}
		/* local path = ::BhopVars.ConfigPath+"/sessions/";
		if (reset)
		{
			local currentMap = Director.GetMapName();
			path = path+currentMap+".json";
		}
		else
		{
			local nextMap = ::MeowUtils.GetNextMapName();
			if (nextMap == null)  // this means no new session
				return;
			path = path+nextMap+".json";
		}
		::Json.Serialize.ToFile(path, ::BhopVars.SessionData) */
		::MeowUtils.JsonSaveTable("Meow_Bhop_Detect_Session_Data", ::BhopVars.SessionData);

		/* local a = ::Json.Utils.ClassToTable(::BhopVars.SessionData); 
		SaveTable("meow_bhop_detect_session_table", a);
		foreach (pSID, bhop in a)
		{
			printl("saving table: "+::Json.Serialize.ToString(bhop));
			SaveTable("meow_bhop_detect_session_table_"+pSID, bhop);
		}
		printl(::Json.Serialize.ToString(a)); */
	}

	function ReadSessionData(erase=true)
	{
		/* local currentMap = Director.GetMapName();
		local path = ::BhopVars.ConfigPath+"/sessions/"+currentMap+".json";
		local file = FileToString(path);
		if (!file || strip(file) == "") return {};
		local rDict = ::Json.Deserialize.String(file);
		if (typeof rDict != "table" || rDict.len() == 0) return {}; */

		// this is checking to make sure this is not the session data from a crashed game
		/* local testBhop = ::MeowUtils.TableValues(rDict)[0];
		local testTime = split(testBhop["timeString"], "/");  // YYYY/MM/DD
		testTime = {
			year  = testTime[0].tointeger(),
			month = testTime[1].tointeger(),
			day   = testTime[2].tointeger()
		}

		local curTime = {};
		LocalTime(curTime);
		if (testTime["year"] == curTime["year"] && testTime["month"] == curTime["month"] && testTime["day"] == curTime["day"])
			;;  // pass
		else if (testTime["year"] != curTime["year"])
		{
			if (testTime["year"] + 1 != curTime["year"])
				return {};
			if (testTime["month"] != 12 || testTime["day"] != 31 || curTime["month"] != 1 || curTime["day"] != 1)
				return {};
		}
		else if (testTime["month"] != curTime["month"])
		{
			// december & january already handled in above case
			if (testTime["month"] + 1 != curTime["month"])
				return {};
			// shortest month is 28 days, i dont wana do exceptions for leap years anbd wahtever 
			if (testTime["day"] < 28 || curTime["day"] != 1)
				return {};
		}
		// month changes & year changes handled in above cases
		else if (testTime["day"] + 1 != curTime["day"])
		{
			return {};
		} */

		local rDict = ::MeowUtils.JsonRestoreTable("Meow_Bhop_Detect_Session_Data");
		if (rDict == null)
			return {};

		local newDict = {};
		foreach (pSID, bhop in rDict)
		{
			newDict[pSID] <- ::Json.Deserialize.ExtractClassProperties(bhop, ::BhopClasses.BhopChainData);
		}

		// i give up trying to figure out save table it sucks
		/* local newDict = {};
		local rDict = {};
		RestoreTable("meow_bhop_detect_session_table", rDict);
		printl(::Json.Serialize.ToString(rDict));
		printl("getting things");
		foreach (pSID, bhop in rDict)
		{
			local a = {};
			RestoreTable("meow_bhop_detect_session_table_"+pSID, a);
			printl(::Json.Serialize.ToString(a));
			newDict[pSID] <- ::Json.Deserialize.ExtractClassProperties(a, ::BhopClasses.BhopChainData);
		}
		printl("done getting things"); */
		//if (erase) StringToFile(path, "");
		return newDict;
	}

	function SetCommandManager()
	{
		if (::BhopVars.CommandManager != null) return;
		// ::BhopVars.CommandManager = ::Commands.CommandManager(::BhopCmds, "!bhop", ::Commands.HelpCommand);
		// printl("SetCommandManager()");
		::BhopVars.CommandManager = ::Commands.CommandManager(
			::BhopCmds, 
			::BhopVars.CommandsPrefix, 
			::BhopFunc.IsPlayerAdmin, 
			::Commands.HelpCommand, 
			::BhopFunc.GetPlayerLanguage, 
			::BhopLang, 
			::BhopFunc.StyleLocalizedStringCode, 
			// ::BhopFunc.IsPlayerNotInInitList
			::BhopFunc.IsPlayerCommandManagerValid
		);
	}

	function ReadPlayerFile(steamid)  // -> ::BhopClasses.PlayerSettings || null
	{
		local spli = split(steamid, ":");
		if (spli.len() != 3)
			return null;
		// local playerPath = spli[0]+"";
		// local fullSteamid = "STEAM_"+spli[0]+":"+spli[1]+":"+spli[2];
		// ::MeowUtils.Log("fullSteamid=\""+fullSteamid+"\"");
		local pSetPath = ::BhopVars.ConfigPath+"/players/"+::MeowUtils.StringReplace(strip(steamid).slice(6), ":", "_")+".json";
		// ::MeowUtils.Log("pSetPath="+pSetPath);
		// ::MeowUtils.Log("fullSteamid="+fullSteamid);
		local pSet;
		try
		{
			// if the file doesnt exist, just returns null
			pSet = ::Json.Deserialize.FileToClass(pSetPath, ::BhopClasses.PlayerSettings);
			// if (pSet == null) continue;
		}
		catch(error)
		{
			throw "MeowBhopDetect player config parse error for playerid="+steamid+": "+error;
		}
		// printl("NEIWMMEOW");
		// printl("pSet="+::Json.Serialize.ToString(pSet));
		return pSet;
	}

	function ReadLeaderboard()
	{
		local path = ::BhopVars.ConfigPath+"/leaderboard.json";
		local file = FileToString(path);
		if (!file)
		{
			::BhopVars.LeaderboardUsers = [];
			::BhopVars.LeaderboardData = {};
			return;
		}
		
		::BhopVars.LeaderboardUsers = ::Json.Deserialize.String(file);
		if (::BhopVars.LeaderboardData == null)
			::BhopVars.LeaderboardData = {};
		foreach (i, steamid in ::BhopVars.LeaderboardUsers)
		{
			// printl("meow");
			local a = ::BhopFunc.ReadPlayerFile(steamid);
			if (a == null || a.BestBhop == null)
				continue;
			// printl("steamid="+steamid);

			// printl("a="+a);
			// printl(::Json.Serialize.ToString(a));
			::BhopVars.LeaderboardData[steamid] <- a.BestBhop;
		}
	}

	// should only be written when certain current leadboard has new content
	function WriteLeaderboard()
	{
		::Json.Serialize.ToFile(::BhopVars.ConfigPath+"/leaderboard.json", ::BhopVars.LeaderboardUsers);
	}

	function WriteVersion()
	{
		StringToFile(::BhopVars.ConfigPath+"/version.txt", ::BhopVars.build_num.tostring());
	}

	function ReadConfigHandleVersioning()  // this will only get ran if the bhop config file already exists
	{
		local path = ::BhopVars.ConfigPath+"/version.txt";
		local file = FileToString(path);
		local version;
		//printl("file="+file);
		if (!file)  // this means we are pre version r137 or something idk
			version = 137;
		else
		{
			try
			{
				version = file.tointeger();
			}
			catch (e)
			{
				::MeowUtils.Log("ERROR!!!! version.txt is corrupted!!! cannot handle versioning updates!!!");
				return;
			}
		}
		if (version != ::BhopVars.build_num)
			::BhopFunc.WriteVersion();
		//printl("version="+version);
		// put other versioning stuff here
		if (version <= 137)
		{
			//printl("blahg");
			::BhopVars.BunnyTickLeniency--;
			if (::BhopVars.BunnyTickLeniency < 1)
				::BhopVars.BunnyTickLeniency = 1;
			//::BhopVars.ConfigAltered = true;
		}
	}

	function ReadConfig(doPlayers=true)
	{
		local path = ::BhopVars.ConfigPath+"/config.json";
		local file = FileToString(path);

		if(!file)
		{
			::MeowUtils.Log("not file !!");
			::BhopFunc.WriteConfig(path);
			::BhopFunc.riteVersion();
			return;
		}
		
		
		
		// ::MeowUtils.Log("file="+file);

		//try
		//{
			local newBhopVars = ::Json.Deserialize.StringToClass(file, ::BhopClasses.BhopConfig);
			// ::BhopVars <- 
			if (::BhopVars.SessionData != null)
				newBhopVars.SessionData = ::BhopVars.SessionData;
			if (::BhopVars.CommandManager != null)
				newBhopVars.CommandManager = ::BhopVars.CommandManager;
			::BhopVars <- newBhopVars;
		
		::BhopFunc.ReadConfigHandleVersioning();

		//}
		//catch(error)
		//{
		//	throw "MeowBhopDetect config parse error: "+error;
		//}
		//::BhopFunc.SetCommandManager();

		// if (!doPlayers) return;

		::BhopFunc.ReadLeaderboard();
		//::BhopFunc.WriteConfig();

		// ::MeowUtils.Log("::BhopVars.PlayerSettings="+::Json.Serialize.ToString(::BhopVars.PlayerSettings));
	}

	function WritePlayerSetting(steamid, pSet=null)
	{
		if (steamid.len() < 10) return;
		//                 remove starting "STEAM_"
		local configName = steamid.slice(6);  // 1:1:######
		local configSplit = split(configName, ":");
		configName = configSplit[0]+"_"+configSplit[1]+"_"+configSplit[2];
		local fName = ::BhopVars.ConfigPath+"/players/"+configName+".json";
		if (pSet == null) pSet = ::BhopVars.PlayerSettings[steamid];
		if (!pSet.ConfigAltered) 
		{
			// dont think i need to do this, player data is loaded when they join
			/* try
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
				// sex  -- hehe
			} */
			return;
		}
		
		::Json.Serialize.ToFile(fName, pSet);
		if (steamid in ::BhopVars.PlayerSettings)
			::BhopVars.PlayerSettings[steamid].ConfigAltered = false;
	}

	function WritePlayerSettings()
	{
		foreach (steamid, pSet in ::BhopVars.PlayerSettings)
		{
			::BhopFunc.WritePlayerSetting(steamid, pSet);
		}
		// ::BhopFunc.WritePlayersManifest();
	}

	function WriteConfig(path=null)
	{
		if (path == null) path = ::BhopVars.ConfigPath+"/config.json";
		// printl("WriteConfig()");
		local opts = ::Json.Serialize.SerializerOptions();
		opts.comments = true;
		opts.serializeProtected = false;
		::Json.Serialize.ToFile(path, ::BhopVars, opts);

		::BhopFunc.WritePlayerSettings();  // AAAAAAAHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH  --  me too
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
			if (userid == null) continue;
			if (::BhopFunc.IsPlayerInInitList(userid))
			{
				continue;
			}
			::MeowUtils.Log("initiating player: "+player.GetPlayerName());
			::BhopVars.PlayerInitList.append(userid);
		}
	}

	function SendToAllNonIgnoredPlayers(message)
	// function SendToAllNonIgnoredPlayers()
	{
		local player = null;
		while (player = Entities.FindByClassname(player, "player"))
		{
			if (IsPlayerABot(player))
			{
				continue;
			}
			local steamid = ::MeowUtils.GetPlayerSteamID(player);
			if (IsPlayerIgnored(steamid))
			{
				// printl(player.GetPlayerName()+" was ignored SendToAllNon");
				continue; 
			}
			::MeowUtils.ClientPrintSplit(player, message);
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
		// ::MeowUtils.Log("IsPlayerAdmin(): steamid="+steamid);
		local host = GetListenServerHost();
		try 
		{
			if (host != null && "GetNetworkIDString" in host && host.GetNetworkIDString() == steamid)
				return true;
		}
		catch (e)
		{
			// previous shouldnt fail but if it does probably cause of dedicated server acitivitys
		}

		if (!(steamid in ::BhopVars.PlayerSettings))
		{
			// ::MeowUtils.Log("IsPlayerAdmin(): steamid not found");
			return false;
		}
		return ::BhopVars.PlayerSettings[steamid]["Admin"];
	}

	function DisplayLeaderboard(player=null, session=false)
	{
		// "\x01high score: \x04"+best["score"]+"\x01, total distance bhopped: \x04"+pSet["TotalDistanceBhopped"]+"\x01, total bhops: \x04"+pSet["TotalBhops"]+"\x01highest velocity: \x04"+pSet["HighestVelocity"]+"\x01"
		// ::BhopFunc.SendToAllNonIgnoredPlayers
		// ::BhopVars.NumLeaderboardSlots

		// {"steamID": "", "playerName": "", "score": 0.0, "numBhops": 0, "maxVel": 0.0, "avgVel": 0.0}

		local bestBhops;  // list[dict]
		// idk if returning 0 is good here since like i think it means the thing thinks that they are equal ? wait i think itlll work out .......... i hope 
		/* local MeowCompare = function (a, b)
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
		} */
		/* local SessionCompare = function (a, b)
		{
			if (a["score"] > b["score"])
				return 1;
			if (a["score"] < b["score"])
				return -1;
			return 0;
		} */

		/* foreach (sID, playerSetting in ::BhopVars.PlayerSettings)
		{
			if (!("bhopChain" in playerSetting) || playerSetting["bhopChain"] == null)	
			{
				continue;
			}
			bestBhops.append({"steamID": sID, "playerName": playerSetting["Name"], "score": playerSetting["score"], });
		} */
		// oh gyatt this is so bad dddddddddddddddddddddddddddddd aaahhhhhhh h 
		local tVals;
		if (session)
		{
			// printl("SessionData="+::BhopVars.SessionData);
			// printl("CommandManager="+::BhopVars.CommandManager);
			if (::BhopVars.SessionData.len() == 0)
			{
				if (player != null)
					// ClientPrint(player, 5, "no bhops tracked this session!");
					::BhopVars.CommandManager.Send(player, "SessionLeaderboard|NoBhopsTracked");
				return;
			}
			tVals = ::MeowUtils.TableValues(::BhopVars.SessionData);
			tVals.sort(::BhopFunc.CompareBhops);

			//  this stuff should be printed later with everything else
			// local awawawa = "session leaderboard:"
			//if (player == null)
				// ::BhopFunc.SendToAllNonIgnoredPlayers(awawawa);
			//	::BhopVars.CommandManager.Send(null, "SessionLeaderboard|HeaderText");
			//else
				// ClientPrint(player, 5, awawawa);
			//	::BhopVars.Command
			// tVals.reverse();
		
			/* if (tVals.len() > ::BhopVars.NumLeaderboardSlots)
			{
				tVals = tVals.slice(0, ::BhopVars.NumLeaderboardSlots);
			}	
			bestBhops = tVals; */
		}
		else
		{
			if (::BhopVars.LeaderboardData.len() == 0)
			{
				if (player != null)
					::BhopVars.CommandManager.Send(player, "Leaderboard|NoBhopsTracked");
				return;
			}
			tVals = ::MeowUtils.TableValues(::BhopVars.LeaderboardData);
			// tVals.sort(MeowCompare);
			//printl("precompare");
			tVals.sort(::BhopFunc.CompareBhops);
			//printl("compared");
			// tVals.reverse();
		
			/* if (tVals.len() > ::BhopVars.NumLeaderboardSlots)
			{
				tVals = tVals.slice(0, ::BhopVars.NumLeaderboardSlots);
			}	
			bestBhops = tVals; */
		}
		//printl("passed tVals");
		tVals.reverse();
		if (tVals.len() > ::BhopVars.NumLeaderboardSlots)
		{
			tVals = tVals.slice(0, ::BhopVars.NumLeaderboardSlots);
		}	
		bestBhops = tVals;
		//local leaderboardSlot = 1;
		
		// local s = "";
		// if (bestBhops.len() == 0)

		local code;
		local headerCode;
		local audience;
		if (session)
		{
			code = "SessionLeaderboard|Entry";
			headerCode = "SessionLeaderboard|HeaderText";
		}
		else
		{
			code = "Leaderboard|Entry";
			headerCode = "Leaderboard|HeaderText";
		}
		// player is either null for everyone or a player object, we dont need to check for it
		::BhopVars.CommandManager.Send(player, headerCode);
		
		foreach (i, t in bestBhops)
		{
			// if (!session && t["BestBhop"] == null) continue;
			
			local name;
			local score;
			local numBhops;
			local maxVel;
			local avgVel;
			local timeString;
			local map;

			name = t["playerName"]; // ::BhopVars.PlayerSettings[t["playerSteamID"]]["Name"];
			score = t["score"];
			numBhops = t["numBhops"];   /// ! ! WRONG this is wrong ???? wh ok how many times i make dis mistake?  -- nvm numBhops is correct after its been scored
			maxVel = t["maxVel"];
			avgVel = t["avgVel"];
			timeString = t["timeString"];
			map = t["map"];
			
			/* if (session)
			{
				name = ::BhopVars.PlayerSettings[t["playerSteamID"]]["Name"];
				score = t["score"];
				numBhops = t["numBhops"];
				maxVel = t["maxVel"];
				avgVel = t["avgVel"];
			}
			else
			{
				name = t["Name"];
				score = t["BestBhop"]["score"];
				numBhops = t["BestBhop"]["numBhops"];
				maxVel = t["BestBhop"]["maxVel"];
				avgVel = t["BestBhop"]["avgVel"];
			} */
			
			// l4d2 has 255 char message limit so this is really pushing it   -- shut up baka   I WONT LISTEN TO YOU ! !!!!
			//local s = "  \x03"+leaderboardSlot+"\x01: \x04"+name+"\x01 ";
			// if (!session) s = s+"\x05("+t["BestBhop"]["timeString"]+")\x01, " 
			//if (!session) s = s+"\x05("+t["timeString"]+")\x01, ";
			//s = s+"score: \x05"+score+"\x01, bhops: \x05"+numBhops+"\x01, max speed: \x05"+maxVel+"\x01, avg speed: \x05"+avgVel+"\x01";
			// local s = "  \x03"+leaderboardSlot+"\x01: \x04"+t["Name"]+"\x01 score: \x05"+t["BestBhop"]["score"]+"\x01, bhops: \x05"+t["BestBhop"]["bhopChain"].len()+"\x01, max speed: \x05"+t["BestBhop"]["maxVel"]+"\x01, avg speed: \x05"+t["BestBhop"].AverageVelocity()+"\x01";
			// s += "  \x03"+leaderboardSlot+"\x01: \x04"+t["Name"]+"\x01 \x05("+t["BestBhop"]["timeString"]+")\x01, score: \x05"+t["BestBhop"]["score"]+"\x01, bhops: \x05"+t["BestBhop"]["bhopChain"].len()+"\x01, max speed: \x05"+t["BestBhop"]["maxVel"]+"\x01, avg speed: \x05"+t["BestBhop"].AverageVelocity()+"\x01\n";
			
			//if (player == null)
			//{	
				// dis sucks xddddddddddddddddddddddddddddddddddddddddd   its 2 bcs we  increment it above dis since theres a continue below ddis  and  NO  i WILL NOT USE A ELSE BLOCK!!! I HATE ELSE 
				//   -- idk wut i was trying to say with this ??  --- wtf amm i even doing 
				//if (leaderboardSlot == 2 && !session)
					// ::BhopFunc.SendToAllNonIgnoredPlayers("server leaderboard:");
					//::BhopVars.CommandManager.Send(null, headerCode);
				// ::BhopFunc.SendToAllNonIgnoredPlayers(s);
				//::BhopVars.CommandManager.Send(null, 
				//continue;
			//}
			//if (leaderboardSlot == 2 && !session)
			//	ClientPrint(player, 5, "server leaderboard:");
			// ::BhopVars.CommandManager.Send(player, code, {leaderboardSlot = i + 1, name = name, timeString = timeString, score = score, numBhops = numBhops, topSpeed = maxVel, avgSpeed = avgVel});
			local infos = 
			{
				leaderboardSlot = i + 1, 
				name = name, 
				timeString = timeString, 
				score = score, 
				numBhops = numBhops, 
				topSpeed = maxVel, 
				avgSpeed = avgVel,
				map = map
			};
			::BhopFunc.SendBhopAnnounce(player, code, infos, true);  // TODO: TEST ! !!! TETSTT~!!!!

			//leaderboardSlot++;
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

	function IsPlayerNotInInitList(userid)
	{
		return !::BhopFunc.IsPlayerInInitList(userid);
	}

	function ShouldIgnorePlayer(userid, player)
	{
		if (IsPlayerABot(player))
		{
			return true;
		}
		
		if (::BhopFunc.IsPlayerInInitList(userid))
		{
			::MeowUtils.Log("player "+player.GetPlayerName()+" in init list, ignoring...");
			// ::MeowUtils.Log(::Json.Serialize.ToString(::BhopVars.PlayerInitList));
			return true;
		}

		if (!::MeowUtils.IsAlive(player))
		{
			return true;
		}
		// i dont wanna do this here, i want the banned player to be ablee to use the mod and everything but just have no one else see the things they do
		/* local pSID = player.GetNetworkIDString();
		if (::BhopVars.PlayerSettings[pSID].Banned)
			return true; */
		return false;
	}

	function IsPlayerCommandManagerValid(userid)
	{
		local player = GetPlayerFromUserID(userid);
		if (IsPlayerABot(player))
			return false;
		if (::BhopFunc.IsPlayerInInitList(userid))
			return false;
		local steamid = ::MeowUtils.GetPlayerSteamID(player);
		if (::BhopFunc.IsPlayerIgnored(steamid))
			return false;
		return true;
	}

	function EnsurePlayerSettings(player, pName, steamid=null)
	{
		if (steamid == null) steamid = ::MeowUtils.GetPlayerSteamID(player);
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
		if (strip(steamid).len() < 10 || strip(steamid).slice(0, 6) != "STEAM_")
		{
			::MeowUtils.Log("player "+pName+" has invalid steamid, skipping...");
			return false;
		}
		// TODO
		// i forgot if i fixed this  --  still dont know  --  still dont know 
		// AAAHHH ITS BUGGED ITS BUGGED AHH
		// ok so write config when it says its altered
		// otherwise read 
		// should try to read file first, then check if its in player settings
		// printl("Ensure(): steamid="+steamid);
		// wtf?? how did this line of code still stay ?? its been outdated for mmonths
		// local fPath = ::BhopVars.ConfigPath+"/players/"+strip(steamid).slice(10)+".json"
		local fPath = ::BhopVars.ConfigPath+"/players/"+::MeowUtils.StringReplace(strip(steamid).slice(6), ":", "_")+".json";
		local fi = FileToString(fPath);
		//::MeowUtils.Log("fPath=\""+fPath+"\"");
		if (fi == null)
		{
			if (!(steamid in ::BhopVars.PlayerSettings))
			{
				::MeowUtils.Log("setting playersettings[steamid] for player "+pName);
				::BhopVars.PlayerSettings[steamid] <- ::BhopClasses.PlayerSettings();
				if (::BhopVars.NewPlayerIntroduction)
				{
					//ClientPrint(player, 5, "\x01"+"hello \x04"+pName+"\x01! you seem to be new to MeowBhopDetect!");
					//ClientPrint(player, 5, "\x01"+"enter \"\x05"+::BhopVars.CommandsPrefix+" help\x01\" to see the help command, and do \"\x05!bhop toggle\x01\" to enable/disable me!");
					::BhopVars.CommandManager.Send(player, "Misc|Introduction", {name = pName, prefix = ::BhopVars.CommandsPrefix});
				}
				// ClientPrint(player, 5, "\x04"+"elitezrule2\x01 is currently testing this mod, expect bugs!");
				// ClientPrint(player, 5, "\x01"+"feedback is welcome!");
				// dont need to set configaltered since it 100% runs later  -- dis is bcs the pName changes
			}
		}
		else
		{
			::MeowUtils.Log("reading playersettings[steamid] json file for player "+pName);
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
		if (::BhopVars.PlayerSettings[steamid].Banned)
		{
			//ClientPrint(player, 5, "\x01"+"for your attention: i regret to inform you of the following,");
			//ClientPrint(player, 5, "\x01"+"you are currently \x04"+"BANNED\x01, your achievements will not be \x04"+"ACKNOWLEDGED\x01");
			::BhopVars.CommandManager.Send(player, "Banned|Introduction");
		}
		// ::BhopFunc.WriteConfig(::BhopVars.ConfigPath);
		return true;
	}

	// TODO: maybe make it so it will try to see if the inputted steam id is in the players directory?
	function GetSteamIDFromUserString(playerString)  // -> pSID || null
	{  
		if (typeof playerString != "string")
			return null;
		// checking for steam id match
		if (playerString in ::BhopVars.PlayerSettings)
			return playerString;
		local lowPlayerString = playerString.tolower();

		playerString = playerString.tolower();

		local nameMatch = null;
		foreach (_bhop in ::BhopVars.LeaderboardData)
		{
			if (_bhop.playerSteamID == playerString)
				return _bhop.playerSteamID;  // ::BhopFunc.ReadPlayerFile(_bhop.playerSteamID);
			if (_bhop.playerName.tolower() == lowPlayerString)
			{
				nameMatch = _bhop.playerSteamID;
				//pSet = ::BhopFunc.ReadPlayerFile(_bhop.playerSteamID);
				//if (pSet == null)
				//	break;
				//found = true;
				//break;
			}
		}

		// the priority goes like this 
		// 1. the steamID in ::BhopVars.PlayerSettings
		// 2. the steamID in ::BhopVars.LeaderboardData
		// 3. the name in ::BhopVars.PlayerSettings
		// 4. the name in ::BhopVars.LeaderboardData

		foreach (pSID, _pSet in ::BhopVars.PlayerSettings)
		{
			if (_pSet["Name"].tolower() == lowPlayerString)
				return pSID;
		}
		
		if (nameMatch != null)
			return nameMatch;
		return null;
	}

	function GetPlayerSettingsFromSteamID(pSID)  // -> pSet || null
	{
		if (pSID in ::BhopVars.PlayerSettings)
			return ::BhopVars.PlayerSettings[pSID];
		return ::BhopFunc.ReadPlayerFile(pSID);
	}
	
	function DurationToString(duration, days=null, hours=null, minutes=null, seconds=null)  // -> str
	{
		if (days == null)
			days = ::BhopVars.TimeDurationSettings.Days
		if (hours == null)
			hours = ::BhopVars.TimeDurationSettings.Hours
		if (minutes == null)
			minutes = ::BhopVars.TimeDurationSettings.Minutes
		if (seconds == null)
			seconds = ::BhopVars.TimeDurationSettings.Seconds
		//printl("days="+days+", hours="+hours+", minutes="+minutes+", seconds="+seconds);
		//printl("duration="+duration);
		local amounts = ::MeowUtils.DurationToUnits(duration, days, hours, minutes, seconds);
		//printl("amounts="+::Json.Serialize.ToString(amounts, 0));
		local rStr = "";
		foreach (u in amounts.slice(0, -1))
		{
			if (u[1] == 0)
				continue;
			rStr += u[1]+u[0]+" ";
			if (u[0] == "d")
			{
				rStr += "("+(u[1] * 24).tointeger()+"h) ";
			}
		}
		local u = amounts[amounts.len()-1];
		//printl("u=["+u[0]+", "+u[1]+"]");
		rStr += ::MeowUtils.DecimalRound(u[1], 1)+u[0];
		return rStr;
	}

	function GetPlayerLanguage(steamid)
	{
		//printl("get player language, steamid="+steamid);
		if (!(steamid in ::BhopVars.PlayerSettings))
			return "en";
		local a = ::BhopVars.PlayerSettings[steamid]["Language"];
		//printl("a="+a);
		return a;
	}

	// lang coder langcoder
	//                                string, table
	function StyleLocalizedStringCode(code,   extraInfos)  // -> string
	{
		local white = "\x01";
		local brightGreen = "\x03";
		local orange = "\x04";
		local oliveGreen = "\x05";
		try
		{
			switch (code)
			{
				case "LEADERBOARD_SLOT":
					return brightGreen+extraInfos["leaderboardSlot"]+white;
				
	
				case "TIME_STRING":
					return oliveGreen+"("+extraInfos["timeString"]+")"+white;
				case "SCORE":
					return oliveGreen+extraInfos["score"]+white;
				case "NUM_BHOPS":
					return oliveGreen+extraInfos["numBhops"]+white;
				case "TOP_SPEED":
					return oliveGreen+extraInfos["topSpeed"].tointeger()+white;
				case "AVG_SPEED":
					return oliveGreen+extraInfos["avgSpeed"].tointeger()+white;
				case "SPEED_PERFECTJUMP":
					return extraInfos["speedPerfectJump"].tointeger();
				case "DURATION":
					return orange+extraInfos["duration"]+white;
				case "SCORE_DIFFERENCE":
					return oliveGreen+"+"+extraInfos["scoreDifference"]+white;
				case "DISTANCE":
					return orange+extraInfos["distance"]+white;
	
				case "OLD_PREFIX":
					return "\""+extraInfos["oldPrefix"]+"\"";
				
				
				default:
					return null;
			}
		}
		catch (e)
		{
			throw "ERROR: bhop string coder encountered an error! error="+e;
		}
	}

	//                          string, string,  table
	function GetLocalizedString(path,   steamid, extraInfos)  // whgat does this do ? its not called anywere
	{
		local pSet = ::BhopFunc.GetPlayerSettingsFromSteamID(pSID);
		if (pSet == null)
			throw "GetLocalizedString error: steamid  coudlnt get the playet serting sfile";
		
		local lang = ::EN_US;  // TODO: make this like a thing or something idk

		local foundVal = ::MeowUtils.IndexTableByString(path, lang);

		local ex = regexp("%%([A-Z_]+?)%%");
		
		// local test =  "%%NAME%%";
		//local test = "%%NAME%% got %%NUM_BHOPS%% bunnyhop in a row (score: %%SCORE%%, top speed: %%TOP_SPEED%%, avg speed: %%AVG_SPEED%%)";
	
		// printl(ex.capture(test));
		local res;
		local start = 0;
		local formattedString = foundVal;
		while (res = ex.capture(foundVal, start))
		{
			start = res[0].end;
			local full_match = test.slice(res[0].begin, res[0].end);
			local code = test.slice(res[1].begin, res[1].end);
			local formattedCode = ::BhopFunc.StyleLocalizedStringCode(code, extraInfos);
			formattedString = ::MeowUtils.StringReplace(formattedString, full_match, formattedCode);

			//printl("match=("+res[0].begin+"-"+res[0].end+")="+test.slice(res[0].begin, res[0].end));
			//printl("match=("+res[1].begin+"-"+res[1].end+")="+test.slice(res[1].begin, res[1].end));
			//printl();
		}
		return formattedString;
	}

	function GetBhopCompareKey()  // -> str,  this str is a field in the BhopChain class
	{
		switch (::BhopVars.BhopAnnouncingSettings.LeaderboardSortOrder)
		{
			case "score":
				return "score";

			case "bhops":
				return "numBhops";  // counting the first bhop doesnt matter in this case because both of the bhop chains would have had that error

			case "top_speed":
				return "maxVel";

			case "avg_speed":
				return "avgVel";

			default:
				::MeowUtils.Log(     "ERROR!!! improper entry for LeaderboardSortOrder!! got "+::BhopVars.BhopAnnouncingSettings.LeaderboardSortOrder);
				ClientPrint(null, 3, "ERROR!!! improper entry for LeaderboardSortOrder!! got "+::BhopVars.BhopAnnouncingSettings.LeaderboardSortOrder);
				return "score";
		}
	}

	// if bhop1  > bhop2, return  1
	// if bhop1  < bhop2, return -1
	// if bhop1 == bhop2, return  0
	function CompareBhops(bhop1, bhop2)
	{
		local key = ::BhopFunc.GetBhopCompareKey();

		if (bhop1[key] > bhop2[key])
			return 1;
		if (bhop1[key] < bhop2[key])
			return -1;

		if (key == "score")
			return 0;

		// if they are equal, fallback on score to break ties
		if (bhop1["score"] > bhop2["score"])
			return 1;
		if (bhop1["score"] < bhop2["score"])
			return -1;
		return 0;
	}

	//                                 player, str,  table, bool
	function SendBhopAnnounceForPlayer(player, code, infos, isLeaderboard)
	{
		local infosStrs = [];
		local pSID = ::MeowUtils.GetPlayerSteamID(player);
		local order;
		if (isLeaderboard)
			order = ::BhopVars.BhopAnnouncingSettings.LeaderboardDisplayOrder;
		else
			order = ::BhopVars.BhopAnnouncingSettings.SuccessfulBhopDisplayOrder;
		// printl("order="+::Json.Serialize.Object(order));
		foreach (dataType in order)
		{
			switch (dataType)
			{
				case "score":
					infosStrs.append(::BhopVars.CommandManager.GetPlayerLocalizedString("BhopAnnounce|Score", infos, pSID));
					break;
				case "top_speed":
					infosStrs.append(::BhopVars.CommandManager.GetPlayerLocalizedString("BhopAnnounce|TopSpeed", infos, pSID));
					break;
				case "avg_speed":
					infosStrs.append(::BhopVars.CommandManager.GetPlayerLocalizedString("BhopAnnounce|AvgSpeed", infos, pSID));
					break;
				case "bhops":
					infosStrs.append(::BhopVars.CommandManager.GetPlayerLocalizedString("BhopAnnounce|NumBhops", infos, pSID));
					break;
				case "map":
					infosStrs.append(::BhopVars.CommandManager.GetPlayerLocalizedString("BhopAnnounce|Map", infos, pSID));
			}
		}
		// printl("infosStrs="+::Json.Serialize.Object(infosStrs));
		local allDatas = ::MeowUtils.ArrayJoin(infosStrs);
		// printl("allDatas="+::Json.Serialize.Object(allDatas));
		
		local finalString = ::BhopVars.CommandManager.GetPlayerLocalizedString(code, infos, pSID);
		if (isLeaderboard)
			finalString += ", "+allDatas;
		else
			finalString += " ("+allDatas+")";
		ClientPrint(player, 5, finalString);
	}


	//                        player|null, str,  table, bool
	function SendBhopAnnounce(dest,        code, infos, isLeaderboard)  // -> null
	{
		// ok so i need to get the localized code... can i even do this ?
		// i need to study usage of it again ill check leaderboard
		// so i need to loop through every player, get localized string for that player, then compile and send

		// maybe i could design a system that allows you to input multiple message codes? recursive codes?
		// nope im just  frikcing doing it the stupid way cauyse i ... lazy

		// dest == player

		// i need to build the extra infos part
		
		if (dest == null)
		{
			local players = ::MeowUtils.GetAllPlayers(::BhopVars.CommandManager.validPlayerFunc);
			foreach (p in players)
				::BhopFunc.SendBhopAnnounceForPlayer(p, code, infos, isLeaderboard);
			return;
		}
		::BhopFunc.SendBhopAnnounceForPlayer(dest, code, infos, isLeaderboard);
	}
}





