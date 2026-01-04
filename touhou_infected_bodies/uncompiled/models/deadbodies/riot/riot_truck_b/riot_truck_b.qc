// Created by Crowbar 0.74

$modelname "deadbodies/riot/riot_truck_b.mdl"

$staticprop

$bodygroup "body"
{
	studio "riot_truck_b.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 13.532 32.966 35.737

$mostlyopaque

// $origin -10 46 -48

$cdmaterials "models\meowmeow\deadbodies\tenshi\"

$cbox 0 0 0 0 0 0

$bbox -65.932 -17.229 0 0 44.293 71.475

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "ref" {
	"riot_truck_b_anims\ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
