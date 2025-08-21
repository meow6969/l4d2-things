
// https://github.com/garamond13/L4D2-Auto-Transfer-Laser-Sight

Msg("loading laser sights rework");

::LaserSightVars <-
{
	laserTracker = {}
}


::LaserSightEvents <-
{
	/* function OnGameEvent_player_say(params)
	{
		local player = GetPlayerFromUserID(params.userid);
		local message = strip(params.text).tolower();
		// printl("eow meow");
		//local a = NetProps.GetPropEntity(player, "m_primaryWeapon");
		//ClientPrint(null, 3, );
	} */
	
	function OnGameEvent_item_pickup(params)
	{
		// ClientPrint(null, 3, "weapon="+params.item);
		local id = params.userid;
		if (!(id in ::LaserSightVars.laserTracker)) return;
		if (::LaserSightVars.laserTracker[id] == 1)
		{
			ClientPrint(null, 3, "give laser !! yayta !!");
			local player = GetPlayerFromUserID(id);
			player.GiveUpgrade(2);  // 2 = UPGRADE_LASER_SIGHT
		}
	}
	
	// idk if we hav to hook this
	/* function OnGameEvent_weapon_given(params)
	{
		
	}

	// idk if we hav to hook this
	function OnGameEvent_spawner_give_item(params)
	{
		
	} */

	// work
	function OnGameEvent_weapon_drop(params)
	{
		// ClientPrint(null, 3, "weapondrop");
		local ent = EntIndexToHScript(params.propid);
		
		// Does this weapon support upgrades.
		if (NetProps.HasProp(ent, "m_upgradeBitVec")) 
		{
			// ClientPrint(null, 3, "hasprop");

			// Get upgrades of dropped weapon.
			local upgrades = NetProps.GetPropInt(ent, "m_upgradeBitVec");

			// Does dropped weapon  already have laser sight.
			if ((upgrades & 4) != 0) 
			{
				// this mmeans the player already has a laser sight
				::LaserSightVars.laserTracker[params.userid] <- true;	
				// remove laser sight to dropped weapon.
				NetProps.SetPropInt(ent, "m_upgradeBitVec", upgrades ^ 4);
			}
			if (!(params.userid in ::LaserSightVars.laserTracker)) return;
			if (::LaserSightVars.laserTracker[params.userid] == 1)
			{
				local player = GetPlayerFromUserID(params.userid);
				player.GiveUpgrade(2);  // 2 = UPGRADE_LASER_SIGHT
			}	
		}
	}

	function OnGameEvent_player_use(params)
	{
		local entid = params.targetid;
		local ent = EntIndexToHScript(entid);
		local name = ent.GetName();
		// ClientPrint(null, 3, "classname="+ent.GetClassname());
		if (name == "lasertrigger" || ent.GetClassname() == "upgrade_laser_sight") ::LaserSightVars.laserTracker[params.userid] <- 1;
		// ClientPrint(null, 3, "awaawa="+ent.GetName());
	}

	function OnGameEvent_player_death(params)
	{
		if (!("userid" in params)) return;
		local id = params.userid;
		if (!(id in ::LaserSightVars.laserTracker)) return;
		if (::LaserSightVars.laserTracker[id] == true) ::LaserSightVars.laserTracker[id] = -1;
	}

	function OnGameEvent_defibrillator_used(params)
	{
		if (!(params.subject in ::LaserSightVars.laserTracker)) return;
		if (::LaserSightVars.laserTracker[params.subject] == -1) 
			::LaserSightVars.laserTracker[params.subject] <- true;
	}

	/* function OnGameEvent_round_start_post_nav(params)
	{
		while (player = Entities.FindByClassname(player, "player"))
		{
			// if (IsPlayerABot(player))
			// {
			// 	continue;
			// }
			//if ()
			//{
			//	return player;
			//}
			
		}
	} */
}

__CollectEventCallbacks(::LaserSightEvents, "OnGameEvent_", "GameEventCallbacks", RegisterScriptGameEventListener);



