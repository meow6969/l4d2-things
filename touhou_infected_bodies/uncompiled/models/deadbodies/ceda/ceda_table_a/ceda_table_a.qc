// Created by Crowbar 0.74

$modelname "deadbodies/ceda/ceda_table_a.mdl"

$staticprop

$bodygroup "body"
{
	studio "ceda_table_a.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 42.666 0.095 19.622

$mostlyopaque

$cdmaterials "models\sanae\"
$cdmaterials ""

$cbox 0 0 0 0 0 0

// $origin 50 -31 -12
$origin -50 31 -12

$bbox -34.122 0 -0.899 33.932 85.333 40.144

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "ref" {
	"ceda_table_a_anims\ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
