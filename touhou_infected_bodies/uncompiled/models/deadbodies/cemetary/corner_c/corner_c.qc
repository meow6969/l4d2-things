// Created by Crowbar 0.74

$modelname "deadbodies/cemetary/corner_c.mdl"

$staticprop

$bodygroup "body"
{
	studio "corner_c.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 53.214 -57.971 12.331

$origin -59 39 -0.6

$cdmaterials "models\meowmeow\deadbodies\sanae\"

$cbox 0 0 0 0 0 0

$bbox 0 0 -0.174 115.942 106.427 24.837

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "ref" {
	"corner_c_anims\ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
