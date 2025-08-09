// Created by Crowbar 0.74

$modelname "deadbodies/riot/riot_table_a.mdl"

$staticprop

$bodygroup "body"
{
	studio "riot_table_a.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -2.572 33.021 20.791

$mostlyopaque

$origin 0 -4 -8

$cdmaterials "models\tenshi\"

$cbox 0 0 0 0 0 0

$bbox -66.043 -30.134 -0.523 0 24.99 42.104

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "ref" {
	"riot_table_a_anims\ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
