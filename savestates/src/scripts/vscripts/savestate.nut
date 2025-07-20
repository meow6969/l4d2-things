
Msg("loading save states...\n");

::SaveStatePos <- class
{
	eyePos    = null  // Vector
	angle     = null  // QAngle
	originPos = null  // Vector

	constructor(player)
	{
		this.eyePos    = player.EyePosition();
		// this.angle     = player.GetAngles();
		this.angle = player.EyeAngles();
		this.originPos = player.GetOrigin();
	}

	function SetPlayer(player)
	{
		// player.SetAngles(this.angle);
		player.SnapEyeAngles(this.angle);
		player.SetOrigin(this.originPos);
	}

	function _tostring() return ::SaveStateFuncs.VecToStr(this.eyePos);
}

::SaveStateVars <-
{
	PlayerPositions = {}  // dict[SaveStatePos]
}

::SaveStateFuncs <-
{
	VecToStr = function (vector)
	{
		return vector.tostring().slice(10);
	}
}

::SaveStateEvents <-
{
	OnGameEvent_player_say = function (params)
	{
		local playerId = params.userid;
		local player = GetPlayerFromUserID(playerId);
		local message = strip(params.text).tolower();

		if (message == "!save")
		{
			local save_pos = ::SaveStatePos(player);
			::SaveStateVars.PlayerPositions[playerId] <- save_pos
			ClientPrint(player,3,"\x03position "+save_pos+" saved!");
			return true;
		}
		if (message == "!load")
		{
			if (!(playerId in ::SaveStateVars.PlayerPositions)) 
			{
				ClientPrint(player, 3, "\x04position is not saved!");
				return false;
			}
			::SaveStateVars.PlayerPositions[playerId].SetPlayer(player);
			return false;
		}
		if (message == "!invisiblewalls" || message == "!invis")
		{
			if (Convars.GetStr("r_drawclipbrushes") != "2")
			{
				Convars.SetValue("r_drawclipbrushes", "2");
				return true;
			}
			Convars.SetValue("r_drawclipbrushes", "0");
			return true;
		}
		if (message == "!noclip")
		{
			SendToConsole("noclip");
			return true;
		}
		if (message == "!director_stop")
		{
			SendToServerConsole("director_stop");
			return true;
		}
		if (message == "!director_start")
		{
			SendToServerConsole("director_start");
			return true;
		}
		if (message == "!cheats")
		{
			Convars.SetValue("sv_cheats", "1");
			return true;
		}
	}
}

__CollectEventCallbacks(::SaveStateEvents, "OnGameEvent_", "GameEventCallbacks", RegisterScriptGameEventListener);
