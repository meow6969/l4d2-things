Msg("Initiating Box Onslaught\n");

DirectorOptions <-
{
	// This turns off tanks and witches.
	ProhibitBosses = true

	// PreferredMobDirection = SPAWN_NO_PREFERENCE
	SpecialRespawnInterval = 15
	MobSpawnMinTime = 1
	MobSpawnMaxTime = 2
	MobMaxPending = 30
	MobMinSize = 17
	MobMaxSize = 40
	SustainPeakMinTime = 1
	SustainPeakMaxTime = 3
	IntensityRelaxThreshold = 0.90
	RelaxMinInterval = 1
	RelaxMaxInterval = 5
	RelaxMaxFlowTravel = 200
}

// printl("SPAWN_NO_PREFERENCE="+SPAWN_NO_PREFERENCE);

Director.ResetMobTimer()
Director.PlayMegaMobWarningSounds()

::BoxHealth <-
{
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
			if (current.GetZombieType() == 9 && !(IsPlayerABot(current)))
				r.append(current);
			last = current;
		}
		return r;
	}
	
	function SetHealth()
	{
		local baseHealth = 400;
		local adaptedHealth;
		
		local numPlayers = ::BoxHealth.GetAllSurvivorEntities().len()
		Msg("BoxScript: found "+numPlayers+" players\n");
		if (numPlayers 	== 1)
		{
			adaptedHealth = baseHealth;
		}
		else
		{
			adaptedHealth = (baseHealth + 50) * numPlayers;
			if (adaptedHealth <= 1)
				adaptedHealth = 100;
		}
		EntFire("blocking_boxes*", "SetHealth", adaptedHealth.tostring(), 0, null);
	}
}

::BoxHealth.SetHealth();



