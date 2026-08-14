Msg("----------------------beginning crane scavenge------------------\n")

DirectorOptions <-
{
	CommonLimit = 20
	MobSpawnMinTime = 10
	MobSpawnMaxTime = 10
	MobSpawnSize = 6
	MobMaxPending = 15
	IntensityRelaxThreshold = 0.99
	RelaxMinInterval = 1
	RelaxMaxInterval = 1
	RelaxMaxFlowTravel = 1
	SpecialRespawnInterval = 30
	LockTempo = true
	PreferredMobDirection = SPAWN_ANYWHERE
	PanicForever = true
}


IncludeScript("r_c11m2_crane_funcs");


Director.ResetMobTimer()
//Director.PlayMegaMobWarningSounds()

