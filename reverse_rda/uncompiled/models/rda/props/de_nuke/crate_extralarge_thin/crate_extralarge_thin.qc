// Created by Crowbar 0.74

$modelname "rda\props\de_nuke\crate_extralarge_thin.mdl"

$staticprop

$bodygroup "Body"
{
	studio "Crate_ExtraLarge_REF.smd"
}


$surfaceprop "wood"

$contents "solid"

$illumposition 0.003 0 63.986

$cdmaterials "models\props\de_nuke\"

$cbox 0 0 0 0 0 0

$bbox -64.002 -49.000 -1.11 64.003 49.000 129.082

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0

$sequence "idle" {
	"crate_extralarge_thin_anims\idle.smd"
	activity "act_idle" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "crate_extralarge_physics.smd"
{
	$mass 100
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}

$collisiontext
{
	break 
	{
		"model" "props_junk/wood_crate001a_Chunk01"
		"fadetime" "20"
		"offset" "0 9 0"
	}
	break 
	{
		"model" "props_junk/wood_crate001a_Chunk02"
		"fadetime" "20"
		"offset" "0 14 0"
	}
	break 
	{
		"model" "props_junk/wood_crate001a_Chunk03"
		"fadetime" "20"
		"offset" "0 -14 0"
	}
	break 
	{
		"model" "props_junk/wood_crate001a_Chunk04"
		"fadetime" "20"
		"offset" "0 -14 0"
	}
	break 
	{
		"model" "props_junk/wood_crate001a_Chunk05"
		"fadetime" "20"
		"offset" "0 14 0"
	}
	break 
	{
		"model" "props_junk/wood_crate001a_Chunk07"
		"fadetime" "20"
	}
	break 
	{
		"model" "props_junk/wood_crate001a_Chunk09"
		"fadetime" "20"
		"offset" "0 8 0"
	}
}


$keyvalues
{
	prop_data
	{
		"base" "Wooden.Large"
	}
}



