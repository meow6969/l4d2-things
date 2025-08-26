
// https://github.com/garamond13/L4D2-Auto-Transfer-Laser-Sight

Msg("loading laser sights rework");

::LaserSightVars <-
{
	laserTracker = {}
	laserDelays = {}
}

::LaserSightFuncs <-
{
	function GivePlayerLaserSight(userid)
	{
		::LaserSightVars.laserDelays[userid] <- Time();
	}
	
	// some times it can take more then 1 tick for the weapon to be recognized in the inventory, so we delay every give of lasers
	function AddDelayedTicker()
	{
		local ent = Entities.FindByName(null, "laserSightDelayTicker");
		if (ent != null && ent.IsValid()) ent.Kill();
		ent = SpawnEntityFromTable("info_target", {targetname = "laserSightDelayTicker"});
		ent.ValidateScriptScope();
		local scope = ent.GetScriptScope();
		scope["laserThink"] <- function () {
			local stuffToRemove = [];
			local t = Time();
			foreach (userid, time in ::LaserSightVars.laserDelays)
			{
				if (t > time) 
				{
					stuffToRemove.append(userid);
					local player = GetPlayerFromUserID(userid);
					player.GiveUpgrade(2);
				}
			}
			foreach (userid in stuffToRemove)
			{
				if (userid in ::LaserSightVars.laserDelays)
					delete ::LaserSightVars.laserDelays[userid];
			}
			return 0.0001;
		}
		AddThinkToEnt(ent, "laserThink");
	}
}

::LaserSightEvents <-
{
	function OnGameEvent_item_pickup(params)
	{
		local id = params.userid;
		if (!(id in ::LaserSightVars.laserTracker))
			return;
		if (::LaserSightVars.laserTracker[id] == 1)
			::LaserSightFuncs.GivePlayerLaserSight(id);
	}
	
	function OnGameEvent_weapon_drop(params)
	{
		if (!("propid" in params)) return;
		local ent = EntIndexToHScript(params.propid);
		local id = params.userid;
		
		// Does this weapon support upgrades.
		if (NetProps.HasProp(ent, "m_upgradeBitVec")) 
		{
			// Get upgrades of dropped weapon.
			local upgrades = NetProps.GetPropInt(ent, "m_upgradeBitVec");

			// Does dropped weapon  already have laser sight.
			if ((upgrades & 4) != 0) 
			{
				// this mmeans the player already has a laser sight
				::LaserSightVars.laserTracker[id] <- 1;	
				// remove laser sight to dropped weapon.
				NetProps.SetPropInt(ent, "m_upgradeBitVec", upgrades ^ 4);
			}
		}
		if (!(id in ::LaserSightVars.laserTracker)) return;
		if (::LaserSightVars.laserTracker[id] == 1)
			::LaserSightFuncs.GivePlayerLaserSight(id);
	}

	function OnGameEvent_player_use(params)
	{
		local ent = EntIndexToHScript(params.targetid);
		if (ent.GetName() == "lasertrigger" || ent.GetClassname() == "upgrade_laser_sight") ::LaserSightVars.laserTracker[params.userid] <- 1;
	}

	function OnGameEvent_player_death(params)
	{
		if (!("userid" in params)) return;
		local id = params.userid;
		if (!(id in ::LaserSightVars.laserTracker)) return;
		if (::LaserSightVars.laserTracker[id] == 1) ::LaserSightVars.laserTracker[id] = -1;
	}

	function OnGameEvent_defibrillator_used(params)
	{
		if (!(params.subject in ::LaserSightVars.laserTracker)) return;
		if (::LaserSightVars.laserTracker[params.subject] == -1) 
			::LaserSightVars.laserTracker[params.subject] <- 1;
	}
}

::LaserSightFuncs.AddDelayedTicker();
__CollectEventCallbacks(::LaserSightEvents, "OnGameEvent_", "GameEventCallbacks", RegisterScriptGameEventListener);



