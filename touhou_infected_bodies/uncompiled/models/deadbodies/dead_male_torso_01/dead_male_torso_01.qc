// Created by Crowbar 0.74

$modelname "deadbodies\dead_male_torso_01.mdl"

$staticprop

$bodygroup "Body"
{
	studio "dead_male_torso_01.smd"
}

$surfaceprop "flesh"

$contents "solid"

$illumposition -0.7 -4.96 5.455

$origin 0 52 -4

// $cdmaterials "models\meowmeow\deadbodies\"
$cdmaterials "models\deadbodies\"
$cdmaterials "models\meowmeow\deadbodies\sanae\"

$cbox 0 0 0 0 0 0

$bbox -21.211 -16.699 -1 29.658 16.83 11.256

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"dead_male_torso_01_anims\idle.smd"
	activity "act_idle" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "dead_male_torso_01_physics.smd"
{
	$mass 500
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 4

}
