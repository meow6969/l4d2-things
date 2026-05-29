//dofile("implement_l4d2_utils.nut");

printl("start last survivor load");


IncludeScript("meowlib/json.nut");
IncludeScript("meowlib/meowutils.nut");

if (!("LastSurvivorSecondLoad" in getroottable()))
{
	::LastSurvivorSecondLoad <- 1;
	return;
}


::LastSurvivorClasses <-
{

}


class ::LastSurvivorClasses.Vars 
{
	</ json_ignore = true />
	customMusicOn = false;

	</ json_ignore = true />
	musicEntName = "last_survivor_music";
	</ json_ignore = true />
	musicStopperEntName = "last_survivor_music_stopper";

	</ json_ignore = true />
	configPath = "last_survivor_music";

	musicFile = "@#music/last_survivor/track.wav";
	musicVolMax = 10;
	musicVolFadeStep = 0.5;
	musicVolFadeDuration = 1.50;	// seconds

	</ json_ignore = true />
	musicLength = null;

	</ json_ignore = true />
	musicStopperFile = "#music/last_survivor/stopper.wav";
	</ json_ignore = true />
	musicEntry = "Event.Meow_LastSurvivor";
	
	</ json_ignore = true />
	musicDynamicDisableTimer = -1;
	</ json_ignore = true />
	musicEntKillTimer = -1;
}


::LastSurvivorVars <- ::LastSurvivorClasses.Vars();


::LastSurvivorFuncs <-
{
	function Load()
	{
		printl("last survivor Load");
		::LastSurvivorFuncs.ReadConfig();
		printl("read config");

		if (!IsSoundPrecached(::LastSurvivorVars.musicFile))
			PrecacheSound(::LastSurvivorVars.musicFile);
		printl("precached sound");
		
		//::LastSurvivorFuncs.StopCustomMusic();
		
		::LastSurvivorFuncs.SpawnMusicEntities();
		printl("last survivor is loaded");
	}

	function ReadConfig()
	{
		local path = ::LastSurvivorVars.configPath+"/config.json";
		printl("file to string");
		local file = FileToString(path);
		
	
		if (!file)
		{
			printl("not file");
			::MeowUtils.Log("config not found, creating");
			::Json.Serialize.ToFile(path, ::LastSurvivorVars);
			return;
		}
		printl("is file");
		try
		{
			local newVars = ::Json.Deserialize.StringToClass(file, ::LastSurvivorClasses.Vars);
			printl("new vars");
			::LastSurvivorVars <- newVars;
		}
		catch (error)
		{
			printl("error");
			throw "last_survivor_music config parse error: "+error;
		}
		printl("getsound duration");
		/*if (GetSoundDuration(::LastSurvivorVars.musicFile, "") == 0)
		{
			printl("got sound durationOHH");
			ClientPrint(null, 5, "LAST_SURVIVOR error! no track is installed! please install a last survivor music track from the workshop");
			printl("client printed");
			return;
		} */
	}

	function SpawnMusicPlayer()
	{
		local ok = Entities.FindByName(null, ::LastSurvivorVars.musicEntName);
		if (ok != null)
		{
			ok.Kill();
		}
		local e = SpawnEntityFromTable("ambient_generic", { targetname = ::LastSurvivorVars.musicEntName, health = "0", message = ::LastSurvivorVars.musicFile, pitch = "100", pitchstart = "100", radius = "1250", spawnflags = "17" });
		e.ValidateScriptScope();
	}

	function SpawnMusicEntities()
	{
		::LastSurvivorFuncs.SpawnMusicPlayer();
		

		// music stopper
		local ok = Entities.FindByName(null, ::LastSurvivorVars.musicStopperEntName);
		if (ok != null)
			ok.Kill();
		local e = SpawnEntityFromTable("ambient_music", { targetname = ::LastSurvivorVars.musicStopperEntName, message = ::LastSurvivorVars.musicEntry });
		e.ValidateScriptScope();
		local scrScope = e.GetScriptScope();
		scrScope["MusicThink"] <- function ()
		{
			::LastSurvivorFuncs.OnTickCheckIfShouldLoopSound();
			return 0.0001;
		}
		AddThinkToEnt(e, "MusicThink");
		//
	}

	function GetFadeOutIters()
	{
		return ceil(::LastSurvivorVars.musicVolMax / ::LastSurvivorVars.musicVolFadeStep);
	}

	function FadeOutCustomMusic()
	{
		local iters = ::LastSurvivorFuncs.GetFadeOutIters();
		local timeStep = ::LastSurvivorVars.musicVolFadeDuration / iters;
		local entName = ::LastSurvivorVars.musicEntName;

		// theres a chance that these will overlap with the music being turned on, like if someone dies immediately after being defibbed
		for (local i = 0; i < iters; i++)
		{
			EntFire(entName, "Volume", (::LastSurvivorVars.musicVolMax - (::LastSurvivorVars.musicVolFadeStep * i)).tostring(), timeStep * i);
		}
		::LastSurvivorVars.musicEntKillTimer = Time() + ::LastSurvivorVars.musicVolFadeDuration;
	}

	function StopCustomMusic()
	{
		if (!::LastSurvivorVars.customMusicOn)
			return;
		printl("StopCustomMusic");
		Convars.SetValue("music_manager", 1);
		::LastSurvivorVars.musicDynamicDisableTimer = -1;  // this timer is needed because it only stops current music tracks playing like the tick after sommething plays idk?? it jujst makes it work 
		EntFire(::LastSurvivorVars.musicStopperEntName, "StopSound", null, 0, null);
		
		::LastSurvivorVars.customMusicOn = false;
		::LastSurvivorFuncs.FadeOutCustomMusic();
	}

	function StartCustomMusic()
	{
		if (::LastSurvivorVars.customMusicOn)
			return;
		printl("StartCustomMusic");
		::LastSurvivorVars.customMusicOn = true;
		
		::LastSurvivorVars.musicDynamicDisableTimer = Time() + 0.25;
		local entName = ::LastSurvivorVars.musicEntName;
		//EntFire(entName, "StopSound", null, 0, null);
		//EntFire(entName, "PlaySound", null, 0.1, null);
		EntFire(::LastSurvivorVars.musicStopperEntName, "PlaySound", null, 0, null);
		EntFire(entName, "Volume", ::LastSurvivorVars.musicVolMax.tostring(), 0, null);
	}

	function GetAllSurvivorEntities()
	{
		local r = [];
		local last = null;
		local current = 0;
		while (true)
		{
			current = Entities.FindByClassname(last, "player");
			if (current == null)
				break;
			if (current.GetZombieType() == 9)
				r.append(current);
			last = current;
		}
		return r;
	}

	function CheckIfShouldTurnOffMusic()
	{
		local players = ::LastSurvivorFuncs.GetAllSurvivorEntities();
		local alivePlayers = 0;
		foreach (p in players)
		{
			if (!("IsDying" in p))
			{
				printl("no IsDying");
			}
			if (!("IsDead" in p))
			{
				printl("no IsDead");
				continue;
			}
			if (p.IsDying() || p.IsDead())
				continue;
			alivePlayers++;
		}
		if (alivePlayers > 1 || alivePlayers == 0)
		{
			::LastSurvivorFuncs.StopCustomMusic();
			return;
		}
		::LastSurvivorFuncs.StartCustomMusic();
	}

	function OnTickCheckIfShouldLoopSound()
	{
		local t = Time();
		if (::LastSurvivorVars.musicDynamicDisableTimer > 0 && t > ::LastSurvivorVars.musicDynamicDisableTimer)
		{
			Convars.SetValue("music_manager", 0);
			::LastSurvivorVars.musicDynamicDisableTimer = -1;
		}
		if (::LastSurvivorVars.musicEntKillTimer > 0 && t > ::LastSurvivorVars.musicEntKillTimer)
		{
			::LastSurvivorFuncs.SpawnMusicPlayer();
			::LastSurvivorVars.musicEntKillTimer = -1;
		}
	}
}



::LastSurvivorEvents <-
{
	function OnGameEvent_player_death(params)
	{
		local player = GetPlayerFromUserID(params.userid);
		if (player.GetZombieType() != 9)
			return;
		::LastSurvivorFuncs.CheckIfShouldTurnOffMusic();
	}

	function OnGameEvent_survivor_rescued(params)
	{
		::LastSurvivorFuncs.CheckIfShouldTurnOffMusic();
	}

	function OnGameEvent_defibrillator_used(params)
	{
		::LastSurvivorFuncs.CheckIfShouldTurnOffMusic();
	}
	
	function OnGameEvent_player_win(params)
	{
		::LastSurvivorFuncs.StopCustomMusic();
	}

	function OnGameEvent_map_transition(params)
	{
		::LastSurvivorFuncs.StopCustomMusic();
	}

	function OnGameEvent_mission_lost(params)
	{
		::LastSurvivorFuncs.StopCustomMusic();
	}

	function OnGameEvent_finale_win(params)
	{
		::LastSurvivorFuncs.StopCustomMusic();
	}
}


::LastSurvivorFuncs.Load();


__CollectEventCallbacks(::LastSurvivorEvents, "OnGameEvent_", "GameEventCallbacks", RegisterScriptGameEventListener);


