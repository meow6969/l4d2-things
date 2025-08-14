// Created by Crowbar 0.74

$modelname "deadbodies\bodies128_b.mdl"

$staticprop

$bodygroup "Body"
{
	studio "bodies128_b_ref.smd"
}


$surfaceprop "flesh"

$contents "solid"

$illumposition 9.534 31.446 10.35

$origin 34 -54 -6

$cdmaterials "models\sanae\"

$cbox 0 0 0 0 0 0

$bbox -63.924 -109.811 -3.538 0 128.879 24.394

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"bodies128_b_anims\idle.smd"
	activity "act_idle" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "bodies128_b_physics.smd"
{
	$mass 500
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
