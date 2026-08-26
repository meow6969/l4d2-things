


::BhopEvent <-
{
	function OnGameEvent_player_jump(params)
	{
		local player = GetPlayerFromUserID(params.userid);
		local steamid = ::MeowUtils.GetPlayerSteamID(player);

		if (::BhopFunc.ShouldIgnorePlayer(params.userid, player))
		{
			::MeowUtils.Log("player_jump(): ignoring player "+player.GetPlayerName());
			return;
		}

		if (::BhopFunc.IsPlayerIgnored(steamid))
		{
			::MeowUtils.Log("OnGameEvent_player_jump(): ignoring player: "+player.GetPlayerName());
			return;
		}
		
		local speed = ::MeowUtils.GetPlayerSpeed(player);
		local pName = player.GetPlayerName();
		local jumpPos = player.EyePosition();  // this is the value returned by cl_showpos 1 i think
		// local indexName = "bhop"+index;
		
		if (!(steamid in ::BhopVars.JumpingList))
		{
			if (speed < ::BhopVars.BunnyMinStartingVel) 
				return;
			local bhopData = ::BhopClasses.BhopChainData(player, steamid, ::BhopClasses.BhopData(speed, jumpPos));
			::BhopVars.JumpingList[steamid] <- bhopData;
		}
		else
		{
			local bhopChain = ::BhopVars.JumpingList[steamid];
			if (!::BhopFunc.IsPlayerPerfectJumpIgnored(steamid))
			{
				if (bhopChain.groundTime <= 1)
				{
					// ClientPrint(player, 4, "\x04perfect jump! speed=\x05"+speed.tointeger()+"\x01");
					// ClientPrint(player, 4, "perfect jump! speed="+speed.tointeger());
					local t = ::BhopVars.CommandManager.GetPlayerLocalizedString("Misc|PerfectJump", {speedPerfectJump = speed.tointeger()}, steamid, false);
					ClientPrint(player, 4, t);
				}
			}
			
			bhopChain.groundTime = 0;
			bhopChain.AddBhop(::BhopClasses.BhopData(speed, jumpPos));
			::BhopVars.JumpingList[steamid] <- bhopChain;
		}
	}
	
	// this is so the player steam id is always initialized
	/* function OnGameEvent_player_spawn(params)
	{
		if (params.userid == null) return;
		printl("player_spawn");
		if (!::BhopFunc.IsPlayerInInitList(params.userid))
		{
			::BhopVars.PlayerInitList.append(params.userid);
		}
	} */

	function OnGameEvent_player_connect_full(params)
	{
		if (params.userid == null) return;
		//  ::MeowUtils.Log("player_connect_full");
		if (!::BhopFunc.IsPlayerInInitList(params.userid))
		{
			::BhopVars.PlayerInitList.append(params.userid);
		}
	}

	// i think dis runs when umm  when new person join server?  -- idk wut im doing ,,  xd
	function OnGameEvent_player_team(params)
	{
		if (params.userid == null) return;
		// ::MeowUtils.Log("OnGameEvent_player_team");
		
		if (params.disconnect)
		{
			local i = ::BhopVars.PlayerInitList.find(params.userid);
			if (i != null) 
				::BhopVars.PlayerInitList.remove(i);
			return;
		}
		// if (i == null)
		// 	::BhopVars.PlayerInitList.append(params.userid);
	}

	function OnGameEvent_player_say(params)
	{
		if (!("userid" in params) || params.userid in ::BhopVars.PlayerInitList)
			return;
		local player = GetPlayerFromUserID(params.userid);
		// print("::BhopVars.CommandManager="+::BhopVars.CommandManager);
		::BhopVars.CommandManager.Invoke(player, params.text);
	}

	function OnGameEvent_finale_win(params)
	{
		// i think some addon maps have a bug that causes this to run multiple times,   mmaybe just set a bool to true when it runs the first time?
		// printl("leaderboard event !!!!");
		if (::BhopVars.LeaderboardOnGameEnd) 
		{
			::BhopFunc.DisplayLeaderboard(null, true);
		}
	}

	// runs when survivors successfully make it to check point in coop i think
	function OnGameEvent_map_transition(params)
	{
		::BhopFunc.DisplayLeaderboard(null, true);
		::BhopFunc.WriteSessionData();
	}

	// runs when survivors die in coop
	function OnGameEvent_mission_lost(params)
	{
		::BhopFunc.WriteSessionData(true);
	}
}



