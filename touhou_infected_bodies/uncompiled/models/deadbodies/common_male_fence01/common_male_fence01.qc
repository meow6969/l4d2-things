// Created by Crowbar 0.74

$modelname "deadbodies\common_male_fence01.mdl"

$staticprop

$bodygroup "Body"
{
	studio "common_male_fence01_ref.smd"
}


$surfaceprop "flesh"

$contents "solid"

$illumposition 0.842 1.833 -11.926

$origin 0 -7 33

$cdmaterials "models\meowmeow\deadbodies\sanae\"

$cbox 0 0 0 0 0 0

$bbox -16.497 -13.731 -37.331 12.83 15.415 13.478

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"common_male_fence01_anims\idle.smd"
	activity "act_idle" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}
