function GetAllSurvivorPlayers()
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


function SetRequiredCans(canNumber)
{
	EntFire("scav_counter", "SetHitMax", canNumber);
	EntFire("scav_progshower", "SetTotalItems", canNumber);
}

function GetNumCans()
{
	local difficulty = Convars.GetStr( "z_difficulty" ).tolower();
	local numPlayers = GetAllSurvivorPlayers().len();
	local cans = 6;
	
	switch (difficulty)
	{
		case "hard":
		case "impossible":
			cans += 1;
			break;
		default:
			break;
	}
	
	if (numPlayers >= 4)
		cans += 3
	else if (numPlayers > 1)
		cans += 1;
	
	// advanced, 4players, cans = 10
	// advanced, 2players, cans = 8
	// advanced, 1players, cans = 7
	
	// SetRequiredCans(cans);
	
	return cans;
}


// called when survivors reach a trigger
function DeleteUnneededGasSpawns()
{
	local numGasSpawns = 0;
	local gascan = null;
	while ( gascan = Entities.FindByName( gascan, "gascans_fake" ) )
	{
		if ( gascan.IsValid() )
			numGasSpawns++;
	}
	
	local neededGascans = GetNumCans();
	//Msg("numGasSpawns="+numGasSpawns+", neededGascans="+neededGascans+"\n");
	
	gascan = null;
	while ( gascan = Entities.FindByName( gascan, "gascans_fake" ) )
	{
		if (!(gascan.IsValid()))
			continue;
		local r = RandomFloat(0.0000001, 1);
		numGasSpawns--;
		if (r > (neededGascans.tofloat() / numGasSpawns.tofloat()))
		{
			// SpawnCan( gascan );
			DoEntFire("!self", "Kill", "", 0, null, gascan);
			continue;
		}
		neededGascans--;
		//Msg("numGasSpawns="+numGasSpawns+", neededGascans="+neededGascans+"\n");
	}
	
	// EntFire( "gascans_fake", "Kill" );
}


// called when the event starts
function SpawnScavengeCans()
{
	local function SpawnCan( gascan )
	{
		local can_origin = gascan.GetOrigin();
		local can_angles = gascan.GetAngles();
		gascan.Kill();
		// Msg("can_origin="+can_origin.ToKVString());
		local kvs =
		{
			angles = can_angles.ToKVString()
			body = 0
			disableshadows = 1
			glowstate = 3
			model = "models/props_junk/gascan001a.mdl"
			skin = 1
			weaponskin = 1
			solid = 0
			spawnflags = 2
			targetname = "scavenge_gascans"
			origin = can_origin.ToKVString()
		}
		local can_spawner = SpawnEntityFromTable( "weapon_scavenge_item_spawn", kvs );
		if ( can_spawner )
			DoEntFire( "!self", "SpawnItem", "", 0, null, can_spawner );
	}
	
	local gascan = null;
	local numSpawned = 0;
	while ( gascan = Entities.FindByName( gascan, "gascans_fake" ) )
	{
		if (!(gascan.IsValid()))
			continue;
		
		SpawnCan( gascan );
		numSpawned++;
	}
	
	EntFire( "gascans_fake", "Kill" );
	
	local shouldCans = GetNumCans();
	
	if (numSpawned < shouldCans)
		shouldCans = numSpawned;
	
	SetRequiredCans(shouldCans);  // we do this in case someone joins between triggering the trigger to delete the cans, and the scavenge event starting
	
	local button = SpawnEntityFromTable("point_prop_use_target", {nozzle = "scav_nozzle", origin = "6040 3856 695.25", spawnflags = "1", targetname = "scav_usenozzle"});
	EntityOutputs.AddOutput(button, "OnUseFinished", "scav_counter", "Add", "+1", 0, -1);
}

function IgniteOutOfBoundsCans()
{
	local gascan = null;
	while ( gascan = Entities.FindByClassname( gascan, "weapon_gascan" ) )
	{
		if ( gascan.IsValid() )
		{
			local skin = NetProps.GetPropInt(gascan, "m_nSkin");
			// printl("gascan skin = "+skin);
			if (skin != 1)
				continue;
			local o = gascan.GetOrigin();
			if (o.z < 250)
				DoEntFire("!self", "Ignite", "", 0, null, gascan);
		}
	}
}