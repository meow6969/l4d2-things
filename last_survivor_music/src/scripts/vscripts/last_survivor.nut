//dofile("implement_l4d2_utils.nut");

printl("start last survivor load");

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
	customMusicOn = false;

	musicEntName = "last_survivor_music";
	musicStopperEntName = "last_survivor_music_stopper";

	configPath = "last_survivor_music";

	musicFile = "@#music/last_survivor/track.wav";
	musicVolMax = 10;
	musicVolFadeStep = 0.5;
	musicVolFadeDuration = 1.50;	// seconds

	musicLength = null;

	musicStopperFile = "#music/last_survivor/stopper.wav";
	musicEntry = "Event.Meow_LastSurvivor";
	
	musicDynamicDisableTimer = -1;
	musicEntKillTimer = -1;
}


::LastSurvivorVars <- ::LastSurvivorClasses.Vars();


::LastSurvivorFuncs <-
{
	function Load()
	{
		printl("last survivor Load");

		if (!IsSoundPrecached(::LastSurvivorVars.musicFile))
			PrecacheSound(::LastSurvivorVars.musicFile);
		if (!IsSoundPrecached(::LastSurvivorVars.musicStopperFile))
			PrecacheSound(::LastSurvivorVars.musicStopperFile);
		printl("precached sound");
		
		//::LastSurvivorFuncs.StopCustomMusic();
		
		::LastSurvivorFuncs.SpawnMusicEntities();
		printl("last survivor is loaded");
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
		//EntFire(entName, "StopSound", null, 0, null);
		//EntFire(entName, "PlaySound", null, 0.1, null);
		EntFire(::LastSurvivorVars.musicStopperEntName, "PlaySound", null, 0, null);
		EntFire(::LastSurvivorVars.musicEntName, "Volume", ::LastSurvivorVars.musicVolMax.tostring(), 0, null);
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
		if (!("userid" in params))
			return;
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


