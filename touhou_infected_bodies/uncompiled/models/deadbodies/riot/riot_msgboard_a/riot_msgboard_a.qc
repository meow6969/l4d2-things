// Created by Crowbar 0.74

$modelname "deadbodies/riot/riot_msgboard_a.mdl"

$staticprop

$bodygroup "body"
{
	studio "riot_msgboard_a.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 39.19 6.15 19.323

$origin 75 -10 -30

$mostlyopaque

$cdmaterials "models\tenshi\"

$cbox 0 0 0 0 0 0

$bbox -44.184 0 0 31.885 78.381 38.647

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "ref" {
	"riot_msgboard_a_anims\ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
