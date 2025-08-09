// Created by Crowbar 0.74

$modelname "deadbodies/ceda/ceda_truck_b.mdl"

$staticprop

$bodygroup "body"
{
	studio "ceda_truck_b.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -29.059 26.47 52.25

$mostlyopaque

$origin 30 -10 -115

$cdmaterials "models\sanae"
$cdmaterials ""

$cbox 0 0 0 0 0 0

$bbox -52.939 -58.118 0 0 0 104.5

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "ref" {
	"ceda_truck_b_anims\ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
