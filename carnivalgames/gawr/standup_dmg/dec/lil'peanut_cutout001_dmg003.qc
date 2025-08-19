// Created by Crowbar 0.74

$modelname "props_fairgrounds/lil'peanut_cutout001_dmg003.mdl"

$staticprop

$bodygroup "body"
{
	studio "lil'peanut_cutout001_dmg003.smd"
}


$surfaceprop "wood"

$contents "solid"

$illumposition 4.699 0.25 29.812

$origin 0 -13 0 

$cdmaterials "models\meowmeow\lilpeanuthomu\"

$cbox 0 0 0 0 0 0

$bbox -3.35 -9.89 0 2.85 14.445 62.073

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "ref" {
	"lil'peanut_cutout001_dmg003_anims\ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "lil'peanut_cutout001_dmg003_physics.smd"
{
	$mass 1.893939
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 3

}

$keyvalues
{
	prop_data 
	{
		"base" "Wooden.Medium"
	}
}
