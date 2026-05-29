//dofile("implement_l4d2_utils.nut");

printl("start last survivor load");


IncludeScript("meowlib/json.nut");
IncludeScript("meowlib/meowutils.nut");


if (!("LastSurvivorTracks" in getroottable()))
{
	::LastSurvivorTracks <- [];
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
	musicLoopTrackEntName = "last_survivor_music_looper";
	</ json_ignore = true />
	musicStopperEntName = "last_survivor_music_stopper";

	</ json_ignore = true />
	configPath = "last_survivor_music";

	// musicFile = "@#music/last_survivor/track.wav";
	musicFile = null;
	musicVolMax = 10;
	musicVolFadeStep = 0.5;
	musicVolFadeDuration = 1.50;	// seconds

	</ json_ignore = true />
	musicLength = null;
	</ json_ignore = true />
	musicLoopLength = null;

	</ json_ignore = true />
	musicLoopFile = null;

	</ json_ignore = true />
	musicStopperFile = "#music/last_survivor/stopper.wav";
	</ json_ignore = true />
	musicEntry = "Event.Meow_LastSurvivor";
	
	</ json_ignore = true />
	musicCountdown = -1;
	</ json_ignore = true />
	musicDynamicDisableTimer = -1;
	</ json_ignore = true />
	musicCurrentlyLooping = false;

	</ json_ignore = true />
	CommandManager = null;
}


::LastSurvivorVars <- ::LastSurvivorClasses.Vars();


::LastSurvivorFuncs <-
{
	function Load()
	{
		::LastSurvivorFuncs.ReadConfig();

		if (::LastSurvivorVars.musicFile == null)
		{
			if (::LastSurvivorTracks.len() == 0)
			{
				ClientPrint(null, 5, "LAST_SURVIVOR_MUSIC ERROR!! no tracks detected! mod will not work");
				ClientPrint(null, 5, "please download a last survivor music track from the workshop");
				return;
			}
			::LastSurvivorVars.musicFile = ::LastSurvivorTracks[0];
			ClientPrint(null, 5, "LAST_SURVIVOR: first startup, setting last survivor track to: \x04\""+::LastSurvivorVars.musicFile+"\"\x00");
		}

		

		::LastSurvivorFuncs.LoopTrackSetup();	

		if (!IsSoundPrecached(::LastSurvivorVars.musicFile))
			PrecacheSound(::LastSurvivorVars.musicFile);
		
		//::LastSurvivorFuncs.StopCustomMusic();
		::LastSurvivorFuncs.SetCommandManager();
		
		::LastSurvivorFuncs.SpawnMusicEntities();
		printl("last survivor is loaded");
	}

	function IsPlayerAdmin(steamid)
	{
		local host = GetListenServerHost();
		if (host == null || !host.IsValid())
			return false;
		if (steamid != host.GetNetworkIDString())
		{
			return false;
		}
		return true;
	}

	function SetCommandManager()
	{
		if (::LastSurvivorVars.CommandManager != null) return;
		::LastSurvivorVars.CommandManager = ::Commands.CommandManager(::LastSurvivorCmds, "!lsm", ::LastSurvivorFuncs.IsPlayerAdmin, ::Commands.HelpCommand);
	}

	function ReadConfig()
	{
		local path = ::LastSurvivorVars.configPath+"/config.json";
		local file = FileToString(path);
		
		if (!file)
		{
			::MeowUtils.Log("config not found, creating");
			::Json.Serialize.ToFile(path, ::LastSurvivorVars);
			return;
		}
		try
		{
			local newVars = ::Json.Deserialize.StringToClass(file, ::LastSurvivorClasses.Vars);
			::LastSurvivorVars <- newVars;
		}
		catch (error)
		{
			throw "last_survivor_music config parse error: "+error;
		}

		if (GetSoundDuration(::LastSurvivorVars.musicFile, "") == 0)
		{
			::LastSurvivorVars.musicFile = null;
			::MeowUtils.Log("music file loaded in config is not valid, resetting to null");
			::Json.Serialize.ToFile(path, ::LastSurvivorVars);
		}
	}

	function LoopTrackSetup()
	{
		local baseMusicPath = ::LastSurvivorVars.musicFile.slice(0, -3);
		printl("baseMusicPath="+baseMusicPath);
		local loopMusicPath = baseMusicPath+"loop.wav";
		local loopMusicLength = GetSoundDuration(loopMusicPath, "");
		if (loopMusicLength == 0)
		{
			::MeowUtils.Log("loop track not found, going to be looping the default track");
		}
		else
		{
			::LastSurvivorVars.musicLoopFile = loopMusicPath;
			::LastSurvivorVars.musicLoopLength = loopMusicLength;
			::MeowUtils.Log("musicLoopLength="+::LastSurvivorVars.musicLoopLength);
		}
		::LastSurvivorVars.musicLength = GetSoundDuration(::LastSurvivorVars.musicFile, "");
		::MeowUtils.Log("musicLength="+::LastSurvivorVars.musicLength);
	}

	function WriteConfig()
	{
		local path = ::LastSurvivorVars.configPath+"/config.json";
		::Json.Serialize.ToFile(path, ::LastSurvivorVars);
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
		local scrScope = e.GetScriptScope();
		scrScope["MusicThink"] <- function ()
		{
			::LastSurvivorFuncs.OnTickCheckIfShouldLoopSound();
			return 0.0001;
		}
		AddThinkToEnt(e, "MusicThink");

		// music stopper
		ok = Entities.FindByName(null, ::LastSurvivorVars.musicStopperEntName);
		if (ok != null)
			ok.Kill();
		e = SpawnEntityFromTable("ambient_music", { targetname = ::LastSurvivorVars.musicStopperEntName, message = ::LastSurvivorVars.musicEntry });
		e.ValidateScriptScope();
		//
	
		ok = Entities.FindByName(null, ::LastSurvivorVars.musicLoopTrackEntName);
		if (ok != null)
			ok.Kill();
	
		if (::LastSurvivorFuncs.IsLoopTrackEnabled())
		{
			e = SpawnEntityFromTable("ambient_generic", { targetname = ::LastSurvivorVars.musicLoopTrackEntName, message = ::LastSurvivorVars.musicLoopFile, pitch = "100", pitchstart = "100", radius = "1250", spawnflags = "17" });
			e.ValidateScriptScope();
		}

		//::LastSurvivorVars.musicEnt = e;
	}

	function IsLoopTrackEnabled()
	{
		return ::LastSurvivorVars.musicLoopFile != null;
	}


	// need to adapt this to looping tracks  -- i think i did ??
	function FadeOutCustomMusic()
	{
		local iters = ceil(::LastSurvivorVars.musicVolMax / ::LastSurvivorVars.musicVolFadeStep);
		local timeStep = ::LastSurvivorVars.musicVolFadeDuration / iters;
		local entName = ::LastSurvivorVars.musicEntName;
		if (::LastSurvivorVars.musicCurrentlyLooping)
			entName = ::LastSurvivorVars.musicLoopTrackEntName;

		for (local i = 0; i < iters; i++)
		{
			EntFire(entName, "Volume", (::LastSurvivorVars.musicVolMax - (::LastSurvivorVars.musicVolFadeStep * i)).tostring(), timeStep * i);
		}
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
		// EntFire(::LastSurvivorVars.musicEntName, "Volume", "0", 0, null);
		::LastSurvivorVars.musicCountdown = -1;
		::LastSurvivorFuncs.FadeOutCustomMusic();
		::LastSurvivorVars.musicCurrentlyLooping = false;
	}

	function StartNormalMusicTrack(stopper=false)
	{
		if (stopper)
		{
			EntFire(::LastSurvivorVars.musicStopperEntName, "PlaySound", null, 0, null);
			
			::LastSurvivorVars.musicDynamicDisableTimer = Time() + 0.25;
		}
		local entName = null;
		if (::LastSurvivorVars.musicCurrentlyLooping)
		{
			entName = ::LastSurvivorVars.musicLoopTrackEntName;
			::LastSurvivorVars.musicCountdown = Time() + ::LastSurvivorVars.musicLoopLength;
		}
		else
		{
			entName = ::LastSurvivorVars.musicEntName;
			::LastSurvivorVars.musicCountdown = Time() + ::LastSurvivorVars.musicLength;
		}
		EntFire(entName, "PlaySound", null, 0, null);
		EntFire(entName, "Volume", ::LastSurvivorVars.musicVolMax.tostring(), 0, null);
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
		if (!override)  // this is the initial start
		{
			::LastSurvivorFuncs.StartNormalMusicTrack(true);
			return;
		}
		
		EntFire(::LastSurvivorVars.musicEntName, "StopSound", null, 0, null);
		EntFire(::LastSurvivorVars.musicLoopTrackEntName, "StopSound", null, 0, null);
		::LastSurvivorFuncs.StartNormalMusicTrack(false);
	
		//if (!::LastSurvivorFuncs.IsLoopTrackEnabled())
		//{
			//EntFire(::LastSurvivorVars.musicEntName, "StopSound", null, 0, null);
			
			//::LastSurvivorVars.musicCountdown = Time() + ::LastSurvivorMusicVars.musicLength;
		//}
		// Convars.SetValue("music_manager", 0);
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

	function GetTrackName(t, removeExtension)
	{
		printl("t="+t);
		t = ::MeowUtils.StringReplace(t, "\\", "/");
		t = split(t, "/");
		printl(t[0]);
		t = t[t.len() - 1]
		
		if (removeExtension)
		{
			t = split(t, ".");
			local newT = "";
			foreach (a in t.slice(0, -1))
			{
				newT = newT+a+".";
			}
			// remove trailinng .
			t = newT.slice(0, -1);
		}
		return t;
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
		if (::LastSurvivorVars.musicCountdown > 0 && t > ::LastSurvivorVars.musicCountdown)
		{
			::MeowUtils.Log("looping track");
			if (::LastSurvivorFuncs.IsLoopTrackEnabled())
			{
				::MeowUtils.Log("music currently looping with loop track");
				::LastSurvivorVars.musicCurrentlyLooping = true;
			}
			::LastSurvivorFuncs.StartCustomMusic(true);
		}
		if (::LastSurvivorVars.musicDynamicDisableTimer > 0 && t > ::LastSurvivorVars.musicDynamicDisableTimer)
		{
			Convars.SetValue("music_manager", 0);
			::LastSurvivorVars.musicDynamicDisableTimer = -1;
		}
	}
}



::LastSurvivorCmds <-
{

}


class ::LastSurvivorCmds.Track extends ::Commands.Command
{
	aliases = ["track", "t"];
	brief = "change the track that is used";
	privileged = true;
	cooldown = 5;

	</ meowCmd_param_track = "the name of the track you want to set it to" />
	function Callback(ctx, track)
	{
		track = ::LastSurvivorFuncs.GetTrackName(track, false);
		printl("track="+track);
		local musicFile = "@#music/last_survivor/"+track+".wav";
		if (GetSoundDuration(musicFile, "") == 0)
		{
			ClientPrint(ctx.player, 5, "error! music file \""+musicFile+"\" couldnt be found!");
			return;
		}
		::LastSurvivorVars.musicFile = musicFile;
		ClientPrint(player, 5, "restarting the script and setting the music file to \""+musicFile+"\"");
		::LastSurvivorFuncs.WriteConfig();
		::LastSurvivorFuncs.Load();
	}
}

class ::LastSurvivorCmds.List extends ::Commands.Command
{
	aliases = ["list", "l"];
	brief = "list the detected tracks";
	privileged = true;
	cooldown = 0;

	function Callback(ctx)
	{
		if (::LastSurvivorTracks == null || ::LastSurvivorTracks.len() == 0)
		{
			ClientPrint(ctx.player, 5, "no tracks are installed! install some on the workshop");
			return;
		}
		foreach (track in ::LastSurvivorTracks)
		{
			track = ::LastSurvivorFuncs.GetTrackName(track, false);
			ClientPrint(ctx.player, 5, "\x01Track: \x04"+track+"\x01");
		}
	}
}

class ::LastSurvivorCmds.CurrentTrack extends ::Commands.Command
{
	aliases = ["current", "c"];
	brief = "display the current track";
	privileged = false;
	cooldown = 0;

	function Callback(ctx)
	{
		if (::LastSurvivorVars.musicFile == null)
		{
			ClientPrint(ctx.player, 5, "no tracks are enabled, do you not have any tracks installed/enabled?");
			return;
		}
		ClientPrint(ctx.player, 5, ::LastSurvivorVars.musicFile);
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

	function OnGameEvent_player_say(params)
	{
		local player = GetPlayerFromUserID(params.userid);
		::LastSurvivorVars.CommandManager.Invoke(player, params.text);
	}	
}


::LastSurvivorFuncs.Load();


__CollectEventCallbacks(::LastSurvivorEvents, "OnGameEvent_", "GameEventCallbacks", RegisterScriptGameEventListener);


