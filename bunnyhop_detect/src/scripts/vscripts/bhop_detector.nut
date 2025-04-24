printl("<mt2> Load bunny-hop detect script 69  !!! 2.0")

// dofile("json.nut");
IncludeScript("json.nut");

::BhopVars <-
{
	ConfigPath			= "simple_bunnyhop_detect/bhop_detect_condition.json",
	BunnyCounter			= array(32,0),	//	dict[int, jumps<int>]
	LastBunnyTopSpeed		= array(32,0),	//	dict[int, velocity<float>]
	BunnyGroundTime			= array(32,0),	//	dict[int, ticks<int>]
	BunnyDetectCount		= 3,
	BunnyTickLeniency		= 3,
	DefaultPlayerSettings		= {"IgnoreBhop": false, "IgnorePerfectJumps": false}
	PlayerSettings			= {},		//	dict[steamID<str>, PlayerSettings[dict]]
	BunnyTickerEnt			= null,
	JumpingList			= {}, 		//	dict[str, entity<player>]
							//	this maps entity indexes to player objects
	build_num=12
}

::BhopFunc <-
{
	
	loadFile = function()
	{
		printl("Bunnyhop detect condition (build num "+::BhopVars.build_num+" :  successfully reload !! yay!");
		local path = ::BhopVars.ConfigPath;
		local file = FileToString(path);

		if(!file)
		{
			::BhopFunc.WriteConfig(path);
			return;
		}

		try
		{
			local cfg = ::Json.Deserialize.String(file);

			printl("Bunnyhop detect config: "+::Json.Serialize.ToString(cfg));
			if ("BunnyDetectCount" in cfg)
			{
				::BhopVars.BunnyDetectCount = cfg["BunnyDetectCount"];
			}
			if ("BunnyTickLeniency" in cfg)
			{
				::BhopVars.BunnyTickLeniency = cfg["BunnyTickLeniency"];
			}
			if ("DefaultPlayerSettings" in cfg)
			{
				::BhopVars.DefaultPlayerSettings = cfg["DefaultPlayerSettings"];
			}
			if ("PlayerSettings" in cfg)
			{
				::BhopVars.PlayerSettings = cfg["PlayerSettings"];
			}
		}
		catch(error)
		{
			printl("Bunnyhop detect config parse error: "+error);
		}
		printl("loaded bunny hop config:");
		printl("  BunnyDetectCount="+::BhopVars.BunnyDetectCount);
		printl("  BunnyTickLeniency="+::BhopVars.BunnyTickLeniency);
		printl("  DefaultPlayerSettings="+::Json.Utils.PrintThing(::BhopVars.DefaultPlayerSettings, true));
		printl("  PlayerSettings="+::Json.Utils.PrintThing(::BhopVars.PlayerSettings, true));
	}

	WriteConfig = function (path)
	{
		local wTable = {
			"BunnyDetectCount":		::BhopVars.BunnyDetectCount, 
			"BunnyTickLeniency":		::BhopVars.BunnyTickLeniency, 
			"DefaultPlayerSettings":	::BhopVars.DefaultPlayerSettings,
			"PlayerSettings":		::BhopVars.PlayerSettings
		}
		// printl(typeof wTable);
		// printl("wTable.keys()="+wTable.keys());
		::Json.Serialize.ToFile(path, wTable);
	}

	IsAlive = function(player)
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
	
	SendToAllNonIgnoredPlayers = function (message)
	{
		printl("SendToAllNon");
		local player = null;
		while (player = Entities.FindByClassname(player, "player"))
		{
			if (IsPlayerABot(player))
			{
				continue;
			}
			if (IsPlayerIgnored(player))
			{
				printl(player.GetPlayerName()+" was ignored SendToALlNon");
				continue;
			}
			ClientPrint(player,5,message);
		}
	}

	checkBhop = function (player)
	{
		if (!this.IsAlive(player) || ::BhopFunc.IsPlayerIgnored(player))
		{
			printl("checkBhop(): ignoring player");
			return false;
		}
		
		local vars = ::BhopVars;
		local pName = player.GetPlayerName();
		local index = player.GetEntityIndex();
		local LBT = vars.LastBunnyTopSpeed;
		local BGT = vars.BunnyGroundTime;
		local speed = ::BhopFunc.GetPlayerSpeed(player);
		
		if(speed > LBT[index])
		{
			LBT[index] = speed;
		}
		if(BGT[index] >= vars.BunnyTickLeniency)
		{
			local BC = vars.BunnyCounter;
			local count = BC[index];
			local topspeed = floor(LBT[index]+0.5); // does +0.5 to always round up i think
			if(count >= vars.BunnyDetectCount)
			{
				::BhopFunc.SendToAllNonIgnoredPlayers("\x04"+pName+"\x01 got \x05"+count+"\x01 bunnyhop"+((count > 1)?"s":"")+ " in a row (top speed: \x05"+topspeed+"\x01)");
				// ClientPrint(null,5,"\x04"+pName+"\x01 got \x05"+count+"\x01 bunnyhop"+((count > 1)?"s":"")+ " in a row (top speed: \x05"+topspeed+"\x01)");
			}
			BC[index] = 0;
			LBT[index] = 0;

			BGT[index]=0;
			printl("checkBhop(): failure");
			return false;
		}

		return true;
	}

	// this function stole from vslib
	IsEntityOnGroundVSLib = function(entity) 
	{
		local flags = NetProps.GetPropInt(entity, "m_fFlags");
		return flags == ( flags | 1 );
	}

	GetPlayerSpeed = function (player) 
	{
		return player.GetVelocity().Length();
	}

	GetPlayerSteamID = function (player)
	{
		return NetProps.GetPropString(player, "m_szNetworkIDString");
	}

	IsPlayerIgnored = function (player)
	{
		local playerSID = ::BhopFunc.GetPlayerSteamID(player);
		// printl("IsPlayerIgnored(): "+::BhopVars.PlayerSettings[playerSID]["IgnoreBhop"]);
		return ::BhopVars.PlayerSettings[playerSID]["IgnoreBhop"];
	}

	IsPlayerPerfectJumpIgnored = function (player)
	{
		local playerSID = ::BhopFunc.GetPlayerSteamID(player);
		return ::BhopVars.PlayerSettings[playerSID]["IgnorePerfectJumps"];
	}


	IgnorePlayer = function (player, ignore=true)
	{
		local pIgnored = ::BhopFunc.IsPlayerIgnored(player);
		local pSID = ::BhopFunc.GetPlayerSteamID(player);
		if (pIgnored)
		{
			if (ignore)
			{
				return false;
			}
			::BhopVars.PlayerSettings[pSID]["IgnoreBhop"] = false;
		}
		else
		{
			if (!ignore)
			{
				return false;
			}
			::BhopVars.PlayerSettings[pSID]["IgnoreBhop"] = true;
		}
		
		::BhopFunc.WriteConfig(::BhopVars.ConfigPath);
		return true;
	}

	PerfectJumpIgnorePlayer = function (player, ignore=true)
	{
		local pIgnored = ::BhopFunc.IsPlayerIgnored(player);
		local pSID = ::BhopFunc.GetPlayerSteamID(player);
		if (pIgnored)
		{
			if (ignore)
			{
				return false;
			}
			::BhopVars.PlayerSettings[pSID]["IgnorePerfectJumps"] = false;
		}
		else
		{
			if (!ignore)
			{
				return false;
			}
			::BhopVars.PlayerSettings[pSID]["IgnorePerfectJumps"] = true;
		}
		
		::BhopFunc.WriteConfig(::BhopVars.ConfigPath);
		return true;
	}

	EnsurePlayerSettings = function (player)
	{
		local pSID = ::BhopFunc.GetPlayerSteamID(player);
		if (IsPlayerABot(player))
		{
			return false;
		}
		/* if (["BOT", ""].find(pSID) != null)
		{
			return false;
		} */
		if (!(pSID in ::BhopVars.PlayerSettings))
		{
			// printl("setting playersettings[PSID]");
			::BhopVars.PlayerSettings[pSID] <- {};
		}
		foreach (tableKey, keyValue in ::BhopVars.DefaultPlayerSettings)
		{
			if (!(tableKey in ::BhopVars.PlayerSettings[pSID]))
			{
				::BhopVars.PlayerSettings[pSID][tableKey] <- keyValue;
			}
		}
		::BhopFunc.WriteConfig(::BhopVars.ConfigPath);
		return true;
	}

	BhopTick = function () 
	{
		local markedForDeletion = [];  // list[index<str>]
		foreach (indexName,player in ::BhopVars.JumpingList)
		{
			if (::BhopFunc.IsPlayerIgnored(player))
			{
				printl("BhopTick(): ignoring player");
				markedForDeletion.append(indexName);
				continue;
			}

			local index = player.GetEntityIndex();
			if (!(::BhopFunc.IsEntityOnGroundVSLib(player))) 
			{
				::BhopVars.BunnyGroundTime[index] = 0;
				continue;
			}
			
			::BhopVars.BunnyGroundTime[index]++;

			if(::BhopFunc.checkBhop(player) == false)
			{
				printl(player.GetPlayerName()+" failed bhop");
				markedForDeletion.append(indexName);
			}
		}
		foreach (arrayIndex, jumpIndex in markedForDeletion) 
		{
			delete ::BhopVars.JumpingList[jumpIndex];
		}
	}

	BhopThink = function () 
	{
		::BhopFunc.BhopTick();
	}

	// we do this as a workaround bcs there is no on_tick() game event
	AddBhopTicker = function()
	{
		local tEnt = null;
		::BhopVars.BunnyTickerEnt <- Entities.FindByName(tEnt, "bhopTicker");
		if (tEnt == null) 
		{
			::BhopVars.BunnyTickerEnt <- SpawnEntityFromTable("info_target", {targetname = "bhopTicker"});
		}
		else
		{
			::BhopVars.BunnyTickerEnt <- tEnt;
		}		

		::BhopVars.BunnyTickerEnt.ValidateScriptScope();
		local scrScope = ::BhopVars.BunnyTickerEnt.GetScriptScope();
		scrScope["BhopThink"] <- function () {
			::BhopFunc.BhopTick();
		}
		AddThinkToEnt(::BhopVars.BunnyTickerEnt,"BhopThink");
	}
}

::BhopEvent <-
{
	OnGameEvent_player_jump = function (params)
	{
		local vars = ::BhopVars;
		
		local player = GetPlayerFromUserID(params.userid);
		if (IsPlayerABot(player))
		{
			// printl("player a bot");
			return;
		}
		if (!::BhopFunc.EnsurePlayerSettings(player))
		{
			printl("not ensured");
			return;
		}

		if (::BhopFunc.IsPlayerIgnored(player))
		{
			printl("OnGameEvent_player_jump(): ignoring player: "+player.GetPlayerName());
			return;
		}

		local index = player.GetEntityIndex();
		local speed = ::BhopFunc.GetPlayerSpeed(player);
		local pName = player.GetPlayerName();
		local indexName = "bhop"+index;
		
		if(!(indexName in vars.JumpingList))
		{
			vars.BunnyGroundTime[index] = 0;
			vars.BunnyCounter[index] = 0;
			vars.LastBunnyTopSpeed[index] = 0;
			vars.JumpingList[indexName] <- player;
		}
		else 
		{
			local BC = vars.BunnyCounter;
			if (vars.BunnyGroundTime[index] == 1 && !::BhopFunc.IsPlayerPerfectJumpIgnored(player))
			{
				ClientPrint(player,3,"\x04perfect jump! speed=\x05"+speed+"\x01");
			}
			vars.BunnyGroundTime[index] = 0;
			BC[index]++;
			if(speed > vars.LastBunnyTopSpeed[index])
			{
				vars.LastBunnyTopSpeed[index] = speed;
			}
		}
	}
	
	// this is so the player steam id is always initialized
	OnGameEvent_player_spawn = function (params)
	{
		local player = GetPlayerFromUserID(params.userid);
		if (player.GetTeam() == 0)
		{
			SendGlobalGameEvent("player_activate", {userid = params.userid});
		}
		::BhopFunc.EnsurePlayerSettings(player);
		::BhopFunc.WriteConfig(::BhopVars.ConfigPath);
	}

	OnGameEvent_player_say = function (params)
	{
		local player = GetPlayerFromUserID(params.userid);
		local message = strip(params.text).tolower();

		if (message == "!bhop help" || message == "!bhop")
		{
			ClientPrint(player,3,"bhop detector help command");
			ClientPrint(player,3,"  \"!bhop\"  :  show this text");
			ClientPrint(player,3,"  \"!bhop help\"  :  show this text");
			ClientPrint(player,3,"  \"!bhop rules\"  : show the current bhop detection config");
			ClientPrint(player,3,"  \"!bhop toggle  :  toggle bhop announcing for you");
			ClientPrint(player,3,"  \"!bhop toggle perfectjump\"  :  toggle perfect jump announcing for you");
			return true;
		}
		if (message == "!bhop rules")
		{
			ClientPrint(player,3,"current bhop ruleset:");
			ClientPrint(player,3,"  tick leniency  :  "+::BhopVars.BunnyTickLeniency);
			ClientPrint(player,3,"  detection count  :  "+::BhopVars.BunnyDetectCount);
			return true;
		}
		if (message == "!bhop toggle")
		{
			if (::BhopFunc.IsPlayerIgnored(player))
			{
				::BhopFunc.IgnorePlayer(player, false);
				ClientPrint(player,3,"you are no longer ignored by the bhop detector!");
				return true;
			}
			::BhopFunc.IgnorePlayer(player);
			ClientPrint(player,3,"you will now be ignored by the bhop detector!");
			return true;
		}
		if (message == "!bhop toggle perfectjump")
		{
			if (::BhopFunc.IsPlayerPerfectJumpIgnored(player))
			{
				::BhopFunc.PerfectJumpIgnorePlayer(player, false);
				ClientPrint(player,3,"you will now be notified of your perfect jumps!");
				return true;
			}
			::BhopFunc.PerfectJumpIgnorePlayer(player);
			ClientPrint(player,3,"you will no longer be notified of your perfect jumps!");
			return true;
		}
	}
}

/* function InterceptChat(message, player)
{
	printl("InterceptChat(): message="+message)
	if (message == "!ignorebhop")
	{
		if (::BhopFunc.IgnorePlayer(player))
		{
			ClientPrint(player,3,"you will now be ignored by the bhop detector!");
			return true;
		}
		ClientPrint(player,3,"error: you are already ignored by the bhop detector!");
		return true;
	}
	if (message == "!seebhop")
	{
		if (::BhopFunc.IgnorePlayer(player, false))
		{
			ClientPrint(player,3,"you are no longer ignored by the bhop detector!");
			return true;
		}
		ClientPrint(player,3,"error: you are not ignored by the bhop detector!");
		return true;
	}
	if (message == "!togglebhop")
	{
		if (::BhopFunc.IsPlayerIgnored(player))
		{
			::BhopFunc.IgnorePlayer(player, false);
			ClientPrint(player,3,"you are no longer ignored by the bhop detector!");
			return true;
		}
		::BhopFunc.IgnorePlayer(player);
		ClientPrint(player,3,"you will now be ignored by the bhop detector!");
		return true;
	}
} */

::BhopFunc.loadFile();
::BhopFunc.AddBhopTicker();

__CollectEventCallbacks(::BhopEvent, "OnGameEvent_", "GameEventCallbacks", RegisterScriptGameEventListener);
