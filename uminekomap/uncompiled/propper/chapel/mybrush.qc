$modelname "propper/chapel/mybrush"
$staticprop
$casttextureshadows
$origin 0 0 0 -90
$model mesh "mybrush.smd"
$surfaceprop "glass"
$cdmaterials "models/propper/chapel/umi"
$collisionmodel "mybrush_phys.smd"
{
	$automass
	$concave
	$remove2d
	$maxconvexpieces 1000000
}
$sequence ref "mybrush.smd"
