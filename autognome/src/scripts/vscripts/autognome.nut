
Msg("loading autognome");
::AutoGnomeEvents <-
{
	OnGameEvent_player_say = function (params)
	{
		local player = GetPlayerFromUserID(params.userid);
		local message = strip(params.text).tolower();

		if (message == "!gnome")
		{
			player.GiveItem("gnome");
			ClientPrint(player,3,"gave you a gnome!");
			return true;
		}
	}
}

__CollectEventCallbacks(::AutoGnomeEvents, "OnGameEvent_", "GameEventCallbacks", RegisterScriptGameEventListener);
