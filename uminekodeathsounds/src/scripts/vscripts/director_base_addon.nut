

if (!IsSoundPrecached("meow/death.wav"))
	PrecacheSound("meow/death.wav");

SpawnEntityFromTable("info_target", { targetname = "UminekoSound" });


UminekoEvents <- 
{
	function OnGameEvent_player_death(params)
	{
		if (!("userid" in params)) 
		{
			printl("UMINEKO: no userid!");
			return;
		}
		if (params.userid == null)
		{	
			printl("UMINEKO: userid is null!");
			return;
		}
		local p = GetPlayerFromUserID(params.userid);
		if (IsPlayerABot(p)) 
		{
			printl("UMINEKO: player a bot!");
			return;
		}
		printl("UMINEKO: player died! playing sound");
		EmitAmbientSoundOn("meow/death.wav", 1.0, 0, 100, Entities.FindByName(null, "UminekoSound"));
	}
}

__CollectEventCallbacks(::UminekoEvents, "OnGameEvent_", "GameEventCallbacks", RegisterScriptGameEventListener);


