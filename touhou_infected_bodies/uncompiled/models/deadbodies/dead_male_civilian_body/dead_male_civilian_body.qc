// Created by Crowbar 0.74

$modelname "deadbodies\dead_male_civilian_body.mdl"

$staticprop

$bodygroup "Body"
{
	studio "dead_male_civilian_body.smd"
}


$surfaceprop "flesh"

$contents "solid"

$illumposition 1.785 -13.25 13.324

$origin 0 43 -4

$cdmaterials "models\meowmeow\deadbodies\sanae\"

$cbox 0 0 0 0 0 0

$bbox -16.932 -18.437 -1 42.97 21.98 30.409

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"dead_male_civilian_body_anims\idle.smd"
	activity "act_idle" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "dead_male_civilian_body_physics.smd"
{
	$mass 500
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 4

}
