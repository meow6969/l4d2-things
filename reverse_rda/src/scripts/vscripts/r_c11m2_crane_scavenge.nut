Msg("----------------------beginning crane scavenge------------------\n")

DirectorOptions <-
{
	CommonLimit = 20
	MobSpawnMinTime = 10
	MobSpawnMaxTime = 10
	MobSpawnSize = 10
	MobMaxPending = 20
	IntensityRelaxThreshold = 0.99
	RelaxMinInterval = 1
	RelaxMaxInterval = 1
	RelaxMaxFlowTravel = 1
	SpecialRespawnInterval = 15
	LockTempo = true
	PreferredMobDirection = SPAWN_ANYWHERE
	PanicForever = true
}


IncludeScript("r_c11m2_crane_funcs");


Director.ResetMobTimer()
//Director.PlayMegaMobWarningSounds()

