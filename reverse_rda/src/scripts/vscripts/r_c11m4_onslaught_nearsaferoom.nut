Msg("Initiating Onslaught\n");

DirectorOptions <-
{
	// This turns off tanks and witches.
	ProhibitBosses = true

	PreferredMobDirection = SPAWN_ANYWHERE
	MobSpawnMinTime = 2
	MobSpawnMaxTime = 4
	MobMaxPending = 30
	MobMinSize = 14
	MobMaxSize = 22
	SustainPeakMinTime = 1
	SustainPeakMaxTime = 3
	IntensityRelaxThreshold = 0.90
	RelaxMinInterval = 3
	RelaxMaxInterval = 5
	RelaxMaxFlowTravel = 200
}

Director.ResetMobTimer()
// Director.PlayMegaMobWarningSounds()