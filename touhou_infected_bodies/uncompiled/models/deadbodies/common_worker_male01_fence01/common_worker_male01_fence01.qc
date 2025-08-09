// Created by Crowbar 0.74

$modelname "deadbodies\common_worker_male01_fence01.mdl"

$staticprop

$bodygroup "Body"
{
	studio "common_worker_male01_fence01_ref.smd"
}


$surfaceprop "flesh"

$contents "solid"

$illumposition -9.164 -0.014 -11.137

$origin 0 -7 33

$cdmaterials "models\sanae\"

$cbox 0 0 0 0 0 0

$bbox -16.024 -28.723 -38.475 16.052 10.394 16.201

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"common_worker_male01_fence01_anims\idle.smd"
	activity "act_idle" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}
