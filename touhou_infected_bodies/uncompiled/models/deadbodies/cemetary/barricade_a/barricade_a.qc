// Created by Crowbar 0.74

$modelname "deadbodies/cemetary/barricade_a.mdl"

$staticprop

$bodygroup "body"
{
	studio "barricade_a.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -6.172 -78.46 10.93

$origin 157 26 -9 90

$cdmaterials "models\meowmeow\deadbodies\sanae\"

$cbox 0 0 0 0 0 0

$bbox 0 -68.562 -0.362 156.919 56.217 22.223

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "ref" {
	"barricade_a_anims\ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
