

::CanvasVars <-
{
	UserBuffer = []
}


::CanvasFuncs <-
{
	function SendCanvasRequest(player)
	{
		if (IsPlayerABot(player)) return;
		local pSID = player.GetNetworkIDString();
		local pName = player.GetPlayerName();
		printl("[CANVAS] "+pSID+" "+pName);
	}
	
	function SendCanvasRequestUserID(userid)
	{
		if (userid == null) return;
		local p = GetPlayerFromUserID(userid);
		return ::CanvasFuncs.SendCanvasRequest(p);
	}
}


::CanvasEnts <-
{
	function AddAnnounceDelayer()
	{
		local e = Entities.FindByName(null, "canvasAnnouncer");
		if (e != null) 
		{
			if (e.IsValid())
				e.Kill();
		}

		e = SpawnEntityFromTable("logic_timer", {targetname = "canvasAnnouncer", start_disabled = false, RefireTime = 5.0});
		
		e.ConnectOutput("OnTimer", "AnnounceThink");
		
		e.ValidateScriptScope();
		e.GetScriptScope().AnnounceThink <- function () 
		{
			// printl("timer!!!");
			foreach (i in ::CanvasVars.UserBuffer)
			{
				::CanvasFuncs.SendCanvasRequestUserID(i);
			}
			::CanvasVars.UserBuffer <- [];
		}
	}
}


::CanvasEvents <-
{
	function OnGameEvent_player_connect_full(params)
	{
		printl("[CANVAS] PLAYER_CONNECT");
		::CanvasVars.UserBuffer.append(params.userid);
		// ::CanvasFuncs.SendCanvasRequestUserID(params.userid);
	}
	
	function OnGameEvent_player_say(params)
	{
		// printl("kit");
		printl("[CANVAS] PLAYER_SAY");
		// if (params.text == "!canv") ::CanvasVars.UserBuffer.append(params.userid);
		if (params.text != "!canvas") return;
		// ::CanvasVars.UserBuffer.append(params.userid);
		::CanvasFuncs.SendCanvasRequestUserID(params.userid);
	}
}


printl("loaded canvas integration!");
printl("[CANVAS] LOADED");
::CanvasEnts.AddAnnounceDelayer();
__CollectEventCallbacks(::CanvasEvents, "OnGameEvent_", "GameEventCallbacks", RegisterScriptGameEventListener);



