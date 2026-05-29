// Created by Crowbar 0.74

$modelname "survivors/survivor_NamVet.mdl"

$model "Face" "lian.smd" {

	flexfile "survivor_namvet_01.vta" 
	{
		defaultflex frame 0
		flex "blink" frame 1
		flex "jaw_drop" frame 2
		flex "right_lowerer" frame 3
		flex "right_corner_puller" frame 4
		flex "right_upper_rasie" frame 5
	}

	flexcontroller phoneme range 0 1 "left_lid_closer"
	flexcontroller phoneme range 0 1 "right_lid_closer"
	flexcontroller phoneme range 0 1 "blink"
	flexcontroller phoneme range 0 1 "jaw_drop"
	flexcontroller phoneme range 0 1 "right_lowerer"
	flexcontroller phoneme range 0 1 "right_corner_puller"
	flexcontroller phoneme range 0 1 "right_upper_rasie"

	localvar left_lid_closer
	localvar right_lid_closer
	%left_lid_closer = left_lid_closer
	%right_lid_closer = right_lid_closer
	%blink = blink
	%jaw_drop = jaw_drop
	%right_lowerer = right_lowerer
	%right_corner_puller = right_corner_puller
	%right_upper_rasie = right_upper_rasie
}
$bodygroup "a"
{
	studio "shenti1.smd"
}


$surfaceprop "flesh"

$contents "solid"

$illumposition -1.478 -0.947 35.514

$eyeposition 0 0 70

$maxeyedeflection 30

$ambientboost

$mostlyopaque

$cdmaterials "20doge\kanata\"

$attachment "eyes" "ValveBiped.Bip01_Head1" 2.92 -2.8 0 rotate 0 -89.37 -90
$attachment "mouth" "ValveBiped.Bip01_Head1" 0.84 -6.09 -0.16 rotate 0 -80 -90
$attachment "survivor_light" "ValveBiped.Bip01_Spine2" 6.3 25.2 0 rotate 0 0 0
$attachment "pistol" "ValveBiped.Bip01_R_Thigh" -3.48 2.17 -5.47 rotate -3.66 -0.47 96.14
$attachment "weapon_bone" "ValveBiped.weapon_bone" 0 0 0 rotate 0 0 0
$attachment "medkit" "ValveBiped.Bip01_Spine4" -1.34 -5.84 -1.37 rotate 5.03 77.16 0
$attachment "primary" "ValveBiped.Bip01_Spine4" 3.21 -5.16 -2.75 rotate -13.7 170.19 174.29
$attachment "attach_R_shoulderBladeAim" "ValveBiped.Bip01_Spine4" -11.07 -1.46 -5.33 rotate -90 -102.85 0
$attachment "attach_L_shoulderBladeAim" "ValveBiped.Bip01_Spine4" -11.07 -1.46 3.69 rotate -90 -102.85 0
$attachment "melee" "ValveBiped.Bip01_Spine4" 2.87 -5.56 5.47 rotate 24.08 175.37 97.14
$attachment "molotov" "ValveBiped.Bip01_Spine" -3.78 -2.89 8.29 rotate -63.44 -74.67 -101.41
$attachment "grenade" "ValveBiped.Bip01_Spine" -0.8 1.38 9.33 rotate -90 -175.23 0
$attachment "pills" "ValveBiped.Bip01_Spine" -3.1 0.74 -8.47 rotate -41.18 -88.48 -87.05
$attachment "lfoot" "ValveBiped.Bip01_L_Foot" 0 5.25 0 rotate 0 0 0
$attachment "rfoot" "ValveBiped.Bip01_R_Foot" 0 5.25 0 rotate 0 0 0
$attachment "muzzle_flash" "ValveBiped.Bip01_L_Hand" 0 0 0 rotate 0 0 0
$attachment "survivor_neck" "ValveBiped.Bip01_Neck1" 0 0 0 rotate 0 0 0
$attachment "bleedout" "ValveBiped.Bip01_Pelvis" 9.97 10.5 5.25 rotate 0 0 0
$attachment "survivor_light" "ValveBiped.Bip01_Spine2" 6.3 25.2 0 rotate 0 0 0
$attachment "legL_B" "ValveBiped.attachment_bandage_legL" 0 0 0 rotate -90 -90 0
$attachment "armL_B" "ValveBiped.attachment_bandage_armL" 0 0 0 rotate -90 -90 0
$attachment "armL_T" "ValveBiped.attachment_armL_T" 0 0 0 rotate -90 -90 0
$attachment "armR_T" "ValveBiped.attachment_armR_T" 0 0 0 rotate -90 -90 0
$attachment "armL" "ValveBiped.Bip01_L_Forearm" 0 0 0 rotate 0 0 0
$attachment "legL" "ValveBiped.Bip01_L_Calf" 0 0 0 rotate 0 0 0
$attachment "thighL" "ValveBiped.Bip01_L_Thigh" 0 0 0 rotate 0 0 0
$attachment "spine" "ValveBiped.Bip01_Spine" 0 0 0 rotate -90 -90 0

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 72

$hboxset "default"
$hbox 3 "ValveBiped.Bip01_Pelvis" -6.3 -4.725 -4.725 6.3 4.725 4.725
$hbox 6 "ValveBiped.Bip01_L_Thigh" 5.25 -3.57 -2.9925 19.949999 2.73 2.2575
$hbox 6 "ValveBiped.Bip01_L_Calf" 0.525 -2.1 -2.625 20.474998 3.15 2.625
$hbox 7 "ValveBiped.Bip01_R_Thigh" 5.25 -3.57 -2.9925 19.949999 2.73 2.2575
$hbox 7 "ValveBiped.Bip01_R_Calf" 0.525 -2.1 -2.625 20.474998 3.15 2.625
$hbox 3 "ValveBiped.Bip01_Spine1" -5.25 -4.4625 -6.3 5.25 6.5625 6.3
$hbox 2 "ValveBiped.Bip01_Spine2" -3.15 -3.57 -6.825 12.599999 6.929999 6.825
$hbox 1 "ValveBiped.Bip01_Neck1" 0 -2.625 -2.3625 4.2 2.625 2.3625
$hbox 1 "ValveBiped.Bip01_Head1" -0.84 -4.2 -3.2025 7.559999 4.2 2.5725
$hbox 4 "ValveBiped.Bip01_L_UpperArm" 0 -2.205 -2.1 11.549999 1.995 2.1
$hbox 4 "ValveBiped.Bip01_L_Forearm" 0.525 -1.8375 -1.8375 12.075 1.8375 1.8375
$hbox 4 "ValveBiped.Bip01_L_Hand" 1.113 -1.512 -2.52 5.838 0.588 1.365
$hbox 5 "ValveBiped.Bip01_R_UpperArm" 0 -2.205 -2.1 11.549999 1.995 2.1
$hbox 5 "ValveBiped.Bip01_R_Forearm" 0.525 -1.8375 -1.8375 12.075 1.8375 1.8375
$hbox 5 "ValveBiped.Bip01_R_Hand" 1.113 -1.512 -2.52 5.838 0.588 1.365
$skipboneinbbox

$definebone "ValveBiped.Bip01_Pelvis" "" 0 -1.436185 37.910439 0 0 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Thigh" "ValveBiped.Bip01_Pelvis" -2.62444 0 0 -0.000019 -90.000016 -90.000016 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Calf" "ValveBiped.Bip01_R_Thigh" 14.512905 0.000001 -0.000004 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Foot" "ValveBiped.Bip01_R_Calf" 17.919655 0 0 7.509586 -73.645258 0.760544 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Toe0" "ValveBiped.Bip01_R_Foot" 5.197852 0.000003 0 0.861729 -18.798629 -5.743615 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Thigh" "ValveBiped.Bip01_Pelvis" 2.62444 0 0 0.000019 -90.000016 -90.000016 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Calf" "ValveBiped.Bip01_L_Thigh" 14.512905 0.000001 -0.000004 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Foot" "ValveBiped.Bip01_L_Calf" 17.95602 0 0.000002 -7.509586 -73.645258 -0.092475 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Toe0" "ValveBiped.Bip01_L_Foot" 5.197849 0.000003 0.000001 -1.07699 -18.787923 0.56803 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine" "ValveBiped.Bip01_Pelvis" 0.002216 6.458786 1.446319 0.746106 89.999982 90.000269 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine1" "ValveBiped.Bip01_Spine" 2.408215 0.364851 0 0 -8.256092 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine2" "ValveBiped.Bip01_Spine1" -0.000008 -0.000001 -0.000008 0 -7.686288 0.000057 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine4" "ValveBiped.Bip01_Spine2" 0.000004 0 0.000004 0 18.686957 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Clavicle" "ValveBiped.Bip01_Spine4" 7.735882 -2.682817 1.055229 -72.493087 179.585891 88.338641 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_UpperArm" "ValveBiped.Bip01_L_Clavicle" 3.342681 -0.000015 -0.000003 -0.476873 -27.500601 -89.849636 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_UpperArm" 9.15345 0 0 -0.000002 0 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Hand" "ValveBiped.Bip01_L_Forearm" 7.520405 -0.000008 -0.000023 -0.000002 0 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger1" "ValveBiped.Bip01_L_Hand" 3.462774 -0.482658 1.323177 -11.086339 -2.29991 17.812005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger11" "ValveBiped.Bip01_L_Finger1" 1.069016 -0.000011 0.000001 1.294537 -1.689299 9.068202 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger12" "ValveBiped.Bip01_L_Finger11" 0.862694 0 0.000001 0.000002 0.000009 0.207928 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger2" "ValveBiped.Bip01_L_Hand" 3.468678 0.075912 0.668863 -4.890885 5.456906 18.403231 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger21" "ValveBiped.Bip01_L_Finger2" 1.262274 0 0 1.207047 -2.504112 -3.561678 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger22" "ValveBiped.Bip01_L_Finger21" 0.926164 0.000004 -0.000001 -0.000002 0 0.508783 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger3" "ValveBiped.Bip01_L_Hand" 3.40768 0.583675 0.007427 3.460036 9.91418 18.65945 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger31" "ValveBiped.Bip01_L_Finger3" 1.165821 0 0 0.66538 -1.311492 -1.38197 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger32" "ValveBiped.Bip01_L_Finger31" 0.848542 0.000004 0 0.000006 0.000014 0.595193 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger4" "ValveBiped.Bip01_L_Hand" 3.146757 0.953526 -0.653454 6.728988 13.142508 23.363388 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger41" "ValveBiped.Bip01_L_Finger4" 0.893027 0 0 0.766046 -0.392064 -2.022703 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger42" "ValveBiped.Bip01_L_Finger41" 0.743959 -0.000004 0.000002 0.000001 0.000007 -4.057797 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger0" "ValveBiped.Bip01_L_Hand" 0.989059 -0.841576 0.69801 -23.864097 -30.161695 113.745702 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger01" "ValveBiped.Bip01_L_Finger0" 1.356134 -0.000003 0.000002 -3.349562 -2.789784 -1.253809 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger02" "ValveBiped.Bip01_L_Finger01" 1.211851 0 0.000004 4.644921 13.716394 4.77446 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Ulna" "ValveBiped.Bip01_L_Forearm" 4.273478 0 0.000004 -0.000002 0 -29.386496 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Wrist" "ValveBiped.Bip01_L_Forearm" 7.525688 -0.014852 0.018257 -0.000002 0 -56.453306 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Clavicle" "ValveBiped.Bip01_Spine4" 7.733955 -2.738435 -1.055056 72.49306 176.417134 -91.661248 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_UpperArm" "ValveBiped.Bip01_R_Clavicle" 3.342669 -0.000011 -0.000003 -0.353572 -27.50106 90.353499 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_UpperArm" 9.15346 0.000002 0 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped.Bip01_R_Forearm" 7.520445 -0.000007 0.000008 0 0 -89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger1" "ValveBiped.Bip01_R_Hand" 3.459836 -0.477531 -1.368213 11.078088 -2.140512 -16.075422 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger11" "ValveBiped.Bip01_R_Finger1" 1.071385 0 -0.000001 -0.838235 0.086746 -9.19385 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger12" "ValveBiped.Bip01_R_Finger11" 0.845852 0 0 0.000005 0.000005 -0.20793 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger2" "ValveBiped.Bip01_R_Hand" 3.467143 0.078705 -0.711926 4.801388 5.276996 -18.573228 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger21" "ValveBiped.Bip01_R_Finger2" 1.259993 -0.000004 -0.000001 -2.076283 -2.470821 3.523456 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger22" "ValveBiped.Bip01_R_Finger21" 0.9252 0.000004 0 0.000003 0.000002 -0.508791 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger3" "ValveBiped.Bip01_R_Hand" 3.407554 0.584137 -0.048574 -3.071571 8.371774 -19.848745 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger31" "ValveBiped.Bip01_R_Finger3" 1.162177 -0.000004 -0.000003 -3.311702 0.547122 0.463458 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger32" "ValveBiped.Bip01_R_Finger31" 0.844557 -0.000004 -0.000002 -0.000004 0.000003 -0.595368 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger4" "ValveBiped.Bip01_R_Hand" 3.148049 0.951633 0.614174 -6.267588 14.46346 -26.206346 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger41" "ValveBiped.Bip01_R_Finger4" 0.871616 -0.000004 0 -1.18763 -2.173973 1.629242 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger42" "ValveBiped.Bip01_R_Finger41" 0.756073 0.000008 0.000002 0 0.000002 4.057725 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger0" "ValveBiped.Bip01_R_Hand" 0.98748 -0.838722 -0.739 23.981272 -30.597666 -116.046936 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger01" "ValveBiped.Bip01_R_Finger0" 1.342442 0.000003 0 1.037447 -1.645584 0.092721 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger02" "ValveBiped.Bip01_R_Finger01" 1.226255 0.000001 -0.000002 -0.000009 0.000008 0.118099 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Wrist" "ValveBiped.Bip01_R_Forearm" 7.510641 0.011701 -0.005806 0 0 56.41738 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Ulna" "ValveBiped.Bip01_R_Forearm" 4.27351 -0.000001 0 0 0 29.381391 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Neck1" "ValveBiped.Bip01_Spine4" 8.121353 -3.085696 0.000008 0 18.76706 179.999855 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Head1" "ValveBiped.Bip01_Neck1" 2.59108 0.592745 0.000008 -0.000057 20.137751 0.000172 0 0 0 0 0 0
$definebone "ValveBiped.qzr2" "ValveBiped.Bip01_Pelvis" -4.185485 6.727062 0.959291 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.qzl2" "ValveBiped.Bip01_Pelvis" 4.1852 6.727062 0.959291 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.qzr1" "ValveBiped.Bip01_Pelvis" -3.565473 6.697342 2.881543 0 0 0.000057 0 0 0 0 0 0
$definebone "ValveBiped.qzl1" "ValveBiped.Bip01_Pelvis" 3.565187 6.697342 2.881543 0 0 0.000057 0 0 0 0 0 0
$definebone "ValveBiped.qzf3" "ValveBiped.Bip01_Pelvis" -2.09082 6.687546 3.900203 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.qzf1" "ValveBiped.Bip01_Pelvis" 2.090534 6.687538 3.900203 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.qzf2" "ValveBiped.Bip01_Pelvis" 0.002298 6.679543 4.324637 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.attachment_bandage_armL" "ValveBiped.Bip01_L_Forearm" 0 -0.000007 -0.000034 6.507307 7.122669 78.669798 0 0 0 0 0 0
$definebone "ValveBiped.attachment_bandage_legL" "ValveBiped.Bip01_L_Thigh" 0 0 0 -3.939486 -74.439534 -4.413494 0 0 0 0 0 0
$definebone "ValveBiped.attachment_bandage_legR" "ValveBiped.Bip01_R_Thigh" 7.054213 0 0 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.attachment_armL_T" "ValveBiped.Bip01_L_Forearm" 0 -0.000007 -0.000034 6.507307 7.122669 78.669798 0 0 0 0 0 0
$definebone "ValveBiped.attachment_armR_T" "ValveBiped.Bip01_R_Forearm" 0 -0.000007 -0.000031 6.50731 7.122669 78.669798 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bone" "ValveBiped.Bip01_R_Hand" 2.856947 -1.536179 -0.973779 -15.61643 -90.427695 -86.009389 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bone_Clip" "ValveBiped.weapon_bone" 0.000004 0 9.999997 0.000002 -0.000005 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.L_weapon_bone" "ValveBiped.Bip01_L_Hand" 3.474381 -1.059628 0.560345 0 0.000002 111.110669 0 0 0 0 0 0
$definebone "39" "ValveBiped.Bip01_L_Forearm" 5.566257 -3.121374 -3.945534 -47.037061 138.256184 -130.461831 0 0 0 0 0 0
$definebone "40" "ValveBiped.Bip01_L_Forearm" 5.740513 1.610086 -4.539318 -41.050683 95.195427 -125.023785 0 0 0 0 0 0
$definebone "41" "ValveBiped.Bip01_L_Forearm" 5.68873 4.388187 -0.772991 -61.227127 60.511583 -87.441557 0 0 0 0 0 0
$definebone "42" "ValveBiped.Bip01_L_Forearm" 5.661381 3.11906 3.076061 -58.788278 1.105351 -19.890402 0 0 0 0 0 0
$definebone "43" "ValveBiped.Bip01_L_Forearm" 5.670792 -1.19054 3.643211 -45.562918 -23.555043 36.132035 0 0 0 0 0 0
$definebone "44" "ValveBiped.Bip01_L_Forearm" 5.556589 -4.248284 0.041744 -52.019984 -29.479766 61.073803 0 0 0 0 0 0
$definebone "45" "ValveBiped.Bip01_R_Forearm" 5.564425 -3.167082 3.934135 -46.900604 -42.028531 49.758922 0 0 0 0 0 0
$definebone "46" "ValveBiped.Bip01_R_Forearm" 5.748871 1.561858 4.544697 -40.848209 -84.942712 54.999087 0 0 0 0 0 0
$definebone "47" "ValveBiped.Bip01_R_Forearm" 5.70302 4.353406 0.78825 -61.050457 -119.428836 92.349383 0 0 0 0 0 0
$definebone "48" "ValveBiped.Bip01_R_Forearm" 5.672873 3.097997 -3.0653 -58.784986 -178.682666 159.717526 0 0 0 0 0 0
$definebone "49" "ValveBiped.Bip01_R_Forearm" 5.673 -1.209579 -3.64772 -45.644945 156.511531 -144.133753 0 0 0 0 0 0
$definebone "50" "ValveBiped.Bip01_R_Forearm" 5.552267 -4.279819 -0.057121 -52.120689 150.624031 -119.213931 0 0 0 0 0 0
$definebone "1" "ValveBiped.Bip01_Head1" 6.066059 -4.399103 0.466426 89.999921 -177.614042 0 0 0 0 0 0 0
$definebone "2" "ValveBiped.Bip01_Head1" 4.364262 -3.100502 2.982492 89.999921 -177.614111 0 0 0 0 0 0 0
$definebone "3" "ValveBiped.Bip01_Head1" 3.525539 -1.69032 4.42848 77.237022 -42.092779 134.478474 0 0 0 0 0 0
$definebone "4" "3" 0.000001 0 4.611076 14.00166 5.998585 -24.084456 0 0 0 0 0 0
$definebone "5" "4" 0.000002 0.000008 3.170837 15.267949 54.935375 26.251439 0 0 0 0 0 0
$definebone "6" "ValveBiped.Bip01_Head1" 3.353161 -1.198686 -3.900302 89.740537 133.649768 -45.812497 0 0 0 0 0 0
$definebone "7" "6" -0.000007 -0.000006 2.399864 -26.114217 -27.318691 5.60811 0 0 0 0 0 0
$definebone "8" "ValveBiped.Bip01_Head1" 1.56287 1.267968 -4.915435 89.999982 -177.614111 0 0 0 0 0 0 0
$definebone "9" "ValveBiped.Bip01_Head1" 1.562862 1.267968 4.920134 89.999982 -177.614111 0 0 0 0 0 0 0
$definebone "10" "ValveBiped.Bip01_Head1" 2.746204 4.273803 -3.225416 89.999927 -177.614001 0 0 0 0 0 0 0
$definebone "11" "ValveBiped.Bip01_Head1" 2.746197 4.273803 3.230115 89.999941 -177.613933 0 0 0 0 0 0 0
$definebone "12" "ValveBiped.Bip01_Head1" 3.059566 5.49092 -1.251691 89.999982 -177.614042 0 0 0 0 0 0 0
$definebone "13" "ValveBiped.Bip01_Head1" 3.059566 5.49092 1.256389 89.999982 -177.614042 0 0 0 0 0 0 0
$definebone "14" "ValveBiped.Bip01_Head1" 5.225567 3.044313 -5.135979 89.999982 -177.614042 0 0 0 0 0 0 0
$definebone "15" "ValveBiped.Bip01_Head1" 4.144077 3.311076 5.978313 89.999927 -177.614042 0 0 0 0 0 0 0
$definebone "16" "ValveBiped.Bip01_Spine4" 4.56654 2.312307 0.959991 -85.321897 33.012568 -55.396079 0 0 0 0 0 0
$definebone "17" "16" 0 0.000002 1.757072 -1.990456 -2.662936 9.685855 0 0 0 0 0 0
$definebone "18" "17" 0 0 1.726295 -5.291955 -7.109319 6.994443 0 0 0 0 0 0
$definebone "19" "ValveBiped.Bip01_Spine4" 4.438435 2.328088 -0.790338 -88.336455 32.913671 -54.337888 0 0 0 0 0 0
$definebone "20" "19" 0 -0.000008 1.747501 1.620898 3.31376 12.68231 0 0 0 0 0 0
$definebone "21" "ValveBiped.Bip01_Spine4" 5.948517 1.814456 1.117855 2.227374 91.724926 3.723423 0 0 0 0 0 0
$definebone "22" "ValveBiped.Bip01_Spine4" 5.619762 2.086596 -1.345529 -20.4897 -143.631857 128.366753 0 0 0 0 0 0
$definebone "23" "ValveBiped.Bip01_Spine4" 6.465996 -6.191613 -4.30045 -38.409972 -46.118107 -134.12004 0 0 0 0 0 0
$definebone "24" "23" -0.000006 -0.000002 2.390762 24.503512 61.128342 -67.482009 0 0 0 0 0 0
$definebone "25" "ValveBiped.Bip01_Spine4" 6.466015 -6.191574 4.295784 -38.409582 133.881571 45.880464 0 0 0 0 0 0
$definebone "26" "25" 0.000008 0 2.390762 -24.503572 -61.128294 -67.481996 0 0 0 0 0 0
$definebone "27" "ValveBiped.Bip01_Pelvis" 0.005133 2.808422 -4.398442 -0.000049 0.11485 105.501814 0 0 0 0 0 0
$definebone "28" "ValveBiped.Bip01_Pelvis" -3.066498 2.741905 -3.783654 9.846154 -7.28402 107.073727 0 0 0 0 0 0
$definebone "29" "ValveBiped.Bip01_Pelvis" 3.06622 2.741901 -3.783661 -9.846188 7.284025 107.073741 0 0 0 0 0 0
$definebone "30" "ValveBiped.Bip01_Pelvis" -5.481394 2.58847 -2.253896 14.531043 -11.026606 105.741901 0 0 0 0 0 0
$definebone "31" "ValveBiped.Bip01_Pelvis" 5.481114 2.588467 -2.253904 -14.53104 11.026571 105.741949 0 0 0 0 0 0
$definebone "32" "ValveBiped.qzr2" -2.280648 -4.498905 -0.479565 20.219175 -17.486466 98.441044 0 0 0 0 0 0
$definebone "33" "ValveBiped.qzl2" 2.280643 -4.498905 -0.479554 -20.219177 17.486461 98.441044 0 0 0 0 0 0
$definebone "34" "ValveBiped.qzr1" -1.859879 -4.754356 0.674201 16.80622 -17.371603 88.075651 0 0 0 0 0 0
$definebone "35" "ValveBiped.qzl1" 1.859928 -4.754326 0.674211 -16.806734 17.372349 88.075597 0 0 0 0 0 0
$definebone "36" "ValveBiped.qzf3" -0.804947 -4.82856 1.023718 8.964748 -10.097784 83.169069 0 0 0 0 0 0
$definebone "37" "ValveBiped.qzf1" 0.804929 -4.828568 1.023715 -8.964804 10.097613 83.16913 0 0 0 0 0 0
$definebone "38" "ValveBiped.qzf2" 0 -4.6413 1.158422 0 0 81.302364 0 0 0 0 0 0

$bonemerge "ValveBiped.Bip01_Pelvis"
$bonemerge "ValveBiped.Bip01_R_Thigh"
$bonemerge "ValveBiped.Bip01_R_Calf"
$bonemerge "ValveBiped.Bip01_R_Foot"
$bonemerge "ValveBiped.Bip01_R_Toe0"
$bonemerge "ValveBiped.Bip01_L_Thigh"
$bonemerge "ValveBiped.Bip01_L_Calf"
$bonemerge "ValveBiped.Bip01_L_Foot"
$bonemerge "ValveBiped.Bip01_L_Toe0"
$bonemerge "ValveBiped.Bip01_Spine"
$bonemerge "ValveBiped.Bip01_Spine1"
$bonemerge "ValveBiped.Bip01_Spine2"
$bonemerge "ValveBiped.Bip01_Spine4"
$bonemerge "ValveBiped.Bip01_L_Clavicle"
$bonemerge "ValveBiped.Bip01_L_UpperArm"
$bonemerge "ValveBiped.Bip01_L_Forearm"
$bonemerge "ValveBiped.Bip01_L_Hand"
$bonemerge "ValveBiped.Bip01_L_Finger1"
$bonemerge "ValveBiped.Bip01_L_Finger11"
$bonemerge "ValveBiped.Bip01_L_Finger12"
$bonemerge "ValveBiped.Bip01_L_Finger2"
$bonemerge "ValveBiped.Bip01_L_Finger21"
$bonemerge "ValveBiped.Bip01_L_Finger22"
$bonemerge "ValveBiped.Bip01_L_Finger3"
$bonemerge "ValveBiped.Bip01_L_Finger31"
$bonemerge "ValveBiped.Bip01_L_Finger32"
$bonemerge "ValveBiped.Bip01_L_Finger4"
$bonemerge "ValveBiped.Bip01_L_Finger41"
$bonemerge "ValveBiped.Bip01_L_Finger42"
$bonemerge "ValveBiped.Bip01_L_Finger0"
$bonemerge "ValveBiped.Bip01_L_Finger01"
$bonemerge "ValveBiped.Bip01_L_Finger02"
$bonemerge "ValveBiped.Bip01_L_Ulna"
$bonemerge "ValveBiped.Bip01_L_Wrist"
$bonemerge "ValveBiped.Bip01_R_Clavicle"
$bonemerge "ValveBiped.Bip01_R_UpperArm"
$bonemerge "ValveBiped.Bip01_R_Forearm"
$bonemerge "ValveBiped.Bip01_R_Hand"
$bonemerge "ValveBiped.Bip01_R_Finger1"
$bonemerge "ValveBiped.Bip01_R_Finger11"
$bonemerge "ValveBiped.Bip01_R_Finger12"
$bonemerge "ValveBiped.Bip01_R_Finger2"
$bonemerge "ValveBiped.Bip01_R_Finger21"
$bonemerge "ValveBiped.Bip01_R_Finger22"
$bonemerge "ValveBiped.Bip01_R_Finger3"
$bonemerge "ValveBiped.Bip01_R_Finger31"
$bonemerge "ValveBiped.Bip01_R_Finger32"
$bonemerge "ValveBiped.Bip01_R_Finger4"
$bonemerge "ValveBiped.Bip01_R_Finger41"
$bonemerge "ValveBiped.Bip01_R_Finger42"
$bonemerge "ValveBiped.Bip01_R_Finger0"
$bonemerge "ValveBiped.Bip01_R_Finger01"
$bonemerge "ValveBiped.Bip01_R_Finger02"
$bonemerge "ValveBiped.Bip01_R_Wrist"
$bonemerge "ValveBiped.Bip01_R_Ulna"
$bonemerge "ValveBiped.weapon_bone"
$bonemerge "ValveBiped.weapon_bone_Clip"
$bonemerge "ValveBiped.L_weapon_bone"

$proceduralbones "survivor_namvet.vrd"

$jigglebone "39"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "40"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "41"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "42"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "43"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "44"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "45"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "46"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "47"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "48"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "49"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "50"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "1"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "2"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "3"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "4"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "5"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "6"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "7"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "8"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "9"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "10"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "11"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "12"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "13"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "14"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "15"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "16"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "17"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "18"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "19"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "20"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "21"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "22"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "23"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "24"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "25"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "26"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "27"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "28"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "29"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "30"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "31"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "32"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "33"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "34"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "35"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "36"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "37"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}
$jigglebone "38"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 16
	}
}

$poseparameter "body_pitch" -90 90 loop 0
$poseparameter "body_yaw" -90 90 loop 0
$poseparameter "head_pitch" -90 90 loop 0
$poseparameter "head_yaw" -90 90 loop 0

$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0
$ikchain "ikclip" "ValveBiped.weapon_bone_Clip" knee 0.707 -0.707 0

$ikautoplaylock "rfoot" 1 0.1
$ikautoplaylock "lfoot" 1 0.1

$weightlist "weights_Idle_Standing_Align" {
	 "ValveBiped.Bip01_Pelvis" 0
	 "ValveBiped.Bip01_R_Thigh" 0
	 "ValveBiped.Bip01_R_Calf" 0
	 "ValveBiped.Bip01_R_Foot" 0
	 "ValveBiped.Bip01_R_Toe0" 0
	 "ValveBiped.Bip01_L_Thigh" 0
	 "ValveBiped.Bip01_L_Calf" 0
	 "ValveBiped.Bip01_L_Foot" 0
	 "ValveBiped.Bip01_L_Toe0" 0
	 "ValveBiped.Bip01_Spine" 0
	 "ValveBiped.Bip01_Spine1" 0
	 "ValveBiped.Bip01_Spine2" 0
	 "ValveBiped.Bip01_Spine4" 0
	 "ValveBiped.Bip01_L_Clavicle" 0
	 "ValveBiped.Bip01_L_UpperArm" 0
	 "ValveBiped.Bip01_L_Forearm" 0
	 "ValveBiped.Bip01_L_Hand" 0
	 "ValveBiped.Bip01_L_Finger1" 0
	 "ValveBiped.Bip01_L_Finger11" 0
	 "ValveBiped.Bip01_L_Finger12" 0
	 "ValveBiped.Bip01_L_Finger2" 0
	 "ValveBiped.Bip01_L_Finger21" 0
	 "ValveBiped.Bip01_L_Finger22" 0
	 "ValveBiped.Bip01_L_Finger3" 0
	 "ValveBiped.Bip01_L_Finger31" 0
	 "ValveBiped.Bip01_L_Finger32" 0
	 "ValveBiped.Bip01_L_Finger4" 0
	 "ValveBiped.Bip01_L_Finger41" 0
	 "ValveBiped.Bip01_L_Finger42" 0
	 "ValveBiped.Bip01_L_Finger0" 0
	 "ValveBiped.Bip01_L_Finger01" 0
	 "ValveBiped.Bip01_L_Finger02" 0
	 "ValveBiped.Bip01_L_Ulna" 0
	 "ValveBiped.Bip01_L_Wrist" 0
	 "ValveBiped.Bip01_R_Clavicle" 0
	 "ValveBiped.Bip01_R_UpperArm" 0
	 "ValveBiped.Bip01_R_Forearm" 0
	 "ValveBiped.Bip01_R_Hand" 0
	 "ValveBiped.Bip01_R_Finger1" 0
	 "ValveBiped.Bip01_R_Finger11" 0
	 "ValveBiped.Bip01_R_Finger12" 0
	 "ValveBiped.Bip01_R_Finger2" 0
	 "ValveBiped.Bip01_R_Finger21" 0
	 "ValveBiped.Bip01_R_Finger22" 0
	 "ValveBiped.Bip01_R_Finger3" 0
	 "ValveBiped.Bip01_R_Finger31" 0
	 "ValveBiped.Bip01_R_Finger32" 0
	 "ValveBiped.Bip01_R_Finger4" 0
	 "ValveBiped.Bip01_R_Finger41" 0
	 "ValveBiped.Bip01_R_Finger42" 0
	 "ValveBiped.Bip01_R_Finger0" 0
	 "ValveBiped.Bip01_R_Finger01" 0
	 "ValveBiped.Bip01_R_Finger02" 0
	 "ValveBiped.Bip01_R_Wrist" 0
	 "ValveBiped.Bip01_R_Ulna" 0
	 "ValveBiped.Bip01_Neck1" 0
	 "ValveBiped.Bip01_Head1" 0
	 "ValveBiped.qzr2" 0
	 "ValveBiped.qzl2" 0
	 "ValveBiped.qzr1" 0
	 "ValveBiped.qzl1" 0
	 "ValveBiped.qzf3" 0
	 "ValveBiped.qzf1" 0
	 "ValveBiped.qzf2" 0
	 "ValveBiped.attachment_bandage_armL" 0
	 "ValveBiped.attachment_bandage_legL" 0
	 "ValveBiped.attachment_bandage_legR" 0
	 "ValveBiped.attachment_armL_T" 0
	 "ValveBiped.attachment_armR_T" 0
	 "ValveBiped.weapon_bone" 0
	 "ValveBiped.weapon_bone_Clip" 0
	 "ValveBiped.L_weapon_bone" 0
	 "39" 0
	 "40" 0
	 "41" 0
	 "42" 0
	 "43" 0
	 "44" 0
	 "45" 0
	 "46" 0
	 "47" 0
	 "48" 0
	 "49" 0
	 "50" 0
	 "1" 0
	 "2" 0
	 "3" 0
	 "4" 0
	 "5" 0
	 "6" 0
	 "7" 0
	 "8" 0
	 "9" 0
	 "10" 0
	 "11" 0
	 "12" 0
	 "13" 0
	 "14" 0
	 "15" 0
	 "16" 0
	 "17" 0
	 "18" 0
	 "19" 0
	 "20" 0
	 "21" 0
	 "22" 0
	 "23" 0
	 "24" 0
	 "25" 0
	 "26" 0
	 "27" 0
	 "28" 0
	 "29" 0
	 "30" 0
	 "31" 0
	 "32" 0
	 "33" 0
	 "34" 0
	 "35" 0
	 "36" 0
	 "37" 0
	 "38" 0
}

$animation "a_proportions_corrective_animation" "survivor_namvet_anims\a_proportions_corrective_animation.smd" {
}

$animation "a_proportions" "survivor_namvet_anims\a_proportions.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_proportions_corrective_animation" 0
}

$sequence "Namvet" {
	"survivor_namvet_anims\Namvet.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 3
	ikrule "ikclip" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 4
}

$sequence "ragdoll" {
	"survivor_namvet_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 3
	ikrule "ikclip" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 4
}

$declaresequence "Idle_Standing_Align"

$declaresequence "Idlenoise"

$declaresequence "InjuredIdlenoise"

$declaresequence "CalmIdlenoise"

$declaresequence "CalmIdlenoisePistol"

$declaresequence "TeenAngst_Shoot_Pistol_Standing_layer"

$declaresequence "TeenAngst_Shoot_Pistol_Standing_arms"

$declaresequence "Idle_Standing_Pistol"

$declaresequence "TeenAngst_AimMatrix_Elites_Standing_layer"

$declaresequence "TeenAngst_AimMatrix_Elites_Standing_arms"

$declaresequence "Idle_Standing_Elites"

$declaresequence "TeenAngst_AimMatrix_Rifle_Standing_layer"

$declaresequence "TeenAngst_AimMatrix_Rifle_Standing_arms"

$declaresequence "Idle_Standing_Rifle"

$declaresequence "TeenAngst_AimMatrix_Shotgun_Standing_layer"

$declaresequence "TeenAngst_AimMatrix_Shotgun_Standing_arms"

$declaresequence "Idle_Standing_Shotgun"

$declaresequence "TeenAngst_AimMatrix_PumpShotgun_Standing_layer"

$declaresequence "TeenAngst_AimMatrix_PumpShotgun_Standing_arms"

$declaresequence "Idle_Standing_PumpShotgun"

$declaresequence "TeenAngst_AimMatrix_Grenade_Standing_layer"

$declaresequence "TeenAngst_AimMatrix_Grenade_Standing_arms"

$declaresequence "Idle_Standing_Grenade"

$declaresequence "TeenAngst_AimMatrix_FirstAidKit_Standing_layer"

$declaresequence "TeenAngst_AimMatrix_FirstAidKit_Standing_arms"

$declaresequence "Idle_Standing_FirstAidKit"

$declaresequence "TeenAngst_AimMatrix_SMG_Standing_layer"

$declaresequence "TeenAngst_AimMatrix_SMG_Standing_arms"

$declaresequence "Idle_Standing_SMG"

$declaresequence "TeenAngst_AimMatrix_Sniper_Standing_layer"

$declaresequence "TeenAngst_AimMatrix_Sniper_Standing_arms"

$declaresequence "Idle_Standing_Sniper"

$declaresequence "TeenAngst_AimMatrix_SniperZoomed_Standing_layer"

$declaresequence "TeenAngst_AimMatrix_SniperZoomed_Standing_arms"

$declaresequence "Idle_Standing_SniperZoomed"

$declaresequence "TeenAngst_AimMatrix_GasCan_Standing_layer"

$declaresequence "TeenAngst_AimMatrix_GasCan_Standing_arms"

$declaresequence "Idle_Standing_GasCan"

$declaresequence "TeenAngst_AimMatrix_o2_Standing_layer"

$declaresequence "TeenAngst_AimMatrix_o2_Standing_arms"

$declaresequence "Idle_Standing_o2"

$declaresequence "Idle_Crouching_Pistol"

$declaresequence "Idle_Crouching_Elites"

$declaresequence "Idle_Crouching_Rifle"

$declaresequence "Idle_Crouching_Shotgun"

$declaresequence "Idle_Crouching_PumpShotgun"

$declaresequence "Idle_Crouching_Grenade"

$declaresequence "Idle_Crouching_FirstAidKit"

$declaresequence "Idle_Crouching_SMG"

$declaresequence "Idle_Crouching_Sniper"

$declaresequence "Idle_Crouching_SniperZoomed"

$declaresequence "Idle_Crouching_GasCan"

$declaresequence "Idle_Crouching_o2"

$declaresequence "TeenAngst_AimMatrix_Pistol_Standing_Calm_layer"

$declaresequence "TeenAngst_AimMatrix_Pistol_Standing_Calm_arms"

$declaresequence "Idle_Calm_Pistol"

$declaresequence "TeenAngst_AimMatrix_Elites_Standing_Calm_layer"

$declaresequence "TeenAngst_AimMatrix_Elites_Standing_Calm_arms"

$declaresequence "Idle_Calm_Elites"

$declaresequence "TeenAngst_AimMatrix_SMG_Standing_Calm_layer"

$declaresequence "TeenAngst_AimMatrix_SMG_Standing_Calm_arms"

$declaresequence "Idle_Calm_SMG"

$declaresequence "TeenAngst_AimMatrix_Rifle_Standing_Calm_layer"

$declaresequence "TeenAngst_AimMatrix_Rifle_Standing_Calm_arms"

$declaresequence "Idle_Calm_Rifle"

$declaresequence "TeenAngst_AimMatrix_Shotgun_Standing_Calm_layer"

$declaresequence "TeenAngst_AimMatrix_Shotgun_Standing_Calm_arms"

$declaresequence "Idle_Calm_Shotgun"

$declaresequence "TeenAngst_AimMatrix_Sniper_Standing_Calm_layer"

$declaresequence "TeenAngst_AimMatrix_Sniper_Standing_Calm_arms"

$declaresequence "Idle_Calm_Sniper"

$declaresequence "TeenAngst_AimMatrix_PumpShotgun_Standing_Calm_layer"

$declaresequence "TeenAngst_AimMatrix_PumpShotgun_Standing_Calm_arms"

$declaresequence "Idle_Calm_PumpShotgun"

$declaresequence "TeenAngst_AimMatrix_GasCan_Standing_Calm_layer"

$declaresequence "TeenAngst_AimMatrix_GasCan_Standing_Calm_arms"

$declaresequence "Idle_Calm_GasCan"

$declaresequence "TeenAngst_AimMatrix_o2_Standing_Calm_layer"

$declaresequence "TeenAngst_AimMatrix_o2_Standing_Calm_arms"

$declaresequence "Idle_Calm_O2"

$declaresequence "TeenAngst_AimMatrix_Pistol_Injured_Standing_layer"

$declaresequence "TeenAngst_AimMatrix_Pistol_Injured_Standing_arms"

$declaresequence "Idle_Injured_Pistol"

$declaresequence "TeenAngst_AimMatrix_Elites_Injured_Standing_layer"

$declaresequence "TeenAngst_AimMatrix_Elites_Injured_Standing_arms"

$declaresequence "Idle_Injured_Elites"

$declaresequence "TeenAngst_AimMatrix_Rifle_Injured_Standing_layer"

$declaresequence "TeenAngst_AimMatrix_Rifle_Injured_Standing_arms"

$declaresequence "Idle_Injured_Rifle"

$declaresequence "TeenAngst_AimMatrix_Grenade_Injured_Standing_layer"

$declaresequence "TeenAngst_AimMatrix_Grenade_Injured_Standing_arms"

$declaresequence "Idle_Injured_Grenade"

$declaresequence "TeenAngst_AimMatrix_FirstAidKit_Injured_Standing_layer"

$declaresequence "TeenAngst_AimMatrix_FirstAidKit_Injured_Standing_arms"

$declaresequence "Idle_Injured_FirstAidKit"

$declaresequence "TeenAngst_AimMatrix_SMG_Injured_Standing_layer"

$declaresequence "TeenAngst_AimMatrix_SMG_Injured_Standing_arms"

$declaresequence "Idle_Injured_SMG"

$declaresequence "TeenAngst_AimMatrix_PumpShotgun_Injured_Standing_layer"

$declaresequence "TeenAngst_AimMatrix_PumpShotgun_Injured_Standing_arms"

$declaresequence "Idle_Injured_PumpShotgun"

$declaresequence "TeenAngst_AimMatrix_Sniper_Injured_Standing_layer"

$declaresequence "TeenAngst_AimMatrix_Sniper_Injured_Standing_arms"

$declaresequence "Idle_Injured_Sniper"

$declaresequence "TeenAngst_AimMatrix_SniperZoomed_Injured_Standing_layer"

$declaresequence "TeenAngst_AimMatrix_SniperZoomed_Injured_Standing_arms"

$declaresequence "Idle_Injured_SniperZoomed"

$declaresequence "TeenAngst_AimMatrix_GasCan_Injured_Standing_layer"

$declaresequence "TeenAngst_AimMatrix_GasCan_Injured_Standing_arms"

$declaresequence "Idle_Injured_GasCan"

$declaresequence "TeenAngst_AimMatrix_O2_Injured_Standing_layer"

$declaresequence "TeenAngst_AimMatrix_O2_Injured_Standing_arms"

$declaresequence "Idle_Injured_O2"

$declaresequence "Turn"

$declaresequence "Turn_02"

$declaresequence "WalkN_Pistol_layer"

$declaresequence "WalkN_Pistol_arms"

$declaresequence "Walk_Pistol"

$declaresequence "WalkN_Elites_layer"

$declaresequence "WalkN_Elites_arms"

$declaresequence "Walk_Elites"

$declaresequence "WalkN_Shotgun_layer"

$declaresequence "WalkN_Shotgun_arms"

$declaresequence "Walk_Shotgun"

$declaresequence "WalkN_Grenade_layer"

$declaresequence "WalkN_Grenade_arms"

$declaresequence "Walk_Grenade"

$declaresequence "WalkN_FirstAidKit_layer"

$declaresequence "WalkN_FirstAidKit_arms"

$declaresequence "Walk_FirstAidKit"

$declaresequence "WalkN_SMG_layer"

$declaresequence "WalkN_SMG_arms"

$declaresequence "Walk_SMG"

$declaresequence "WalkN_Sniper_layer"

$declaresequence "WalkN_Sniper_arms"

$declaresequence "Walk_Sniper"

$declaresequence "WalkN_PumpShotgun_layer"

$declaresequence "WalkN_PumpShotgun_arms"

$declaresequence "Walk_PumpShotgun"

$declaresequence "WalkN_GasCan_layer"

$declaresequence "WalkN_GasCan_arms"

$declaresequence "Walk_GasCan"

$declaresequence "WalkN_O2_layer"

$declaresequence "WalkN_O2_arms"

$declaresequence "Walk_O2"

$declaresequence "CrouchWalkN_Pistol_layer"

$declaresequence "CrouchWalkN_Pistol_arms"

$declaresequence "CrouchWalk_Pistol"

$declaresequence "CrouchWalkN_Elites_layer"

$declaresequence "CrouchWalkN_Elites_arms"

$declaresequence "CrouchWalk_Elites"

$declaresequence "CrouchWalkN_Shotgun_layer"

$declaresequence "CrouchWalkN_Shotgun_arms"

$declaresequence "CrouchWalk_Shotgun"

$declaresequence "CrouchWalkN_Grenade_layer"

$declaresequence "CrouchWalkN_Grenade_arms"

$declaresequence "CrouchWalk_Grenade"

$declaresequence "CrouchWalkN_FirstAidKit_layer"

$declaresequence "CrouchWalkN_FirstAidKit_arms"

$declaresequence "CrouchWalk_FirstAidKit"

$declaresequence "CrouchWalkN_SMG_layer"

$declaresequence "CrouchWalkN_SMG_arms"

$declaresequence "CrouchWalk_SMG"

$declaresequence "CrouchWalkN_Sniper_layer"

$declaresequence "CrouchWalkN_Sniper_arms"

$declaresequence "CrouchWalk_Sniper"

$declaresequence "CrouchWalkN_PumpShotgun_layer"

$declaresequence "CrouchWalkN_PumpShotgun_arms"

$declaresequence "CrouchWalk_PumpShotgun"

$declaresequence "CrouchWalkN_GasCan_layer"

$declaresequence "CrouchWalkN_GasCan_arms"

$declaresequence "CrouchWalk_GasCan"

$declaresequence "CrouchWalkN_O2_layer"

$declaresequence "CrouchWalkN_O2_arms"

$declaresequence "CrouchWalk_O2"

$declaresequence "RunN_Pistol_layer"

$declaresequence "RunN_Pistol_arms"

$declaresequence "Run_Pistol"

$declaresequence "RunN_Elites_layer"

$declaresequence "RunN_Elites_arms"

$declaresequence "Run_Elites"

$declaresequence "RunN_Shotgun_layer"

$declaresequence "RunN_Shotgun_arms"

$declaresequence "Run_Shotgun"

$declaresequence "RunN_Grenade_layer"

$declaresequence "RunN_Grenade_arms"

$declaresequence "Run_Grenade"

$declaresequence "RunN_FirstAidKit_layer"

$declaresequence "RunN_FirstAidKit_arms"

$declaresequence "Run_FirstAidKit"

$declaresequence "RunN_SMG_layer"

$declaresequence "RunN_SMG_arms"

$declaresequence "Run_SMG"

$declaresequence "RunN_Sniper_layer"

$declaresequence "RunN_Sniper_arms"

$declaresequence "Run_Sniper"

$declaresequence "RunN_PumpShotgun_layer"

$declaresequence "RunN_PumpShotgun_arms"

$declaresequence "Run_PumpShotgun"

$declaresequence "RunN_GasCan_layer"

$declaresequence "RunN_GasCan_arms"

$declaresequence "Run_GasCan"

$declaresequence "RunN_O2_layer"

$declaresequence "RunN_O2_arms"

$declaresequence "Run_O2"

$declaresequence "CalmWalkN_Pistol_layer"

$declaresequence "CalmWalkN_Pistol_arms"

$declaresequence "CalmWalk_Pistol"

$declaresequence "CalmWalkN_Elites_layer"

$declaresequence "CalmWalkN_Elites_arms"

$declaresequence "CalmWalk_Elites"

$declaresequence "CalmWalkN_SMG_layer"

$declaresequence "CalmWalkN_SMG_arms"

$declaresequence "CalmWalk_SMG"

$declaresequence "CalmWalkN_Rifle_layer"

$declaresequence "CalmWalkN_Rifle_arms"

$declaresequence "CalmWalk_Rifle"

$declaresequence "CalmWalkN_Sniper_layer"

$declaresequence "CalmWalkN_Sniper_arms"

$declaresequence "CalmWalk_Sniper"

$declaresequence "CalmWalkN_PumpShotgun_layer"

$declaresequence "CalmWalkN_PumpShotgun_arms"

$declaresequence "CalmWalk_PumpShotgun"

$declaresequence "CalmRunN_Pistol_layer"

$declaresequence "CalmRunN_Pistol_arms"

$declaresequence "CalmRun_Pistol"

$declaresequence "CalmRunN_Elites_layer"

$declaresequence "CalmRunN_Elites_arms"

$declaresequence "CalmRun_Elites"

$declaresequence "CalmRunN_SMG_layer"

$declaresequence "CalmRunN_SMG_arms"

$declaresequence "CalmRun_SMG"

$declaresequence "CalmRunN_Rifle_layer"

$declaresequence "CalmRunN_Rifle_arms"

$declaresequence "CalmRun_Rifle"

$declaresequence "CalmRunN_Sniper_layer"

$declaresequence "CalmRunN_Sniper_arms"

$declaresequence "CalmRun_Sniper"

$declaresequence "CalmRunN_PumpShotgun_layer"

$declaresequence "CalmRunN_PumpShotgun_arms"

$declaresequence "CalmRun_PumpShotgun"

$declaresequence "Walk_Rifle"

$declaresequence "CrouchWalk_Rifle"

$declaresequence "Run_Rifle"

$declaresequence "LimpWalk_Pistol"

$declaresequence "LimpWalk_Elites"

$declaresequence "LimpWalk_Rifle"

$declaresequence "LimpWalk_Grenade"

$declaresequence "LimpWalk_FirstAidKit"

$declaresequence "LimpWalk_SMG"

$declaresequence "LimpWalk_Sniper"

$declaresequence "LimpWalk_PumpShotgun"

$declaresequence "LimpWalk_GasCan"

$declaresequence "LimpWalk_O2"

$declaresequence "LimpRun_Pistol"

$declaresequence "LimpRun_Elites"

$declaresequence "LimpRun_Rifle"

$declaresequence "LimpRun_Grenade"

$declaresequence "LimpRun_FirstAidKit"

$declaresequence "LimpRun_SMG"

$declaresequence "LimpRun_Sniper"

$declaresequence "LimpRun_PumpShotgun"

$declaresequence "LimpRun_GasCan"

$declaresequence "LimpRun_O2"

$declaresequence "Push_Pull"

$declaresequence "TeenAngst_AimMatrix_Pistol_Standing"

$declaresequence "TeenAngst_AimMatrix_Pistol_CrouchWalking"

$declaresequence "NamVet_AimMatrix_Pistol_Injured_Standing"

$declaresequence "TeenAngst_AimMatrix_Pistol_LimpRunning"

$declaresequence "TeenAngst_AimMatrix_Pistol_Standing_Calm"

$declaresequence "NamVet_AimMatrix_Pistol_Standing_Calm_Checkpoint"

$declaresequence "TeenAngst_AimMatrix_Elites_Standing"

$declaresequence "NamVet_AimMatrix_Elites_Injured_Standing"

$declaresequence "TeenAngst_AimMatrix_Elites_Walking"

$declaresequence "TeenAngst_AimMatrix_Elites_Running"

$declaresequence "TeenAngst_AimMatrix_Elites_CrouchWalking"

$declaresequence "TeenAngst_AimMatrix_Elites_LimpWalking"

$declaresequence "TeenAngst_AimMatrix_Elites_LimpRunning"

$declaresequence "NamVet_AimMatrix_Rifle_Standing"

$declaresequence "NamVet_AimMatrix_Rifle_Running"

$declaresequence "NamVet_AimMatrix_Rifle_Walking"

$declaresequence "NamVet_AimMatrix_Rifle_CrouchWalking"

$declaresequence "NamVet_AimMatrix_Rifle_LimpRunning"

$declaresequence "NamVet_AimMatrix_Rifle_Standing_Calm"

$declaresequence "NamVet_AimMatrix_Shotgun_Standing"

$declaresequence "NamVet_AimMatrix_Shotgun_CrouchWalking"

$declaresequence "NamVet_AimMatrix_Grenade_Standing"

$declaresequence "NamVet_AimMatrix_Grenade_Crouching"

$declaresequence "NamVet_AimMatrix_Grenade_CrouchWalking"

$declaresequence "NamVet_AimMatrix_Shoot_Grenade_Standing_Ready"

$declaresequence "NamVet_AimMatrix_Shoot_Grenade_Standing"

$declaresequence "NamVet_AimMatrix_Shoot_Grenade_Running"

$declaresequence "NamVet_AimMatrix_SMG_Standing_Calm"

$declaresequence "NamVet_AimMatrix_SMG_Standing"

$declaresequence "NamVet_AimMatrix_SMG_Crouching"

$declaresequence "NamVet_AimMatrix_SMG_Walking"

$declaresequence "NamVet_AimMatrix_SMG_CrouchWalking"

$declaresequence "NamVet_AimMatrix_Sniper_Standing"

$declaresequence "NamVet_AimMatrix_SniperZoomed_Injured_Standing"

$declaresequence "NamVet_AimMatrix_SniperZoomed_Standing"

$declaresequence "NamVet_AimMatrix_Sniper_Crouching"

$declaresequence "NamVet_AimMatrix_SniperZoomed_Crouching"

$declaresequence "NamVet_AimMatrix_PumpShotgun_Standing"

$declaresequence "NamVet_AimMatrix_PumpShotgun_Walking"

$declaresequence "NamVet_AimMatrix_PumpShotgun_Running"

$declaresequence "NamVet_AimMatrix_PumpShotgun_CrouchWalking"

$declaresequence "NamVet_AimMatrix_PumpShotgun_LimpRunning"

$declaresequence "NamVet_AimMatrix_Pickup_Rifle_Standing"

$declaresequence "NamVet_AimMatrix_Melee_Sweep_Rifle_Standing"

$declaresequence "NamVet_AimMatrix_Melee_Shove_Rifle_Standing"

$declaresequence "NamVet_AimMatrix_Melee_Straight_Rifle_Standing"

$declaresequence "NamVet_AimMatrix_Melee_Sweep_Rifle_Running"

$declaresequence "NamVet_AimMatrix_Melee_Sweep_Rifle_Running_03"

$declaresequence "NamVet_AimMatrix_gasCan_Standing"

$declaresequence "NamVet_AimMatrix_gasCan_Crouching"

$declaresequence "NamVet_AimMatrix_gasCan_Injured_Standing"

$declaresequence "NamVet_AimMatrix_o2_Standing"

$declaresequence "NamVet_AimMatrix_o2_Crouching"

$declaresequence "NamVet_AimMatrix_o2_Injured_Standing"

$declaresequence "NamVet_AimMatrix_Pistol_Crouching"

$declaresequence "NamVet_AimMatrix_Rifle_Crouching"

$declaresequence "NamVet_AimMatrix_Elites_Crouching"

$declaresequence "NamVet_AimMatrix_Shotgun_Crouching"

$declaresequence "NamVet_AimMatrix_PumpShotgun_Crouching"

$declaresequence "NamVet_AimMatrix_Pistol_Incap"

$declaresequence "NamVet_AimMatrix_Elites_Incap"

$declaresequence "NamVet_AimMatrix_Ladder_Climb"

$declaresequence "DummyAim"

$declaresequence "NamVet_BodyLeans"

$declaresequence "NamVet_AimMatrix_MiniGun"

$declaresequence "Idle_Standing_Minigun"

$declaresequence "Shoot_Standing_Minigun"

$declaresequence "Shoot_Standing_PISTOL"

$declaresequence "Shoot_Standing_ELITES_R"

$declaresequence "Shoot_Standing_ELITES_L"

$declaresequence "Shoot_Standing_RIFLE"

$declaresequence "Shoot_Standing_XM1014"

$declaresequence "Shoot_Standing_SMG"

$declaresequence "Shoot_Standing_M3S90"

$declaresequence "Shoot_Standing_PumpShotgun"

$declaresequence "Gren_Running_Subtract"

$declaresequence "Gren_Prep_Delta"

$declaresequence "Gren_Throw_Delta"

$declaresequence "Gren_Pull_Back_Delta"

$declaresequence "Gren_Pull_Back_layer"

$declaresequence "Shoot_Standing_Grenade1"

$declaresequence "Shoot_Standing_Grenade2"

$declaresequence "Shoot_Running_Grenade1"

$declaresequence "Shoot_Running_Grenade2"

$declaresequence "gasCan_Running_Subtract"

$declaresequence "gasCan_Prep_Delta"

$declaresequence "gasCan_Throw_Delta"

$declaresequence "gascan_pull_back_delta"

$declaresequence "gasCan_pull_back_layer"

$declaresequence "shoot_standing_gascan1"

$declaresequence "shoot_standing_gascan2"

$declaresequence "shoot_running_gascan1"

$declaresequence "shoot_running_gascan2"

$declaresequence "idle_gasCan_ready"

$declaresequence "o2_Running_Subtract"

$declaresequence "o2_Prep_Delta"

$declaresequence "o2_Throw_Delta"

$declaresequence "o2_pull_back_delta"

$declaresequence "o2_pull_back_layer"

$declaresequence "shoot_standing_o21"

$declaresequence "shoot_standing_o22"

$declaresequence "shoot_running_o21"

$declaresequence "shoot_running_o22"

$declaresequence "idle_o2_ready"

$declaresequence "NamVet_Shoot_Grenade_Standing_layer"

$declaresequence "NamVet_Shoot_Grenade_Standing_arms"

$declaresequence "Idle_Standing_Grenade_Ready"

$declaresequence "Idle_Crouching_Grenade_Ready"

$declaresequence "Idle_Injured_Grenade_Ready"

$declaresequence "Walk_Grenade_Ready"

$declaresequence "CrouchWalk_Grenade_Ready"

$declaresequence "Run_Grenade_Ready"

$declaresequence "LimpWalk_Grenade_Ready"

$declaresequence "LimpRun_Grenade_Ready"

$declaresequence "Walk_GasCan_Ready"

$declaresequence "CrouchWalk_GasCan_Ready"

$declaresequence "run_GasCan_Ready"

$declaresequence "Walk_O2_Ready"

$declaresequence "CrouchWalk_O2_Ready"

$declaresequence "run_O2_Ready"

$declaresequence "Melee_Sweep_Standing_Rifle_layer"

$declaresequence "Melee_Sweep_Standing_Rifle"

$declaresequence "Melee_Sweep_Running_Rifle_subtract"

$declaresequence "Melee_Sweep_Running_Rifle_Delta"

$declaresequence "Melee_Sweep_Running_Rifle_layer"

$declaresequence "Melee_Sweep_Running_Rifle"

$declaresequence "Melee_Shove_Standing_Rifle_layer"

$declaresequence "Melee_Shove_Standing_Rifle"

$declaresequence "Melee_Shove_Running_Rifle_subtract"

$declaresequence "Melee_Shove_Running_Rifle_Delta"

$declaresequence "Melee_Shove_Running_Rifle_layer"

$declaresequence "Melee_Shove_Running_Rifle"

$declaresequence "Melee_Straight_Standing_Rifle_layer"

$declaresequence "Melee_Straight_Standing_Rifle"

$declaresequence "Melee_Straight_Running_Rifle_subtract"

$declaresequence "Melee_Straight_Running_Rifle_Delta"

$declaresequence "Melee_Straight_Running_Rifle_layer"

$declaresequence "Melee_Straight_Running_Rifle"

$declaresequence "melee_sweep_gascan"

$declaresequence "melee_sweep_o2"

$declaresequence "Melee_Stomp_Standing_Rifle"

$declaresequence "Melee_Stomp_Walking_Rifle"

$declaresequence "Melee_Sweep_Standing_Rifle_02_layer"

$declaresequence "Melee_Sweep_Standing_Rifle_02"

$declaresequence "Melee_Sweep_Running_Rifle_02_subtract"

$declaresequence "Melee_Sweep_Running_Rifle_02_Delta"

$declaresequence "Melee_Sweep_Running_Rifle_02_layer"

$declaresequence "Melee_Sweep_Running_Rifle_02"

$declaresequence "Melee_Sweep_Standing_Rifle_03_layer"

$declaresequence "Melee_Sweep_Standing_Rifle_03"

$declaresequence "Melee_Sweep_Running_Rifle_03_subtract"

$declaresequence "Melee_Sweep_Running_Rifle_03_Delta"

$declaresequence "Melee_Sweep_Running_Rifle_03_layer"

$declaresequence "Melee_Sweep_Running_Rifle_03"

$declaresequence "Reload_Standing_Sniper_layer"

$declaresequence "Reload_Standing_Sniper"

$declaresequence "Reload_Standing_SMG_layer"

$declaresequence "Reload_Standing_SMG"

$declaresequence "Reload_Standing_Pistol_layer"

$declaresequence "Reload_Standing_Pistol"

$declaresequence "Reload_Standing_Rifle_layer"

$declaresequence "Reload_Standing_Rifle"

$declaresequence "Reload_Standing_Elites_layer"

$declaresequence "Reload_Standing_Elites"

$declaresequence "ShotgunReloadAim"

$declaresequence "PumpShotgunReloadAim"

$declaresequence "Reload_Standing_Shotgun_start"

$declaresequence "Reload_Standing_Shotgun_loop1"

$declaresequence "Reload_Standing_Shotgun_loop2"

$declaresequence "Reload_Standing_Shotgun_loop3"

$declaresequence "Reload_Standing_Shotgun_end"

$declaresequence "Reload_Standing_PumpShotgun_start"

$declaresequence "Reload_Standing_PumpShotgun_loop1"

$declaresequence "Reload_Standing_PumpShotgun_loop2"

$declaresequence "Reload_Standing_PumpShotgun_loop3"

$declaresequence "Reload_Standing_PumpShotgun_end"

$declaresequence "Fidget_Scratch_Face_Delta"

$declaresequence "Fidget_Scratch_Face_layer"

$declaresequence "Fidget_Scratch_Face"

$declaresequence "Fidget_Scratch_Nose_Delta"

$declaresequence "Fidget_Scratch_Nose_layer"

$declaresequence "Fidget_Scratch_Nose"

$declaresequence "Fidget_Scratch_Head_Delta"

$declaresequence "Fidget_Scratch_Head_layer"

$declaresequence "Fidget_Scratch_Head"

$declaresequence "Fidget_Wipe_Face_Delta"

$declaresequence "Fidget_Wipe_Face_layer"

$declaresequence "Fidget_Wipe_Face"

$declaresequence "Fidget_Wipe_Hand_Delta"

$declaresequence "Fidget_Wipe_Hand_layer"

$declaresequence "Fidget_Wipe_Hand"

$declaresequence "Fidget_Stretch_Neck"

$declaresequence "Fidget_Stretch_Back"

$declaresequence "Pickup_Standing_M4_subtract"

$declaresequence "Pickup_Standing_M4_delta"

$declaresequence "Pickup_Standing_M4_layer"

$declaresequence "Pickup_Standing_M4"

$declaresequence "Unholster_Standing_Pistol_layer"

$declaresequence "Unholster_Standing_Pistol"

$declaresequence "Unholster_Standing_Elites_layer"

$declaresequence "Unholster_Standing_Elites"

$declaresequence "Unholster_Standing_Rifle_layer"

$declaresequence "Unholster_Standing_Rifle"

$declaresequence "Unholster_Standing_Shotgun_layer"

$declaresequence "Unholster_Standing_Shotgun"

$declaresequence "Unholster_Standing_Gren_layer"

$declaresequence "Unholster_Standing_Gren"

$declaresequence "Idle_Rescue_01c"

$declaresequence "Heal_Self_Standing_06"

$declaresequence "Heal_Self_Crouching"

$declaresequence "Heal_Self_Crouching_01"

$declaresequence "Heal_Incap_Standing"

$declaresequence "Heal_Incap_Standing_02"

$declaresequence "Heal_Incap_Standing_03"

$declaresequence "Heal_Incap_Crouching"

$declaresequence "Heal_Incap_Above_Standing"

$declaresequence "Heal_Incap_Above_Crouching"

$declaresequence "Heal_Friend_Standing"

$declaresequence "Heal_Friend_Crouching"

$declaresequence "Pills_Swallow_layer"

$declaresequence "Pills_Swallow"

$declaresequence "Jump_Rifle_01"

$declaresequence "Jump_Rifle_02"

$declaresequence "Jump_Shotgun_01"

$declaresequence "Jump_Shotgun_02"

$declaresequence "jump_gas_layer"

$declaresequence "jump_gas_gesture"

$declaresequence "jump_gas_gesture_aim"

$declaresequence "Jump_GasCan_01"

$declaresequence "Jump_GasCan_02"

$declaresequence "jump_o2_layer"

$declaresequence "jump_o2_gesture"

$declaresequence "jump_o2_gesture_aim"

$declaresequence "Jump_o2_01"

$declaresequence "Jump_o2_02"

$declaresequence "Jump_Smg_01"

$declaresequence "Jump_Smg_02"

$declaresequence "Jump_Pistol_01"

$declaresequence "Jump_Pistol_02"

$declaresequence "Jump_DualPistols_01"

$declaresequence "Jump_DualPistols_02"

$declaresequence "Jump_Item_01"

$declaresequence "Jump_Item_02"

$declaresequence "Jump_Land_gesture"

$declaresequence "Fall"

$declaresequence "Land_Injured"

$declaresequence "Ladder_Idlenoise"

$declaresequence "Ladder_Ascend"

$declaresequence "Ladder_Descend"

$declaresequence "Pulled_Running_Rifle"

$declaresequence "IncapIdlenoise"

$declaresequence "Death"

$declaresequence "Idle_Incap"

$declaresequence "Idle_Incap_Pistol"

$declaresequence "Idle_Incap_Elites"

$declaresequence "GetUpFrom_Incap"

$declaresequence "GetUpFrom_Incap_04"

$declaresequence "GetUpFrom_Incap_05"

$declaresequence "GetUpFrom_Incap_Crouching_01"

$declaresequence "Collapse_to_Incap_Pounced"

$declaresequence "Idle_Incap_Pounced"

$declaresequence "GetUpFrom_Pounced"

$declaresequence "Collapse_to_Incap_Tongue_germany"

$declaresequence "Idle_Incap_Hanging_SmokerChoke_germany"

$declaresequence "Idle_Fall_From_Tongue_germany"

$declaresequence "Idle_Incap_Standing_SmokerChoke_germany"

$declaresequence "Idle_Tongued_choking_ground"

$declaresequence "Idle_Tongued_Dragging_Ground"

$declaresequence "GetUpFrom_TankRock"

$declaresequence "Hit_by_TankPunch"

$declaresequence "Idle_Fall_From_TankPunch"

$declaresequence "GetUpFrom_TankPunch"

$declaresequence "incap_crawl"

$declaresequence "incap_drag_front"

$declaresequence "incap_drag_back"

$declaresequence "incap_drag_left"

$declaresequence "incap_drag_right"

$declaresequence "drag"

$declaresequence "Idle_Incap_Hanging1"

$declaresequence "Idle_Incap_Hanging2"

$declaresequence "Idle_Incap_Hanging3"

$declaresequence "Collapse_to_Hanging"

$declaresequence "GetUpFrom_Ledge"

$declaresequence "GetUpFrom_Ledge_Crouching"

$declaresequence "Idle_Falling"

$declaresequence "Death_10ab"

$declaresequence "deathpose_front"

$declaresequence "deathpose_back"

$declaresequence "deathpose_right"

$declaresequence "deathpose_left"

$declaresequence "Flinch_01"

$declaresequence "Flinch_02"

$declaresequence "Flinch_03"

$declaresequence "Flinch_Ledge_01"

$declaresequence "Flinch_Ledge_02"

$declaresequence "Flinch_Ledge_03"

$declaresequence "CalmIdlenoiseRealtime"

$declaresequence "Idle_Standing_fry_pan"

$declaresequence "coach_AimMatrix_Sniper_Military_Standing_layer"

$declaresequence "coach_AimMatrix_Sniper_Military_Standing_arms"

$declaresequence "Idle_Standing_Sniper_military"

$declaresequence "coach_AimMatrix_Sniper_militaryZoomed_Standing_layer"

$declaresequence "coach_AimMatrix_Sniper_militaryZoomed_Standing_arms"

$declaresequence "Idle_Standing_Sniper_militaryZoomed"

$declaresequence "Idle_Crouching_Frying_Pan"

$declaresequence "Idle_Crouching_Sniper_Military"

$declaresequence "Idle_Crouching_Sniper_MilitaryZoomed"

$declaresequence "Idle_Calm_Frying_Pan"

$declaresequence "Coach_AimMatrix_Sniper_Military_Standing_Calm_layer"

$declaresequence "Coach_AimMatrix_Sniper_Military_Standing_Calm_arms"

$declaresequence "Idle_Calm_Sniper_Military"

$declaresequence "Coach_AimMatrix_Sniper_Military_Injured_Standing_layer"

$declaresequence "Coach_AimMatrix_Sniper_Military_Injured_Standing_arms"

$declaresequence "Idle_Injured_Sniper_Military"

$declaresequence "Coach_AimMatrix_Sniper_MilitaryZoomed_Injured_Standing_layer"

$declaresequence "Coach_AimMatrix_Sniper_MilitaryZoomed_Injured_Standing_arms"

$declaresequence "Idle_Injured_Sniper_MilitaryZoomed"

$declaresequence "idle_standing_bat"

$declaresequence "Idle_Crouching_bat"

$declaresequence "Idle_Calm_bat"

$declaresequence "idle_injured_bat"

$declaresequence "CrouchWalkN_bat_layer"

$declaresequence "CrouchWalkN_bat_arms"

$declaresequence "CrouchWalk_bat"

$declaresequence "WalkN_bat_layer"

$declaresequence "WalkN_bat_arms"

$declaresequence "Walk_bat"

$declaresequence "RunN_bat_layer"

$declaresequence "RunN_bat_arms"

$declaresequence "Run_bat"

$declaresequence "LimpWalk_Bat"

$declaresequence "LimpRun_Bat"

$declaresequence "biker_AimMatrix_bat_Standing"

$declaresequence "biker_AimMatrix_bat_Crouching"

$declaresequence "biker_AimMatrix_bat_Injured_Standing"

$declaresequence "jump_bat_layer"

$declaresequence "Jump_bat_01"

$declaresequence "idle_axe_anim_mdl"

$declaresequence "Idle_Standing_axe"

$declaresequence "Idle_Crouching_axe"

$declaresequence "Idle_Calm_Axe"

$declaresequence "idle_injured_axe"

$declaresequence "CrouchWalkN_axe_layer"

$declaresequence "CrouchWalkN_axe_arms"

$declaresequence "CrouchWalk_axe"

$declaresequence "WalkN_axe_layer"

$declaresequence "WalkN_axe_arms"

$declaresequence "Walk_axe"

$declaresequence "RunN_Axe_layer"

$declaresequence "RunN_Axe_arms"

$declaresequence "Run_Axe"

$declaresequence "LimpWalk_Axe"

$declaresequence "LimpRun_Axe"

$declaresequence "biker_AimMatrix_axe_Standing"

$declaresequence "biker_AimMatrix_axe_Crouching"

$declaresequence "biker_AimMatrix_axe_Injured_Standing"

$declaresequence "jump_axe_layer"

$declaresequence "Jump_axe_01"

$declaresequence "Idle_Injured_Frying_Pan"

$declaresequence "CrouchWalkN_Fry_Pan_layer"

$declaresequence "CrouchWalkN_Fry_Pan_arms"

$declaresequence "CrouchWalk_Fry_Pan"

$declaresequence "CrouchWalkN_Sniper_Military_layer"

$declaresequence "CrouchWalkN_Sniper_Military_arms"

$declaresequence "CrouchWalk_Sniper_Military"

$declaresequence "WalkN_Sniper_Military_layer"

$declaresequence "WalkN_Sniper_Military_arms"

$declaresequence "Walk_Sniper_Military"

$declaresequence "WalkN_Fry_Pan_layer"

$declaresequence "WalkN_Fry_Pan_arms"

$declaresequence "Walk_Fry_Pan"

$declaresequence "RunN_Sniper_Military_layer"

$declaresequence "RunN_Sniper_Military_arms"

$declaresequence "Run_Sniper_Military"

$declaresequence "RunN_Fry_Pan_layer"

$declaresequence "RunN_Fry_Pan_arms"

$declaresequence "Run_Fry_Pan"

$declaresequence "CalmWalkN_Sniper_Military_layer"

$declaresequence "CalmWalkN_Sniper_Military_arms"

$declaresequence "CalmWalk_Sniper_Military"

$declaresequence "CalmRunN_Sniper_Military_layer"

$declaresequence "CalmRunN_Sniper_Military_arms"

$declaresequence "CalmRun_Sniper_Military"

$declaresequence "LimpWalk_Sniper_Military"

$declaresequence "LimpRun_Sniper_military"

$declaresequence "LimpWalk_Fry_Pan"

$declaresequence "LimpRun_Fry_Pan"

$declaresequence "AimMatrix_Fry_Pan_Standing"

$declaresequence "AimMatrix_Fry_Pan_Crouching"

$declaresequence "AimMatrix_Fry_Pan_Injured_Standing"

$declaresequence "coach_AimMatrix_Sniper_Military_Standing"

$declaresequence "coach_AimMatrix_Sniper_MilitaryZoomed_Standing"

$declaresequence "coach_AimMatrix_Sniper_Military_Standing_Calm"

$declaresequence "coach_AimMatrix_Sniper_MilitaryZoomed_Injured_Standing"

$declaresequence "coach_AimMatrix_Sniper_Military_Injured_Standing"

$declaresequence "coach_AimMatrix_Sniper_Military_Crouching"

$declaresequence "coach_AimMatrix_Sniper_MilitaryZoomed_Crouching"

$declaresequence "coach_AimMatrix_Melee_Shove_Rifle_Standing"

$declaresequence "AimMatrix_Fry_Pan_Injured_Standing"

$declaresequence "NamVet_AimMatrix_M2HT_Standing"

$declaresequence "AimMatrix_Fry_Pan_Standing"

$declaresequence "pour_gascan"

$declaresequence "Reload_Standing_grenade_launcher_layer"

$declaresequence "Reload_Standing_grendade_launcher"

$declaresequence "jump_Frying_Pan_layer"

$declaresequence "Jump_Frying_Pan_01"

$declaresequence "c4m1_intro_coach"

$declaresequence "c2m1_intro_coach"

$declaresequence "c5m1_intro_coach"

$declaresequence "c1m1_intro_coach"

$declaresequence "dlc1_intro_male_idle"

$declaresequence "dlc1_intro_male_leanup"

$declaresequence "dlc1_intro_male_leanleft"

$declaresequence "dlc1_intro_male_headnod"

$declaresequence "dlc1_intro_male_handflipR"

$declaresequence "dlc1_finaleintro_francis_idle"

$declaresequence "dlc1_finaleintro_francis_weight_shift_hold"

$declaresequence "dlc1_finaleintro_francis_idle_looking"

$declaresequence "dlc1_finaleintro_francis_idle_extra_noise"

$declaresequence "dlc1_finaleintro_francis_idle_extra_noise_02"

$declaresequence "dlc1_finaleintro_francis_gesture01"

$declaresequence "dlc1_finaleintro_francis_gesture02"

$declaresequence "dlc1_finaleintro_francis_gesture03"

$declaresequence "dlc1_finaleintro_francis_gesture04"

$declaresequence "dlc1_finaleintro_francis_gesture05"

$declaresequence "dlc1_finaleintro_francis_gesture06"

$declaresequence "dlc1_finaleintro_francis_gesture07"

$declaresequence "dlc1_finaleintro_francis_looklouis"

$declaresequence "dlc1_finaleintro_francis_looklouis_slow"

$declaresequence "dlc1_finaleintro_francis_looklouis2"

$declaresequence "dlc1_finaleintro_francis_looklouis2_slow"

$declaresequence "dlc1_finaleintro_francis_lookzoey"

$declaresequence "dlc1_finaleintro_francis_lookzoey_slow"

$declaresequence "dlc1_finaleintro_francis_lookzoey2"

$declaresequence "dlc1_finaleintro_francis_lookzoey2_slow"

$declaresequence "dlc1_finaleintro_francis_hello_rochelle"

$declaresequence "dlc1_finaleintro_francis_I_am_a_cop"

$declaresequence "dlc1_finaleintro_francis_ten_four"

$declaresequence "dlc1_finaleintro_francis_Yesnod"

$declaresequence "dlc1_finaleintro_francis_Ehhhhharmsout"

$declaresequence "dlc1_finaleintro_francis_16_beenthinkin"

$declaresequence "dlc1_finaleintro_francis_16_lookbrother"

$declaresequence "dlc1_finaleintro_francis_NiceRideWav"

$declaresequence "dlc1_finaleintro_francis_HowSheHandleWav"

$declaresequence "dlc1_finaleintro_francis_BikeManWav"

$declaresequence "dlc1_finaleintro_francis_GoodLuckWithTahtWav"

$declaresequence "dlc1_finaleintro_francis_headshake"

$declaresequence "dlc1_finaleintro_francis_you_hate_stuff_too"

$declaresequence "dlc1_finaleintro_francis_headnod"

$declaresequence "dlc1_finaleintro_francis_small_take"

$declaresequence "dlc1_finaleintro_francis_you_like_vests"

$declaresequence "dlc1_finaleintro_francis_even_smaller_take"

$declaresequence "dlc1_finaleintro_francis_hello_rochelle_alt"

$declaresequence "dlc1_finaleintro_francis_you_hate_stuff_too_slower"

$declaresequence "dlc1_finaleintro_francis_gesture09"

$declaresequence "dlc1_finaleintro_francis_all_yer_crying"

$declaresequence "dlc1_finaleintro_francis_head_shake_at_louis"

$declaresequence "dlc1_finaleintro_francis_hey_all_right"

$declaresequence "dlc1_finaleintro_francis_Yesnod2"

$declaresequence "dlc1_finaleintro_francis_TacoDogX2Wav"

$declaresequence "dlc1_finaleintro_francis_Lean"

$declaresequence "dlc1_finaleintro_francis_salute"

$declaresequence "dlc1_finaleintro_louis_idle"

$declaresequence "dlc1_finaleintro_louis_wave"

$declaresequence "dlc1_finaleintro_louis_lookfrancis"

$declaresequence "dlc1_finaleintro_louis_nod"

$declaresequence "dlc1_finaleintro_louis_lookfrancis2"

$declaresequence "dlc1_finaleintro_louis_lookzoey2"

$declaresequence "dlc1_finaleintro_louis_wavesmall"

$declaresequence "dlc1_finaleintro_louis_headshakeno2"

$declaresequence "dlc1_finaleintro_louis_headshakeno"

$declaresequence "dlc1_finaleintro_louis_Lookoff"

$declaresequence "dlc1_finaleintro_louis_giggle"

$declaresequence "dlc1_finaleintro_louis_arm_gesture"

$declaresequence "dlc1_finaleintro_louis_speech01"

$declaresequence "dlc1_finaleintro_louis_headnod"

$declaresequence "dlc1_finaleintro_louis_headshake"

$declaresequence "dlc1_finaleintro_louis_lookfrancis_long"

$declaresequence "dlc1_finaleintro_louis_GotoGeneratorWav"

$declaresequence "dlc1_finaleintro_louis_HeyYouMadeItWav"

$declaresequence "dlc1_finaleintro_louis_you_made_it"

$declaresequence "dlc1_finaleintro_louis_where_you_heading"

$declaresequence "dlc1_finaleintro_louis_nah_better_not"

$declaresequence "dlc1_finaleintro_louis_take_care_of_the_rest"

$declaresequence "dlc1_outro_francis"

$declaresequence "dlc1_outro_louis"

$declaresequence "Idle_Fall_From_charger"

$declaresequence "Charger_pounded"

$declaresequence "Charger_pounded_down"

$declaresequence "Charger_pounded_north"

$declaresequence "Charger_pounded_up"

$declaresequence "Charger_pounded_incap"

$declaresequence "GetUpFrom_Charger"

$declaresequence "IncapFrom_Charger"

$declaresequence "Hit_by_Charger"

$declaresequence "Charger_Carried"

$declaresequence "Charger_Slammed_Wall"

$declaresequence "Charger_Slammed_Ground"

$declaresequence "survivor_ridden_upper"

$declaresequence "survivor_ridden_lower_walk"

$declaresequence "coach_adrenaline_use"

$declaresequence "Defibrillate_Incap_Standing"

$declaresequence "Defibrillate_Incap_Crouching"

$declaresequence "Die_Standing"

$declaresequence "Die_Incap"

$declaresequence "Defib_Revive"

$declaresequence "Defib_jolt"

$declaresequence "coach_AimMatrix_chainsaw_Standing_layer"

$declaresequence "coach_AimMatrix_chainsaw_Standing_arms"

$declaresequence "Idle_Standing_chainsaw"

$declaresequence "Idle_Crouching_chainsaw"

$declaresequence "coach_AimMatrix_chainsaw_Standing_Calm_layer"

$declaresequence "coach_AimMatrix_chainsaw_Standing_Calm_arms"

$declaresequence "Idle_Calm_chainsaw"

$declaresequence "coach_AimMatrix_chainsaw_Injured_Standing_layer"

$declaresequence "coach_AimMatrix_chainsaw_Injured_Standing_arms"

$declaresequence "Idle_Injured_chainsaw"

$declaresequence "CrouchWalkN_chainsaw_layer"

$declaresequence "CrouchWalkN_chainsaw_arms"

$declaresequence "CrouchWalk_chainsaw"

$declaresequence "WalkN_chainsaw_layer"

$declaresequence "WalkN_chainsaw_arms"

$declaresequence "Walk_chainsaw"

$declaresequence "RunN_chainsaw_layer"

$declaresequence "RunN_chainsaw_arms"

$declaresequence "Run_chainsaw"

$declaresequence "LimpWalk_CHAINSAW"

$declaresequence "LimpRun_chainsaw"

$declaresequence "coach_AimMatrix_chainsaw_Standing"

$declaresequence "coach_AimMatrix_chainsaw_Crouching"

$declaresequence "coach_AimMatrix_chainsaw_Injured_Standing"

$declaresequence "Idle_Attack_Chainsaw"

$declaresequence "jump_chainsaw_layer"

$declaresequence "Jump_chainsaw_01"

$declaresequence "chainsaw_startup"

$declaresequence "chainsaw_rev"

$declaresequence "chainsaw_attack"

$declaresequence "Idle_Standing_guitar"

$declaresequence "Idle_Crouching_guitar"

$declaresequence "Idle_Calm_Guitar"

$declaresequence "idle_injured_guitar"

$declaresequence "WalkN_guitar_layer"

$declaresequence "WalkN_guitar_arms"

$declaresequence "Walk_guitar"

$declaresequence "CrouchWalkN_guitar_layer"

$declaresequence "CrouchWalkN_guitar_arms"

$declaresequence "CrouchWalk_guitar"

$declaresequence "RunN_GUITAR_layer"

$declaresequence "RunN_GUITAR_arms"

$declaresequence "Run_GUITAR"

$declaresequence "LimpWalk_GUITAR"

$declaresequence "LimpRun_GUITAR"

$declaresequence "coach_AimMatrix_GUITAR_Standing"

$declaresequence "coach_AimMatrix_GUITAR_Crouching"

$declaresequence "coach_AimMatrix_GUITAR_Injured_Standing"

$declaresequence "jump_GUITAR_layer"

$declaresequence "Jump_GUITAR_01"

$declaresequence "idle_standing_gnome"

$declaresequence "idle_crouching_gnome"

$declaresequence "idle_calm_gnome"

$declaresequence "Idle_Injured_gnome"

$declaresequence "CrouchWalkN_gnome_layer"

$declaresequence "CrouchWalkN_gnome_arms"

$declaresequence "CrouchWalk_gnome"

$declaresequence "WalkN_gnome_layer"

$declaresequence "WalkN_gnome_arms"

$declaresequence "Walk_gnome"

$declaresequence "RunN_gnome_layer"

$declaresequence "RunN_gnome_arms"

$declaresequence "Run_gnome"

$declaresequence "CalmWalkN_gnome_layer"

$declaresequence "CalmWalkN_gnome_arms"

$declaresequence "CalmWalk_gnome"

$declaresequence "CalmRunN_gnome_layer"

$declaresequence "CalmRunN_gnome_arms"

$declaresequence "CalmRun_gnome"

$declaresequence "LimpWalk_gnome"

$declaresequence "LimpRun_gnome"

$declaresequence "Coach_AimMatrix_gnome_Standing"

$declaresequence "Coach_AimMatrix_gnome_Crouching"

$declaresequence "Coach_AimMatrix_gnome_Injured"

$declaresequence "jump_gnome_layer"

$declaresequence "jump_gnome_gesture"

$declaresequence "jump_gnome_gesture_aim"

$declaresequence "Jump_gnome_01"

$declaresequence "Jump_gnome_02"

$declaresequence "axe_swing_ne_w_layer"

$declaresequence "axe_swing_ne_w_idle"

$declaresequence "axe_swing_strong_layer"

$declaresequence "axe_swing_layer_2"

$declaresequence "axe_secondary_attack"

$declaresequence "AXE_primary_attack_reverse"

$declaresequence "AXE_primary_attack_reverse_idle"

$declaresequence "Frying_Pan_swing_N_S_layer"

$declaresequence "Frying_Pan_swing_N_S_idle"

$declaresequence "Frying_Pan_secondary_attack"

$declaresequence "Frying_Pan_strong_attack"

$declaresequence "Frying_Pan_strong_attack_idle"

$declaresequence "Frying_Pan_swing_NE_SW_layer"

$declaresequence "Frying_Pan_swing_NE_SW_idle"

$declaresequence "bat_swing_ne_w_layer"

$declaresequence "bat_swing_ne_w_idle"

$declaresequence "bat_swing_w2e_layer"

$declaresequence "bat_swing_w2e_idle"

$declaresequence "bat_secondary_attack"

$declaresequence "guitar_primary_attack_LAYER"

$declaresequence "guitar_primary_attack"

$declaresequence "guitar_primary_attack02_LAYER"

$declaresequence "guitar_primary_attack02"

$declaresequence "guitar_secondary_attack_LAYER"

$declaresequence "guitar_secondary_attack"

$declaresequence "use_ammopack"

$declaresequence "crouch_use_ammopack"

$declaresequence "melee_sweep_gnome"

$declaresequence "melee_sweep_chainsaw"

$declaresequence "use_cola"

$declaresequence "Coach_AimMatrix_FirstAidKit_Standing"

$declaresequence "melee_sweep_FirstAidKit"

$declaresequence "melee_sweep_cola"

$declaresequence "melee_sweep_defibrillator"

$declaresequence "melee_sweep_ammopack"

$declaresequence "katana_swing_e2w_layer"

$declaresequence "katana_swing_e2w_idle"

$declaresequence "katana_swing_w2e_layer"

$declaresequence "katana_swing_w2e_idle"

$declaresequence "Shoved_Backward"

$declaresequence "Shoved_Forward"

$declaresequence "Shoved_Rightward"

$declaresequence "Shoved_Leftward"

$declaresequence "Shoved_Backward_Melee"

$declaresequence "Shoved_Forward_Melee"

$declaresequence "Shoved_Rightward_Melee"

$declaresequence "Shoved_Leftward_Melee"

$declaresequence "Shoved_Backward_bat"

$declaresequence "Shoved_Forward_bat"

$declaresequence "Shoved_Rightward_bat"

$declaresequence "Shoved_Leftward_bat"

$declaresequence "Shoved_Backward_chainsaw"

$declaresequence "Shoved_Forward_chainsaw"

$declaresequence "Shoved_Rightward_chainsaw"

$declaresequence "Shoved_Leftward_chainsaw"

$declaresequence "namvet_gesture_pointLeftinDelta"

$declaresequence "namvet_gesture_pointLeftinFrameArms"

$declaresequence "namvet_gesture_pointLeftinFrameSpine"

$declaresequence "namvet_gesture_pointLeftCoreDelta"

$declaresequence "namvet_gesture_pointLeftOutFrameArms"

$declaresequence "namvet_gesture_pointLeftOutFrameSpine"

$declaresequence "namvet_gesture_pointLeftoutDelta"

$declaresequence "namvet_gesture_pointLeft"

$declaresequence "namvet_gesture_pointLeft_quickinDelta"

$declaresequence "namvet_gesture_pointLeft_quickinFrameArms"

$declaresequence "namvet_gesture_pointLeft_quickinFrameSpine"

$declaresequence "namvet_gesture_pointLeft_quickCoreDelta"

$declaresequence "namvet_gesture_pointLeft_quickOutFrameArms"

$declaresequence "namvet_gesture_pointLeft_quickOutFrameSpine"

$declaresequence "namvet_gesture_pointLeft_quickoutDelta"

$declaresequence "namvet_gesture_pointLeft_quick"

$declaresequence "namvet_gesture_gogoinDelta"

$declaresequence "namvet_gesture_gogoinFrameArms"

$declaresequence "namvet_gesture_gogoinFrameSpine"

$declaresequence "namvet_gesture_gogoCoreDelta"

$declaresequence "namvet_gesture_gogoOutFrameArms"

$declaresequence "namvet_gesture_gogoOutFrameSpine"

$declaresequence "namvet_gesture_gogooutDelta"

$declaresequence "namvet_gesture_gogo"

$declaresequence "namvet_gesture_waveinDelta"

$declaresequence "namvet_gesture_waveinFrameArms"

$declaresequence "namvet_gesture_waveinFrameSpine"

$declaresequence "namvet_gesture_waveCoreDelta"

$declaresequence "namvet_gesture_waveOutFrameArms"

$declaresequence "namvet_gesture_waveOutFrameSpine"

$declaresequence "namvet_gesture_waveoutDelta"

$declaresequence "namvet_gesture_wave"

$declaresequence "namVet_head_no"

$declaresequence "namvet_gesture_head_noddefault"

$declaresequence "namvet_gesture_head_nodapexDelta"

$declaresequence "namvet_gesture_head_nodloopDelta"

$declaresequence "namvet_gesture_head_nod"

$declaresequence "namvet_gesture_head_twistLeftdefault"

$declaresequence "namvet_gesture_head_twistLeftapexDelta"

$declaresequence "namvet_gesture_head_twistLeftloopDelta"

$declaresequence "namvet_gesture_head_twistLeft"

$declaresequence "TeenAngst_gesture_coughinDelta"

$declaresequence "TeenAngst_gesture_coughinFrameArms"

$declaresequence "TeenAngst_gesture_coughinFrameSpine"

$declaresequence "TeenAngst_gesture_coughCoreDelta"

$declaresequence "TeenAngst_gesture_coughOutFrameArms"

$declaresequence "TeenAngst_gesture_coughOutFrameSpine"

$declaresequence "TeenAngst_gesture_coughoutDelta"

$declaresequence "TeenAngst_gesture_cough"

$declaresequence "TeenAngst_gesture_cough1inDelta"

$declaresequence "TeenAngst_gesture_cough1inFrameArms"

$declaresequence "TeenAngst_gesture_cough1inFrameSpine"

$declaresequence "TeenAngst_gesture_cough1CoreDelta"

$declaresequence "TeenAngst_gesture_cough1OutFrameArms"

$declaresequence "TeenAngst_gesture_cough1OutFrameSpine"

$declaresequence "TeenAngst_gesture_cough1outDelta"

$declaresequence "TeenAngst_gesture_cough1"

$declaresequence "TeenAngst_gesture_cough2inDelta"

$declaresequence "TeenAngst_gesture_cough2inFrameArms"

$declaresequence "TeenAngst_gesture_cough2inFrameSpine"

$declaresequence "TeenAngst_gesture_cough2CoreDelta"

$declaresequence "TeenAngst_gesture_cough2OutFrameArms"

$declaresequence "TeenAngst_gesture_cough2OutFrameSpine"

$declaresequence "TeenAngst_gesture_cough2outDelta"

$declaresequence "TeenAngst_gesture_cough2"

$declaresequence "TeenAngst_gesture_cough3inDelta"

$declaresequence "TeenAngst_gesture_cough3inFrameArms"

$declaresequence "TeenAngst_gesture_cough3inFrameSpine"

$declaresequence "TeenAngst_gesture_cough3CoreDelta"

$declaresequence "TeenAngst_gesture_cough3OutFrameArms"

$declaresequence "TeenAngst_gesture_cough3OutFrameSpine"

$declaresequence "TeenAngst_gesture_cough3outDelta"

$declaresequence "TeenAngst_gesture_cough3"

$declaresequence "TeenAngst_gesture_vomit01inDelta"

$declaresequence "TeenAngst_gesture_vomit01inFrameArms"

$declaresequence "TeenAngst_gesture_vomit01inFrameSpine"

$declaresequence "TeenAngst_gesture_vomit01CoreDelta"

$declaresequence "TeenAngst_gesture_vomit01OutFrameArms"

$declaresequence "TeenAngst_gesture_vomit01OutFrameSpine"

$declaresequence "TeenAngst_gesture_vomit01outDelta"

$declaresequence "TeenAngst_gesture_vomit01"

$declaresequence "namvet_gesture_head_downdefault"

$declaresequence "namvet_gesture_head_downapexDelta"

$declaresequence "namvet_gesture_head_downloopDelta"

$declaresequence "namvet_gesture_head_down"

$declaresequence "namvet_gesture_head_yesdefault"

$declaresequence "namvet_gesture_head_yesapexDelta"

$declaresequence "namvet_gesture_head_yesloopDelta"

$declaresequence "namvet_gesture_head_yes"

$declaresequence "g_Idle_Intro_CalminDelta"

$declaresequence "g_Idle_Intro_CalminFrameArms"

$declaresequence "g_Idle_Intro_CalminFrameSpine"

$declaresequence "g_Idle_Intro_CalmCoreDelta"

$declaresequence "g_Idle_Intro_CalmOutFrameArms"

$declaresequence "g_Idle_Intro_CalmOutFrameSpine"

$declaresequence "g_Idle_Intro_CalmoutDelta"

$declaresequence "g_Idle_Intro_Calm"

$declaresequence "g_Namvet_Intro_WaveinDelta"

$declaresequence "g_Namvet_Intro_WaveinFrameArms"

$declaresequence "g_Namvet_Intro_WaveinFrameSpine"

$declaresequence "g_Namvet_Intro_WaveCoreDelta"

$declaresequence "g_Namvet_Intro_WaveOutFrameArms"

$declaresequence "g_Namvet_Intro_WaveOutFrameSpine"

$declaresequence "g_Namvet_Intro_WaveoutDelta"

$declaresequence "g_Namvet_Intro_Wave"

$sequence "reference" {
	"survivor_namvet_anims\reference.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 3
	ikrule "ikclip" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 4
}

$sequence "proportions" {
	"a_proportions"
	autoplay
	predelta
	fadein 0.2
	fadeout 0.2
}

$includemodel "survivors/anim_teenangst.mdl"
$includemodel "survivors/gestures_TeenAngst.mdl"
$includemodel "survivors/anim_producer.mdl"
$includemodel "survivors/anim_namvet.mdl"
$includemodel "survivors/anim_gestures.mdl"
$includemodel "survivors/gestures_namvet.mdl"
