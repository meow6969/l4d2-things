// Created by Crowbar 0.74

$modelname "deadbodies/riot/riot_truck_a.mdl"

$staticprop

$bodygroup "body"
{
	studio "riot_truck_a.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -12.621 -54.384 42.273

$mostlyopaque

// $origin -34 -116 -65

$cdmaterials "models\meowmeow\deadbodies\tenshi\"

$cbox 0 0 0 0 0 0

$bbox 0 -35.164 0 108.768 9.923 84.546

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "ref" {
	"riot_truck_a_anims\ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
