$modelname "umi/propper/church_door"

// $staticprop

$casttextureshadows
$origin -28 0 0 0
$model mesh "mybrush.smd"
$surfaceprop "wood"
$contents "solid"
$cdmaterials "models/umi/propper/"
$collisionmodel "mybrush_phys.smd"
{
	$automass
	$concave
	$remove2d
	$maxconvexpieces 1000000
}

$sequence ref "mybrush.smd"




$keyvalues
{
	prop_data 
	{
		"base" "Door.Standard"
		"allowstatic" "1"
		"blocklos" "1"
	}
	door_options 
	{
		"defaults"		 
		{
			"open" "Doors.Wood.FullOpen1"
			"close" "Doors.Wood.FullClose1"
			"move" "Doors.Wood.Move1"
			"pound" "Doors.Wood.Pound1"
			"surfaceprop" "wood"
		}
		"hardware0"		 
		{
			"locked" "DoorSound.Null"
			"unlocked" "DoorSound.Null"
		}
		"hardware1"		 
		{
			"locked" "DoorHandles.Locked1"
			"unlocked" "DoorHandles.Unlocked1"
		}
		"hardware2"		 
		{
			"locked" "DoorHandles.Locked2"
			"unlocked" "DoorHandles.Unlocked2"
		}
	}
}
