local ERROR = -1
local PANIC = 0
local TANK = 1
local DELAY = 2
local SCRIPTED = 3 

DirectorOptions <-
{
	//-----------------------------------------------------
	// A_CustomFinale_StageCount = 2 // Number of stages. Used for calculating the Versus score.
	
	A_CustomFinale1 = PANIC
	A_CustomFinaleValue1 = 2	// Two panic waves.
	
	A_CustomFinale2 = DELAY
	A_CustomFinaleValue2 = 1 	// Delay for five seconds in addition to stage delay.

	//-----------------------------------------------------

}

// Director.PlayMegaMobWarningSounds()
