// Created by Crowbar 0.74

$modelname "deadbodies\dead_female_civilian_draped_02.mdl"

$staticprop

$bodygroup "Body"
{
	studio "dead_female_civilian_draped_02.smd"
}

$surfaceprop "flesh"

$contents "solid"

$illumposition -0.916 -0.566 8.472

// $origin 0 38 -3

$cdmaterials "models\deadbodies\"
$cdmaterials "models\meowmeow\deadbodies\sanae\"

$cbox 0 0 0 0 0 0

$bbox -46.569 -38.666 -0.749 47.701 36.835 16.943

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"dead_female_civilian_draped_02_anims\idle.smd"
	activity "act_idle" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "dead_female_civilian_draped_02_physics.smd"
{
	$mass 50
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
