// Created by Crowbar 0.74

$modelname "deadbodies/cemetary/oval_128_a.mdl"

$staticprop

$bodygroup "body"
{
	studio "oval_128_a.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -2.9 -0.411 8.279

// $origin 5.6 4.8 5.4
// $origin -41.1 -10.9 4
// $origin 38 -27 10
// $origin 10 -38 10 -120
$origin 7.5 -40 10 

$cdmaterials "models\meowmeow\deadbodies\sanae\"

$cbox 0 0 0 0 0 0

$bbox -50.635 -42.121 -0.914 51.457 36.321 17.472

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "ref" {
	"oval_128_a_anims\ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
