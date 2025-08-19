// Created by Crowbar 0.74

$modelname "deadbodies/cemetary/oval_128_c.mdl"

$staticprop

$bodygroup "body"
{
	studio "oval_128_c.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 5.701 -1.327 8.187

$origin 44 43 -8.5 95

$cdmaterials "models\meowmeow\deadbodies\sanae\"

$cbox 0 0 0 0 0 0

$bbox -43.764 -44.616 -1.549 46.419 56.018 17.923

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0

$sequence "ref" {
	"oval_128_c_anims\ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
