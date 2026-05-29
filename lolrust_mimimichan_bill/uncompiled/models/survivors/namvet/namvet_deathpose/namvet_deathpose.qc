// Created by Crowbar 0.74

$modelname "survivors/namvet/namvet_deathpose.mdl"

$staticprop

$bodygroup "body"
{
	studio "Body.smd"
	blank
}
$bodygroup "hair"
{
	studio "Hair001.smd"
	blank
}
$bodygroup "face"
{
	studio "Face.smd"
	blank
}
$bodygroup "pants"
{
	studio "pants_under.smd"
	blank
}


$surfaceprop "default"

$contents "solid"

$illumposition 0.273 -24.745 13.737

$cdmaterials "models\meowmeow\mimimichan"

$cbox 0 0 0 0 0 0

$bbox -0.239 -14.764 -0.99 49.728 15.31 28.464

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "ref" {
	"namvet_deathpose_anims\ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
