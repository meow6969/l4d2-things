Msg("----------------------beginning crane event------------------\n")


local ERROR = -1
local PANIC = 0
local TANK = 1
local DELAY = 2
local SCRIPTED = 3 

DirectorOptions <-
{
	//-----------------------------------------------------
	A_CustomFinale_StageCount = 4 // Number of stages. Used for calculating the Versus score.
	
	A_CustomFinale1 = PANIC
	A_CustomFinaleValue1 = 1
	
	A_CustomFinale2 = SCRIPTED
	A_CustomFinaleValue2 = "r_c11m2_crane_scavenge" 	// Delay for five seconds in addition to stage delay.
	
	A_CustomFinale3 = DELAY
	A_CustomFinaleValue3 = 3   // ok sending EndCustomScriptedStage just ends the entire thing so i need another director script

	A_CustomFinale4 = PANIC
	A_CustomFinaleValue4 = 2

	//-----------------------------------------------------

}


IncludeScript("r_c11m2_crane_funcs");


/* function OnBeginCustomFinaleStage(num, type)
{

	if (num == 2)
	{
		SpawnScavengeCans();
	}

} */

//Director.PlayMegaMobWarningSounds()