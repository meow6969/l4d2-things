



// this is for the various timing related entities bhop detect spawns
::BhopEnts <-
{
	function CheckBhop(player, steamid)
	{
		if (::BhopVars.JumpingList[steamid].groundTime > ::BhopVars.BunnyTickLeniency)
		{
			local pName = player.GetPlayerName();
			// local speed = this.GetPlayerSpeed(player);
			local bhopChain = ::BhopVars.JumpingList[steamid];
			
			local count = bhopChain.GetNumBhops();
			// local topspeed = bhopChain.maxVel.tointeger();
			// local avgspeed = bhopChain.AverageVelocity().tointeger();
			if (count >= ::BhopVars.BunnyDetectCount)
			{
				local best = bhopChain.ScoreBhop();
				local topspeed = bhopChain.maxVel.tointeger();
				local avgspeed = bhopChain.avgVel.tointeger();
				// chat message length limut is 255 char
				// idk whether to add bhop duration on this
				// local msg = "\x04"+pName+"\x01 got \x05"+count+"\x01 bunnyhop"+((count > 1)?"s":"")+ " in a row (top speed: \x05"+topspeed+"\x01, avg speed: \x05"+avgspeed+"\x01, score: \x05"+bhopChain.score+"\x01)";
				local infos = {name = pName, numBhops = count, topSpeed = topspeed, avgSpeed = avgspeed, score = bhopChain.score, map = bhopChain.map};
				if (::BhopVars.BunnyDetectDuration > 0 && bhopChain.bhopTime > ::BhopVars.BunnyDetectDuration)
					// msg += "\n\x04"+pName+"\x01 bhopped for \x04"+::BhopFunc.DurationToString(bhopChain.bhopTime, false, false, true, true)+"\x01 straight!";
					infos["duration"] <- ::BhopFunc.DurationToString(bhopChain.bhopTime, false, false, true, true);
				local code;
				if (count <= 1)
					code = "BhopAnnounce|InARowSingular";
				else
					code = "BhopAnnounce|InARowMultiple";
				if (::BhopVars.PlayerSettings[steamid].Banned)
				{
					// ::MeowUtils.ClientPrintSplit(player, msg);
					// ::BhopVars.CommandManager.Send(player, code, infos);
					::BhopFunc.SendBhopAnnounce(player, code, infos, false);  // TODO: TEST!!
					if ("duration" in infos)
						::BhopVars.CommandManager.Send(player, "BhopAnnounce|Time", infos);
					return false;
				}
				// ::BhopFunc.SendToAllNonIgnoredPlayers(msg);
				// ::BhopVars.CommandManager.Send(null, code, infos);
				::BhopFunc.SendBhopAnnounce(null, code, infos, false);
				if ("duration" in infos)
					::BhopVars.CommandManager.Send(null, "BhopAnnounce|Time", infos);
				if (best == 2)
				{
					// ::BhopFunc.SendToAllNonIgnoredPlayers("\x04"+pName+"\x01 got their first bunnyhop record!");
					::BhopVars.CommandManager.Send(null, "BhopAnnounce|FirstRecord", {name = pName});
				}
				else if (typeof best == "array")  // TODO: this thing,., like i need to when it announces it it has to change "points" to like velocity or bhops depending on what is the score key
				{
					local scoreDiff;
					local codeAddon;
					switch (::BhopVars.BhopAnnouncingSettings.LeaderboardSortOrder)
					{
						case "bhops":
							scoreDiff = bhopChain.numBhops - best[1].numBhops;
							codeAddon = "Bhops";
							break;
						case "top_speed":
							scoreDiff = bhopChain.maxVel - best[1].maxVel;
							codeAddon = "Velocity";
							break;
						case "avg_speed":
							scoreDiff = bhopChain.avgVel - best[1].avgVel;
							codeAddon = "Velocity";
							break;
						default:
							scoreDiff = bhopChain.score - best[1].score;
							codeAddon = "Score";
							break;
					}
					if (best[0] == 3)
						// ::BhopFunc.SendToAllNonIgnoredPlayers("\x04"+pName+"\x01 beat their bunnyhop record! \x05+"+(bhopChain.score - best[1].score)+"\x01 points!");
						::BhopVars.CommandManager.Send(null, "BhopAnnounce|BeatPB"+codeAddon, {name = pName, scoreDifference = scoreDiff});
					else if (best[0] == 5)
						// ::BhopFunc.SendToAllNonIgnoredPlayers("\x04"+pName+"\x01 beat their session bunnyhop record! \x05+"+(bhopChain.score - best[1].score)+"\x01 points!");
						::BhopVars.CommandManager.Send(null, "BhopAnnounce|BeatSessionPB"+codeAddon, {name = pName, scoreDifference = scoreDiff});
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
				::MeowUtils.Log("couldnt get player from bhopChain");
				markedForDeletion.append(steamid);
				continue;
			}
			
			if (::BhopFunc.IsPlayerIgnored(steamid))
			{
				// ::MeowUtils.Log("BhopTick(): ignoring player");
				markedForDeletion.append(steamid);
				continue;
			}
			if (::BhopFunc.ShouldIgnorePlayer(pUserID, player))
			{
				// ::MeowUtils.Log("BhopTick(): should ignoring player");
				markedForDeletion.append(steamid);
				continue;
			}

			if (!(::MeowUtils.IsEntityOnGroundVSLib(player))) 
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
			if (::BhopVars.JumpingList[steamid].groundTime > 1 && !::BhopFunc.IsPlayerPerfectJumpIgnored(steamid))
				ClientPrint(player, 4, "");
				

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
			// ::MeowUtils.Log("ConfigSaveTick()");
			::BhopFunc.WriteConfig();
			::BhopVars.ConfigAltered = false;
			return;
		}
		else
		{
			::BhopFunc.ReadConfig(false);
		}
		// ::MeowUtils.Log("ConfigSaveTick(): WritePlayerSettings!");
		::BhopFunc.WritePlayerSettings();
	}

	function UtilityTick()
	{
		// ::MeowUtils.Log("UtilityTick()!");
		// we do it here as this means entities and stuff are loaded , so we know the script isnt being arbitrarily executed for no reason on map load  -- i have now figured out this is just first and second load behavior ,
		if (::BhopVars.SessionData == null)
			::BhopVars.SessionData = ::BhopFunc.ReadSessionData();

		if (::BhopVars.PlayerInitList.len() == 0)
		{
			return;
		}

		local playersToRemove = [];
		
		foreach (i, userid in ::BhopVars.PlayerInitList)
		{
			local player = GetPlayerFromUserID(userid);
			local pName = player.GetPlayerName();
			
			::MeowUtils.Log("ensuring settings for player "+pName);
			local r = ::BhopFunc.EnsurePlayerSettings(player, pName);
			if (r)
			{
				// ClientPrint(player, 5, "you have been initialized by MeowBhopDetect!");
				::MeowUtils.Log("removing player \""+pName+"\" from init list");
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

	// this is the one that handles bhop logic
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
			// these numbers are the minimum amt of time that will pass (in seconds) before running this think function again
			// return 0.03333;  // dis is the tick time for  30 tick server, which is default, idk if this should be returned, probably not though
			// return 0.01111;
			return 0.0001;  // without this it doesnt run every tick
		}
		AddThinkToEnt(::BhopVars.BunnyTickerEnt,"BhopThink");
	}
	
	// this is the one that saves config files
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

	// this is the one that like initializes new players that join server and stuff
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





