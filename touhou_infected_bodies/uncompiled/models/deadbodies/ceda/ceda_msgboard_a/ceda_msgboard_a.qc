// Created by Crowbar 0.74

$modelname "deadbodies/ceda/ceda_msgboard_a.mdl"

$staticprop

$bodygroup "body"
{
	studio "ceda_msgboard_a.smd"
}


$surfaceprop "flesh"

$contents "solid"

$illumposition -54.821 -4.037 14.722

$mostlyopaque

$origin 0 -10 0

$cdmaterials "models\meowmeow\deadbodies\mokou\"

// $origin 110 -40 -20
// $origin 76 -32 -17

$cbox 0 0 0 0 0 0

$bbox -31.098 -109.642 -1.275 39.171 0 30.719

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "ref" {
	"ceda_msgboard_a_anims\ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
