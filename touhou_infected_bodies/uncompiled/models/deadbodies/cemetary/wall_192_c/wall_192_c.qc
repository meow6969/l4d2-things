// Created by Crowbar 0.74

$modelname "deadbodies/cemetary/wall_192_c.mdl"

$staticprop

$bodygroup "body"
{
	studio "wall_192_c.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -15.933 -49.927 10.159

$origin -19 64 -1.7

$cdmaterials "models\sanae\"

$cbox 0 0 0 0 0 0

$bbox 0 -113.029 -1.098 99.853 81.164 21.415

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "ref" {
	"wall_192_c_anims\ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
