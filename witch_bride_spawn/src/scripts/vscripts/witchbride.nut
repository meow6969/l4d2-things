
Msg("loading autognome");
::AutoGnomeEvents <-
{
	OnGameEvent_player_say = function (params)
	{
		local player = GetPlayerFromUserID(params.userid);
		local message = strip(params.text).tolower();

		if (message == "!witchbride")
		{
			witch_bride <- 
			{
				type = 11,
				pos = player.GetCenter() + Vector(200, 0, 0)
			}
			// ZSpawn({"type": 11, "pos": player.GetCenter() + Vector(10, 0, 0)});
			ZSpawn(witch_bride);
			ClientPrint(player,3,"spawned a witch bride!");
			return true;
		}
	}
}

__CollectEventCallbacks(::AutoGnomeEvents, "OnGameEvent_", "GameEventCallbacks", RegisterScriptGameEventListener);
