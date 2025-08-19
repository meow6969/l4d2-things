// Created by Crowbar 0.74

$modelname "deadbodies\chm_fallensurvivor.mdl"

$staticprop

$bodygroup "body"
{
	studio "chm_fallensurvivor.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -1.463 -9.377 34.544

$cdmaterials "models\meowmeow\deadbodies\alice\"

$cbox 0 0 0 0 0 0

$bbox -13.19 -12.82 -0.196 31.945 9.894 69.285

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "ref" {
	"chm_fallensurvivor_anims\ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
