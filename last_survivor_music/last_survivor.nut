//dofile("implement_l4d2_utils.nut");

printl("start last survivor load");


IncludeScript("meowlib/json.nut");
IncludeScript("meowlib/meowutils.nut");



::LastSurvivorClasses <-
{

}


class ::LastSurvivorClasses.Vars 
{
	customMusicOn = false;

	musicEntName = "last_survivor_music";
	musicLoopEntName = "last_survivor_music_looper";
	musicStopperEntName = "last_survivor_music_stopper";

	configPath = "last_survivor_music";

	musicFile = "@#music/last_survivor/track.wav";

	musicStopperFile = "#music/last_survivor/stopper.wav";
	musicEntry = "Event.Meow_LastSurvivor";
	
	musicDynamicDisableTimer = -1;
}


class ::LastSurvivorClasses.MusicVars
{
	musicVolMax = 10;
	musicVolFadeStep = 0.5;
	musicVolFadeDuration = 1.50;	// seconds
}


::LastSurvivorVars <- ::LastSurvivorClasses.Vars();
::LastSurvivorMusicVars <- ::LastSurvivorClasses.MusicVars();



::LastSurvivorFuncs <-
{
	function Load()
	{
		::LastSurvivorFuncs.ReadConfig();

		if (!IsSoundPrecached(::LastSurvivorVars.musicFile))
			PrecacheSound(::LastSurvivorVars.musicFile);
		
		::LastSurvivorFuncs.StopCustomMusic();
		::LastSurvivorFuncs.SpawnMusicEntities();
		printl("last survivor is loaded");
	}

	function ReadConfig()
	{
		local path = ::LastSurvivorVars.configPath+"/config.json";
		local file = FileToString(path);
		
		if (!file)
		{
			::MeowUtils.Log("config not found, creating");
			::Json.Serialize.ToFile(path, ::LastSurvivorMusicVars);
			return;
		}
		try
		{
			local newVars = ::Json.Deserialize.StringToClass(file, ::LastSurvivorClasses.MusicVars);
			::LastSurvivorMusicVars <- newVars;
		}
		catch (error)
		{
			throw "last_survivor_music config parse error: "+error;
		}
	}

	function SpawnMusicEntities()
	{
		local ok = Entities.FindByName(null, ::LastSurvivorVars.musicEntName);
		if (ok != null)
		{
			ok.Kill();
		}
		local e = SpawnEntityFromTable("ambient_generic", { targetname = ::LastSurvivorVars.musicEntName, health = "0", message = ::LastSurvivorVars.musicFile, pitch = "100", pitchstart = "100", radius = "1250", spawnflags = "17" });
		e.ValidateScriptScope();

		// music stopper
		ok = Entities.FindByName(null, ::LastSurvivorVars.musicStopperEntName);
		if (ok != null)
			ok.Kill();
		e = SpawnEntityFromTable("ambient_music", { targetname = ::LastSurvivorVars.musicStopperEntName, message = ::LastSurvivorVars.musicEntry });
		e.ValidateScriptScope();	
		//
		
		ok = Entities.FindByName(null, ::LastSurvivorVars.musicLoopEntName);
		if (ok != null)
			ok.Kill();
		e = SpawnEntityFromTable("info_target", { targetname = ::LastSurvivorVars.musicLoopEntName });
		e.ValidateScriptScope();
		local scrScope = e.GetScriptScope();
		scrScope["MusicThink"] <- function ()
		{
			::LastSurvivorFuncs.OnTickCheckIfShouldLoopSound();
			return 0.0001;
		}
		AddThinkToEnt(e, "MusicThink");

		//::LastSurvivorVars.musicEnt = e;
	}

	function FadeOutCustomMusic()
	{
		local iters = ceil(::LastSurvivorMusicVars.musicVolMax / ::LastSurvivorMusicVars.musicVolFadeStep);
		local timeStep = ::LastSurvivorMusicVars.musicVolFadeDuration / iters;

		for (local i = 0; i < iters; i++)
		{
			EntFire(::LastSurvivorVars.musicEntName, "Volume", (::LastSurvivorMusicVars.musicVolMax - (::LastSurvivorMusicVars.musicVolFadeStep * i)).tostring(), timeStep * i);
		}
	}

	function StopCustomMusic()
	{
		if (!::LastSurvivorVars.customMusicOn)
			return;
		printl("StopCustomMusic");
		Convars.SetValue("music_manager", 1);
		::LastSurvivorVars.musicDynamicDisableTimer = -1;
		EntFire(::LastSurvivorVars.musicStopperEntName, "StopSound", null, 0, null);
		::LastSurvivorVars.customMusicOn = false;
		// EntFire(::LastSurvivorVars.musicEntName, "Volume", "0", 0, null);
		::LastSurvivorFuncs.FadeOutCustomMusic();
	}

	function StartNormalMusicTrack(stopper=false)
	{
		if (stopper)
		{
			EntFire(::LastSurvivorVars.musicStopperEntName, "PlaySound", null, 0, null);
			
			::LastSurvivorVars.musicDynamicDisableTimer = Time() + 0.25;
		}
		EntFire(::LastSurvivorVars.musicEntName, "PlaySound", null, 0, null);
		EntFire(::LastSurvivorVars.musicEntName, "Volume", ::LastSurvivorMusicVars.musicVolMax.tostring(), 0, null);
	}

	function StartCustomMusic(override=false)
	{
		if (::LastSurvivorVars.customMusicOn)
		{	
			if (!override)
				return;
		}
		printl("StartCustomMusic");
		::LastSurvivorVars.customMusicOn = true;
		::LastSurvivorFuncs.StartNormalMusicTrack(true);
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
			printl("health="+p.GetHealth());
			printl("aliveDuration="+p.GetAliveDuration());
			printl("time="+Time());
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
		::LastSurvivorFuncs.TurnOnMusic();
	}

	function OnGameEvent_map_transition(params)
	{
		::LastSurvivorFuncs.TurnOnMusic();
	}

	function OnGameEvent_mission_list(params)
	{
		::LastSurvivorFuncs.TurnOnMusic();
	}

	function OnGameEvent_finale_win(params)
	{
		::LastSurvivorFuncs.TurnOnMusic();
	}
	
}


::LastSurvivorFuncs.Load();


__CollectEventCallbacks(::LastSurvivorEvents, "OnGameEvent_", "GameEventCallbacks", RegisterScriptGameEventListener);


