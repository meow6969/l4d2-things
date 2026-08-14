// Created by Crowbar 0.74

$modelname "rda/props_interiors\painting_landscape01.mdl"

$staticprop

$bodygroup "Body"
{
	studio "Painting_Landscape01_REF.smd"
}


$surfaceprop "glass"

$contents "solid"

$illumposition 0.252 -0.542 3.311

$cdmaterials "models\rda\props_interiors\"

$cdmaterials "models\props_interiors\"


$cbox 0 0 0 0 0 0

$bbox -35.9 -2.35 -26.612 36.983 2.85 33.235

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"painting_landscape01_anims\idle.smd"
	activity "act_idle" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "painting_landscape01_physics.smd"
{
	$mass 10
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}

$keyvalues
{
	prop_data 
	{
		"base" "glass.picture"
		"allowstatic" "1"
	}
}
