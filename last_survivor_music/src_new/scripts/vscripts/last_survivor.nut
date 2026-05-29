printl("start last survivor load");


::LastSurvivorVars <-
{
	customMusicOn = false,
	musicEntName = "last_survivor_music",
	musicLoopEntName = "last_survivor_music_looper",
	musicFile = "#music/last_survivor/track.wav",
	musicEntry = "Event.Meow_LastSurvivor",
	
	musicVolMax = 10,
	musicVolFadeStep = 0.5,
	musicVolFadeDuration = 1.5,  // seconds
	musicLength = null,
	musicCountdown = -1
}



::LastSurvivorFuncs <-
{
	function Load()
	{
		if (!IsSoundPrecached(::LastSurvivorVars.musicFile))
			PrecacheSound(::LastSurvivorVars.musicFile);
		::LastSurvivorFuncs.StopCustomMusic();
		::LastSurvivorFuncs.SpawnMusicEntities();
		::LastSurvivorVars.musicLength = GetSoundDuration(::LastSurvivorVars.musicFile, "");
		printl("last survivor is loaded");
	}

	function SpawnMusicEntities()
	{
		local ok = Entities.FindByName(null, ::LastSurvivorVars.musicEntName);
		if (ok != null)
		{
			ok.Kill();
		}
		local e = SpawnEntityFromTable("ambient_music", { targetname = ::LastSurvivorVars.musicEntName, message = ::LastSurvivorVars.musicEntry });
		e.ValidateScriptScope();

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

	/* function FadeOutMusic()
	{
		local iters = ceil(::LastSurvivorVars.musicVolMax / ::LastSurvivorVars.musicVolFadeStep);
		local timeStep = ::LastSurvivorVars.musicVolFadeDuration / iters;

		for (local i = 0; i < iters; i++)
		{
			EntFire(::LastSurvivorVars.musicEntName, "PlaySound", (::LastSurvivorVars.musicVolMax - (::LastSurvivorVars.musicVolFadeStep * i)).tostring(), timeStep * i);
		}
	} */
	
	function StopCustomMusic() 
	{
		EntFire(::LastSurvivorVars.musicEntName, "StopSound", null, 0, null);
		::LastSurvivorVars.musicCountdown = -1;
		::LastSurvivorVars.customMusicOn = false;
	}

	function PlayCustomMusic(override = false)
	{
		if (::LastSurvivorVars.customMusicOn && !override)
			return;
		EntFire(::LastSurvivorVars.musicEntName, "PlaySound", null, 0, null);
		::LastSurvivorVars.musicCountdown = Time() + ::LastSurvivorVars.musicLength + 1;
		::LastSurvivorVars.customMusicOn = true;
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
			//printl("health="+p.GetHealth());
			//printl("aliveDuration="+p.GetAliveDuration());
			//printl("time="+Time());
			if (!("IsDying" in p))
			{
				printl("no IsDying");
				continue;
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
		::LastSurvivorFuncs.PlayCustomMusic();
	}

	function OnTickCheckIfShouldLoopSound()
	{
		if (::LastSurvivorVars.musicCountdown <= 0)
			return;
		if (Time() < ::LastSurvivorVars.musicCountdown)
			return;
		::LastSurvivorFuncs.PlayCustomMusic(true);
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

	function OnGameEvent_mission_list(params)
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


