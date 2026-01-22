// Created by Crowbar 0.74

$modelname "survivors/survivor_biker_light.mdl"

$model "TeenAngst" "tou.smd" {

	flexfile "survivor_biker_light_01.vta" 
	{
		defaultflex frame 0
		flex "blink" frame 1
		flex "jaw_drop" frame 2
	}

	flexcontroller phoneme range 0 1 "blink"
	flexcontroller phoneme range 0 1 "jaw_drop"

	%blink = blink
	%jaw_drop = jaw_drop
}
$bodygroup "tou"
{
	studio "shenti.smd"
}


$surfaceprop "flesh"

$contents "solid"

$illumposition -2.939 -0.573 34.207

$eyeposition 0 0 60

$maxeyedeflection 30

$forcephonemecrossfade

$ambientboost

$mostlyopaque

$cdmaterials "lumiya1\lumiya2\"
$cdmaterials ""

$attachment "eyes" "ValveBiped.Bip01_Head1" 4.04 -2.79 0.06 rotate 0 -89.37 -90
$attachment "mouth" "ValveBiped.Bip01_Head1" 0.84 -6.09 -0.16 rotate 0 -80 -90
$attachment "pistol" "ValveBiped.Bip01_R_Thigh" -3.47 2.15 -5.69 rotate -3.66 -0.47 88.48
$attachment "medkit" "ValveBiped.Bip01_Spine4" -1.34 -5.84 -1.37 rotate 5.03 77.16 0
$attachment "primary" "ValveBiped.Bip01_Spine4" 3.21 -5.16 -2.75 rotate -13.7 170.19 174.29
$attachment "attach_R_shoulderBladeAim" "ValveBiped.Bip01_Spine4" -11.07 -1.46 -5.33 rotate -90 -102.85 0
$attachment "attach_L_shoulderBladeAim" "ValveBiped.Bip01_Spine4" -11.07 -1.46 3.69 rotate -90 -102.85 0
$attachment "molotov" "ValveBiped.Bip01_Spine" -3.78 -2.89 8.29 rotate -63.44 -74.67 -101.41
$attachment "grenade" "ValveBiped.Bip01_Spine" -0.8 1.38 9.33 rotate -90 -175.23 0
$attachment "pills" "ValveBiped.Bip01_Spine" -3.1 0.74 -8.47 rotate -41.18 -88.48 -87.05
$attachment "grenade" "ValveBiped.Bip01_Spine" -0.8 1.38 9.33 rotate -90 -175.23 0
$attachment "molotov" "ValveBiped.Bip01_Spine" -3.78 -2.89 8.29 rotate -63.44 -74.67 -101.41
$attachment "pills" "ValveBiped.Bip01_Spine" -3.1 0.74 -8.47 rotate -41.18 -88.48 -87.05
$attachment "medkit" "ValveBiped.Bip01_Spine4" -1.34 -5.84 -1.37 rotate 5.03 77.16 0
$attachment "pistol" "ValveBiped.Bip01_R_Thigh" -3.47 2.15 -5.69 rotate -3.66 -0.47 88.48
$attachment "primary" "ValveBiped.Bip01_Spine4" 3.21 -5.16 -2.75 rotate -13.7 170.19 174.29
$attachment "eholster" "ValveBiped.Bip01_L_Thigh" 5.12 -2.21 5.1 rotate 9.47 -92.11 96.8
$attachment "lfoot" "ValveBiped.Bip01_L_Foot" 0 5.25 0 rotate 0 0 0
$attachment "rfoot" "ValveBiped.Bip01_R_Foot" 0 5.25 0 rotate 0 0 0
$attachment "muzzle_flash" "ValveBiped.Bip01_L_Hand" 0 0 0 rotate 0 0 0
$attachment "survivor_neck" "ValveBiped.Bip01_Neck1" 0 0 0 rotate 0 0 0
$attachment "forward" "ValveBiped.forward" 0 0 0 rotate 0 0 0
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

$hboxset "L4D"
$hbox 3 "ValveBiped.Bip01_Pelvis" -6.3 -4.725 -4.725 6.3 4.725 4.725
$hbox 6 "ValveBiped.Bip01_L_Thigh" 5.25 -3.57 -2.9925 19.949999 2.73 2.2575
$hbox 6 "ValveBiped.Bip01_L_Calf" 0.525 -2.1 -2.625 20.474998 3.15 2.625
$hbox 6 "ValveBiped.Bip01_L_Toe0" -3.675 -0.525 -1.4175 1.575 1.575 2.5725
$hbox 7 "ValveBiped.Bip01_R_Thigh" 5.25 -3.57 -2.9925 19.949999 2.73 2.2575
$hbox 7 "ValveBiped.Bip01_R_Calf" 0.525 -2.1 -2.625 20.474998 3.15 2.625
$hbox 7 "ValveBiped.Bip01_R_Toe0" -3.675 -0.525 -1.4175 1.575 1.575 2.5725
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

$definebone "ValveBiped.Bip01_Pelvis" "" 0 0.542612 40.233574 0 0 89.999975 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Thigh" "ValveBiped.Bip01_Pelvis" 3.806942 0 0 3.326308 -87.048507 -95.710935 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Calf" "ValveBiped.Bip01_L_Thigh" 19.263105 0 0 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Foot" "ValveBiped.Bip01_L_Calf" 17.5891 0 0 -3.939487 -74.439534 -4.413494 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Toe0" "ValveBiped.Bip01_L_Foot" 6.240662 0 0 -1.587609 -19.272641 1.162818 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Thigh" "ValveBiped.Bip01_Pelvis" -3.806942 0 0 3.326304 -92.951464 -84.289083 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Calf" "ValveBiped.Bip01_R_Thigh" 19.263098 0 0 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Foot" "ValveBiped.Bip01_R_Calf" 17.589096 0 0 3.939485 -74.439534 5.084026 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Toe0" "ValveBiped.Bip01_R_Foot" 6.240662 0 0 1.366218 -19.288965 -6.408019 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine" "ValveBiped.Bip01_Pelvis" 0 4.246162 -0.018825 4.766603 89.999982 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine1" "ValveBiped.Bip01_Spine" 4.195629 0 0 0 -9.852982 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine2" "ValveBiped.Bip01_Spine1" 3.883152 0.000001 0 0 -0.906993 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine4" "ValveBiped.Bip01_Spine2" 5.985943 0.000002 0 0 28.371672 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Neck1" "ValveBiped.Bip01_Spine4" 5.620499 0.000002 0 0 14.358378 179.999855 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Head1" "ValveBiped.Bip01_Neck1" 4.684906 0.000002 0 -0.000057 26.575554 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Clavicle" "ValveBiped.Bip01_Spine4" 4.268658 1.531894 1.575 -73.220092 -107.221566 12.909378 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_UpperArm" "ValveBiped.Bip01_L_Clavicle" 5.782729 -0.000008 0.000001 -22.320309 -15.43947 -89.849294 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_UpperArm" 11.452765 0.000001 -0.000004 -0.000003 -7.20247 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Hand" "ValveBiped.Bip01_L_Forearm" 10.945532 -0.000006 -0.000031 6.507306 7.122675 78.669798 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger4" "ValveBiped.Bip01_L_Hand" 3.147137 0.005676 -1.551344 8.213351 -12.990152 11.742428 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger41" "ValveBiped.Bip01_L_Finger4" 1.585899 0 0 0.955234 -34.374607 0.653397 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger42" "ValveBiped.Bip01_L_Finger41" 0.849079 0 0 -10.048532 -17.354268 -3.121078 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger3" "ValveBiped.Bip01_L_Hand" 3.471083 0.213272 -0.574067 5.954124 -16.778206 11.337861 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger31" "ValveBiped.Bip01_L_Finger3" 1.897537 -0.000008 0 -5.063454 -30.512982 -2.977608 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger32" "ValveBiped.Bip01_L_Finger31" 1.01445 0.000004 0 0.559038 -13.904483 0.138366 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger2" "ValveBiped.Bip01_L_Hand" 3.750084 0.114773 0.430058 3.893595 -14.791072 10.7303 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger21" "ValveBiped.Bip01_L_Finger2" 2.258194 0 0 -3.092653 -37.967177 -2.410839 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger22" "ValveBiped.Bip01_L_Finger21" 1.210388 0.000008 0 0.688638 -8.970351 0.108686 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger1" "ValveBiped.Bip01_L_Hand" 3.868299 -0.166634 1.490139 1.961124 -11.693718 10.352716 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger11" "ValveBiped.Bip01_L_Finger1" 1.786062 0 0 3.66905 -38.756245 2.940814 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger12" "ValveBiped.Bip01_L_Finger11" 1.044445 -0.000004 0 2.209324 -1.89655 0.073161 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger0" "ValveBiped.Bip01_L_Hand" 1.121477 -1.351563 1.030997 -19.741822 -7.111202 97.051428 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger01" "ValveBiped.Bip01_L_Finger0" 1.928114 0 -0.000004 -10.778427 -10.616002 0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger02" "ValveBiped.Bip01_L_Finger01" 1.285139 0 0.000008 -2.32885 11.249045 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Clavicle" "ValveBiped.Bip01_Spine4" 4.268658 1.531896 -1.575 73.748558 -114.71968 -24.241033 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_UpperArm" "ValveBiped.Bip01_R_Clavicle" 5.782726 0 0 23.248945 -11.666445 95.170107 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_UpperArm" 11.452768 -0.000001 0 0.000007 -7.202484 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped.Bip01_R_Forearm" 10.945511 -0.000005 0.000015 -6.507534 7.122605 -78.876985 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger4" "ValveBiped.Bip01_R_Hand" 3.147156 0.000069 1.551353 -8.213401 -12.98992 -11.535191 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger41" "ValveBiped.Bip01_R_Finger4" 1.585901 -0.000008 0 -0.955229 -34.374607 -0.653401 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger42" "ValveBiped.Bip01_R_Finger41" 0.849083 0.000004 0 10.048539 -17.354268 3.121073 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger3" "ValveBiped.Bip01_R_Hand" 3.471104 0.211185 0.574834 -5.954229 -16.777984 -11.130627 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger31" "ValveBiped.Bip01_R_Finger3" 1.897535 0 0 5.06346 -30.512989 2.977601 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger32" "ValveBiped.Bip01_R_Finger31" 1.014454 0 0 -0.559033 -13.904489 -0.138374 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger2" "ValveBiped.Bip01_R_Hand" 3.750103 0.116325 -0.42964 -3.8937 -14.79091 -10.523119 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger21" "ValveBiped.Bip01_R_Finger2" 2.258196 0.000008 0 3.092658 -37.967177 2.410831 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger22" "ValveBiped.Bip01_R_Finger21" 1.210384 0.000004 0 -0.688635 -8.970354 -0.108695 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger1" "ValveBiped.Bip01_R_Hand" 3.868322 -0.161243 -1.490732 -1.961171 -11.693492 -10.145484 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger11" "ValveBiped.Bip01_R_Finger1" 1.786062 -0.000008 0 -3.669044 -38.756256 -2.940823 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger12" "ValveBiped.Bip01_R_Finger11" 1.044445 0.000004 -0.000001 -2.209318 -1.896554 -0.073171 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger0" "ValveBiped.Bip01_R_Hand" 1.1215 -1.347832 -1.035882 19.767273 -7.037125 -96.83291 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger01" "ValveBiped.Bip01_R_Finger0" 1.92812 -0.000001 0 10.778424 -10.615989 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger02" "ValveBiped.Bip01_R_Finger01" 1.285143 0 0 2.32885 11.249053 0.000003 0 0 0 0 0 0
$definebone "ValveBiped.attachment_bandage_legL" "ValveBiped.Bip01_L_Calf" 7.023272 -6.880002 4.339547 -83.423261 -63.332738 150.153431 0 0 0 0 0 0
$definebone "ValveBiped.attachment_bandage_armL" "ValveBiped.Bip01_L_Forearm" 3.813803 -3.870654 0.998558 -61.28573 11.452962 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.attachment_armL_T" "ValveBiped.Bip01_L_Forearm" 0 -0.000007 -0.000031 6.507306 7.122668 78.669798 0 0 0 0 0 0
$definebone "ValveBiped.attachment_armR_T" "ValveBiped.Bip01_R_Forearm" 0 -0.000007 -0.000034 6.507312 7.122668 78.669798 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bone" "ValveBiped.Bip01_R_Hand" 2.856899 -1.536194 -0.9738 -15.61642 -90.427695 -86.009389 0 0 0 0 0 0
$definebone "ValveBiped.forward" "ValveBiped.Bip01_Head1" 2.000008 -3 0 0 -76 -90.000003 0 0 0 0 0 0
$definebone "ValveBiped.L_weapon_bone" "ValveBiped.Bip01_L_Hand" 3.349001 -1.370995 0.724999 -5.043001 89.255 113.321998 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bone_Clip" "ValveBiped.weapon_bone" 0.000004 0 10.000004 0.000003 0.000002 0 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bone_extra" "ValveBiped.weapon_bone" 0.018898 0.665158 9.395884 0.000003 0.000002 0 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bone_Clip2" "ValveBiped.Bip01_L_Hand" 3.028212 -0.923409 -2.009451 -0.743371 90.942357 90.188249 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bone_Clip2_Bullets" "ValveBiped.weapon_bone_Clip2" 0.116951 4.311603 0.061861 -0.000027 0.000011 0.000595 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bolt_l" "ValveBiped.Bip01_L_Hand" 0 0 0 -0.000001 0.000003 0.000002 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bone_Clip_Bullets" "ValveBiped.weapon_bone_Clip" 0 1 0.000008 0.000003 0.000002 0 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bolt" "ValveBiped.weapon_bone" 0 0 0 0.000003 0.000002 0 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bolt_opposite" "ValveBiped.weapon_bone" 0 0 0 0.000003 0.000002 0 0 0 0 0 0 0
$definebone "ValveBiped.weapon_charger" "ValveBiped.weapon_bone" 0 0 0 0.000003 0.000002 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Knee" "ValveBiped.Bip01_L_Thigh" 19.253853 0 -0.000001 0 1.446891 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Knee" "ValveBiped.Bip01_R_Thigh" 19.253841 0 0 0.000001 1.446719 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Ulna" "ValveBiped.Bip01_L_Forearm" 5.884354 0 0.000004 -0.000002 -0.000001 -7.237037 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Wrist" "ValveBiped.Bip01_L_Forearm" 11.768705 -0.000001 0 -0.000002 -0.000001 -13.660905 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Elbow" "ValveBiped.Bip01_L_UpperArm" 11.679201 0 -0.000004 -0.000007 -9.262339 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Bicep" "ValveBiped.Bip01_L_UpperArm" 5.837998 -0.735 -0.525002 -0.000005 -0.000002 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.hlp_jacket_arm_front1_L" "ValveBiped.Bip01_L_Clavicle" 5.825531 2.661388 2.409388 -0.935077 -1.404084 -0.111467 0 0 0 0 0 0
$definebone "ValveBiped.hlp_jacket_arm_top_L" "ValveBiped.Bip01_L_Clavicle" 6.752561 4.039024 -0.341453 1.070353 -1.091604 0.082238 0 0 0 0 0 0
$definebone "ValveBiped.hlp_jacket_arm_back_L" "ValveBiped.Bip01_L_Clavicle" 7.652452 1.954227 -2.880674 0.67213 0.445368 1.964537 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Wrist" "ValveBiped.Bip01_R_Forearm" 11.768707 0.000001 0.000004 0.000005 0.000006 13.903744 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Ulna" "ValveBiped.Bip01_R_Forearm" 5.884352 0.000001 0 0.000005 0.000006 7.369187 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Elbow" "ValveBiped.Bip01_R_UpperArm" 11.679197 0 0.000008 0.000007 -9.26228 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Bicep" "ValveBiped.Bip01_R_UpperArm" 5.837997 -0.641044 0.525002 0.000009 0.000003 -2.835174 0 0 0 0 0 0
$definebone "ValveBiped.hlp_jacket_arm_front1_R" "ValveBiped.Bip01_R_Clavicle" 5.625286 3.107059 -2.433369 4.724489 -0.393593 6.351416 0 0 0 0 0 0
$definebone "ValveBiped.hlp_jacket_arm_top_R" "ValveBiped.Bip01_R_Clavicle" 6.677644 4.114117 0.449763 0.587011 -0.410608 -0.513601 0 0 0 0 0 0
$definebone "ValveBiped.hlp_jacket_arm_back_R" "ValveBiped.Bip01_R_Clavicle" 7.673524 1.768635 2.985535 0.372493 0.714035 -1.829523 0 0 0 0 0 0
$definebone "ValveBiped.hlp_jacket_armpit_R" "ValveBiped.Bip01_Spine2" 4.902687 0.655644 -8.954903 0.22288 0.009139 4.694948 0 0 0 0 0 0
$definebone "ValveBiped.jiggy_jacket_right" "ValveBiped.Bip01_Spine" 2.64967 8.412623 -3.003099 -63.666133 107.998289 -104.786583 0 0 0 0 0 0
$definebone "ValveBiped.jiggy_jacket_left" "ValveBiped.Bip01_Spine" 2.538502 8.321048 3.447679 -61.873939 -87.220498 88.028653 0 0 0 0 0 0

$bonemerge "ValveBiped.Bip01_Pelvis"
$bonemerge "ValveBiped.Bip01_Spine"
$bonemerge "ValveBiped.Bip01_Spine1"
$bonemerge "ValveBiped.Bip01_Spine2"
$bonemerge "ValveBiped.Bip01_Spine4"
$bonemerge "ValveBiped.Bip01_L_Clavicle"
$bonemerge "ValveBiped.Bip01_L_UpperArm"
$bonemerge "ValveBiped.Bip01_L_Forearm"
$bonemerge "ValveBiped.Bip01_L_Hand"
$bonemerge "ValveBiped.Bip01_L_Finger4"
$bonemerge "ValveBiped.Bip01_L_Finger41"
$bonemerge "ValveBiped.Bip01_L_Finger42"
$bonemerge "ValveBiped.Bip01_L_Finger3"
$bonemerge "ValveBiped.Bip01_L_Finger31"
$bonemerge "ValveBiped.Bip01_L_Finger32"
$bonemerge "ValveBiped.Bip01_L_Finger2"
$bonemerge "ValveBiped.Bip01_L_Finger21"
$bonemerge "ValveBiped.Bip01_L_Finger22"
$bonemerge "ValveBiped.Bip01_L_Finger1"
$bonemerge "ValveBiped.Bip01_L_Finger11"
$bonemerge "ValveBiped.Bip01_L_Finger12"
$bonemerge "ValveBiped.Bip01_L_Finger0"
$bonemerge "ValveBiped.Bip01_L_Finger01"
$bonemerge "ValveBiped.Bip01_L_Finger02"
$bonemerge "ValveBiped.Bip01_R_Clavicle"
$bonemerge "ValveBiped.Bip01_R_UpperArm"
$bonemerge "ValveBiped.Bip01_R_Forearm"
$bonemerge "ValveBiped.Bip01_R_Hand"
$bonemerge "ValveBiped.Bip01_R_Finger4"
$bonemerge "ValveBiped.Bip01_R_Finger41"
$bonemerge "ValveBiped.Bip01_R_Finger42"
$bonemerge "ValveBiped.Bip01_R_Finger3"
$bonemerge "ValveBiped.Bip01_R_Finger31"
$bonemerge "ValveBiped.Bip01_R_Finger32"
$bonemerge "ValveBiped.Bip01_R_Finger2"
$bonemerge "ValveBiped.Bip01_R_Finger21"
$bonemerge "ValveBiped.Bip01_R_Finger22"
$bonemerge "ValveBiped.Bip01_R_Finger1"
$bonemerge "ValveBiped.Bip01_R_Finger11"
$bonemerge "ValveBiped.Bip01_R_Finger12"
$bonemerge "ValveBiped.Bip01_R_Finger0"
$bonemerge "ValveBiped.Bip01_R_Finger01"
$bonemerge "ValveBiped.Bip01_R_Finger02"
$bonemerge "ValveBiped.weapon_bone"
$bonemerge "ValveBiped.L_weapon_bone"
$bonemerge "ValveBiped.weapon_bone_Clip"
$bonemerge "ValveBiped.weapon_bone_extra"
$bonemerge "ValveBiped.weapon_bone_Clip2"
$bonemerge "ValveBiped.weapon_bone_Clip2_Bullets"
$bonemerge "ValveBiped.weapon_bolt_l"
$bonemerge "ValveBiped.weapon_bone_Clip_Bullets"
$bonemerge "ValveBiped.weapon_bolt"
$bonemerge "ValveBiped.weapon_bolt_opposite"
$bonemerge "ValveBiped.weapon_charger"
$bonemerge "ValveBiped.Bip01_L_Ulna"
$bonemerge "ValveBiped.Bip01_L_Wrist"
$bonemerge "ValveBiped.Bip01_R_Wrist"
$bonemerge "ValveBiped.Bip01_R_Ulna"

$jigglebone "fa00"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 200
		pitch_damping 7
		yaw_stiffness 30
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 15.000011
	}
}
$jigglebone "fa01"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 200
		pitch_damping 7
		yaw_stiffness 30
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 15.000011
	}
}
$jigglebone "fa02"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 200
		pitch_damping 7
		yaw_stiffness 30
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 15.000011
	}
}
$jigglebone "fa03"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 200
		pitch_damping 7
		yaw_stiffness 30
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 15.000011
	}
}
$jigglebone "fa04"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 200
		pitch_damping 7
		yaw_stiffness 30
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 15.000011
	}
}
$jigglebone "fa05"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 200
		pitch_damping 7
		yaw_stiffness 30
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 15.000011
	}
}
$jigglebone "fa06"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 200
		pitch_damping 7
		yaw_stiffness 30
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 15.000011
	}
}
$jigglebone "fa07"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 200
		pitch_damping 7
		yaw_stiffness 30
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 15.000011
	}
}
$jigglebone "fa08"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 200
		pitch_damping 7
		yaw_stiffness 30
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 15.000011
	}
}
$jigglebone "qz00"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 200
		pitch_damping 7
		yaw_stiffness 30
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 15.000011
	}
}
$jigglebone "qzz00"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 200
		pitch_damping 7
		yaw_stiffness 30
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 15.000011
	}
}
$jigglebone "qz01"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 200
		pitch_damping 7
		yaw_stiffness 30
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 15.000011
	}
}
$jigglebone "qzz01"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 200
		pitch_damping 7
		yaw_stiffness 30
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 15.000011
	}
}
$jigglebone "qz02"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 200
		pitch_damping 7
		yaw_stiffness 30
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 15.000011
	}
}
$jigglebone "qzz02"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 200
		pitch_damping 7
		yaw_stiffness 30
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 15.000011
	}
}
$jigglebone "qz03"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 200
		pitch_damping 7
		yaw_stiffness 30
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 15.000011
	}
}
$jigglebone "qzz03"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 200
		pitch_damping 7
		yaw_stiffness 30
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 15.000011
	}
}
$jigglebone "qz04"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 200
		pitch_damping 7
		yaw_stiffness 30
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 15.000011
	}
}
$jigglebone "qzz04"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 200
		pitch_damping 7
		yaw_stiffness 30
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 15.000011
	}
}
$jigglebone "qz05"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 200
		pitch_damping 7
		yaw_stiffness 30
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 15.000011
	}
}
$jigglebone "qzz05"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 200
		pitch_damping 7
		yaw_stiffness 30
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 15.000011
	}
}
$jigglebone "qz06"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 200
		pitch_damping 7
		yaw_stiffness 30
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 15.000011
	}
}
$jigglebone "qzz06"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 200
		pitch_damping 7
		yaw_stiffness 30
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 15.000011
	}
}
$jigglebone "qz07"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 200
		pitch_damping 7
		yaw_stiffness 30
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 15.000011
	}
}
$jigglebone "qzz07"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 200
		pitch_damping 7
		yaw_stiffness 30
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 15.000011
	}
}
$jigglebone "qz08"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 200
		pitch_damping 7
		yaw_stiffness 30
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 15.000011
	}
}
$jigglebone "qzz08"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 200
		pitch_damping 7
		yaw_stiffness 30
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 15.000011
	}
}
$jigglebone "qz09"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 200
		pitch_damping 7
		yaw_stiffness 30
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 15.000011
	}
}
$jigglebone "qzz09"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 200
		pitch_damping 7
		yaw_stiffness 30
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 15.000011
	}
}
$jigglebone "qz10"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 200
		pitch_damping 7
		yaw_stiffness 30
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 15.000011
	}
}
$jigglebone "qzz10"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 200
		pitch_damping 7
		yaw_stiffness 30
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 15.000011
	}
}
$jigglebone "qz11"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 200
		pitch_damping 7
		yaw_stiffness 30
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 15.000011
	}
}
$jigglebone "qzz11"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 200
		pitch_damping 7
		yaw_stiffness 30
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 15.000011
	}
}
$jigglebone "qz12"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 200
		pitch_damping 7
		yaw_stiffness 30
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 15.000011
	}
}
$jigglebone "qzz12"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 200
		pitch_damping 7
		yaw_stiffness 30
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 15.000011
	}
}
$jigglebone "qz13"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 200
		pitch_damping 7
		yaw_stiffness 30
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 15.000011
	}
}
$jigglebone "qzz13"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 200
		pitch_damping 7
		yaw_stiffness 30
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 15.000011
	}
}
/* $jigglebone "qz14"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 200
		pitch_damping 7
		yaw_stiffness 30
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 15.000011
	}
}
$jigglebone "qzz14"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 200
		pitch_damping 7
		yaw_stiffness 30
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 15.000011
	}
}
$jigglebone "qz15"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 200
		pitch_damping 7
		yaw_stiffness 30
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 15.000011
	}
}
$jigglebone "qzz15"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 200
		pitch_damping 7
		yaw_stiffness 30
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 15.000011
	}
}
$jigglebone "ld"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 200
		pitch_damping 7
		yaw_stiffness 30
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 15.000011
	}
} */

// $proceduralbones "survivor_biker_light.vrd"

$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0
$ikchain "ikclip" "ValveBiped.weapon_bone_Clip" knee 0.707 -0.707 0

$ikautoplaylock "rfoot" 1 0.1
$ikautoplaylock "lfoot" 1 0.1

/* $weightlist "weights_animHack" {
	 "ValveBiped.Bip01_Pelvis" 0
	 "ValveBiped.Bip01_R_Thigh" 0
	 "ValveBiped.Bip01_R_Calf" 0
	 "ValveBiped.Bip01_R_Foot" 0
	 "ValveBiped.Bip01_L_Thigh" 0
	 "ValveBiped.Bip01_L_Calf" 0
	 "ValveBiped.Bip01_L_Foot" 0
	 "ValveBiped.qz00" 0
	 "ValveBiped.qz01" 0
	 "ValveBiped.qz02" 0
	 "ValveBiped.qz03" 0
	 "ValveBiped.qz04" 0
	 "ValveBiped.qz05" 0
	 "ValveBiped.qz06" 0
	 "ValveBiped.qz07" 0
	 "ValveBiped.qz08" 0
	 "ValveBiped.qz09" 0
	 "ValveBiped.qz10" 0
	 "ValveBiped.qz11" 0
	 "ValveBiped.qz12" 0
	 "ValveBiped.qz13" 0
	 "ValveBiped.qz14" 0
	 "ValveBiped.qz15" 0
	 "ValveBiped.Bip01_Spine" 0
	 "ValveBiped.Bip01_Spine1" 0
	 "ValveBiped.Bip01_Spine2" 0
	 "ValveBiped.Bip01_Spine4" 0
	 "ValveBiped.Bip01_Neck1" 0
	 "ValveBiped.Bip01_Head1" 0
	 "ValveBiped.forward" 0
	 "ValveBiped.Bip01_R_Clavicle" 0
	 "ValveBiped.Bip01_R_UpperArm" 0
	 "ValveBiped.Bip01_R_Forearm" 0
	 "ValveBiped.Bip01_R_Hand" 0
	 "ValveBiped.weapon_bone" 0
	 "ValveBiped.weapon_bone_Clip" 0
	 "ValveBiped.weapon_bone_extra" 0
	 "ValveBiped.Bip01_R_Finger0" 0
	 "ValveBiped.Bip01_R_Finger01" 0
	 "ValveBiped.Bip01_R_Finger02" 0
	 "ValveBiped.Bip01_R_Finger3" 0
	 "ValveBiped.Bip01_R_Finger31" 0
	 "ValveBiped.Bip01_R_Finger32" 0
	 "ValveBiped.Bip01_R_Finger4" 0
	 "ValveBiped.Bip01_R_Finger41" 0
	 "ValveBiped.Bip01_R_Finger42" 0
	 "ValveBiped.Bip01_R_Finger2" 0
	 "ValveBiped.Bip01_R_Finger21" 0
	 "ValveBiped.Bip01_R_Finger22" 0
	 "ValveBiped.Bip01_R_Finger1" 0
	 "ValveBiped.Bip01_R_Finger11" 0
	 "ValveBiped.Bip01_R_Finger12" 0
	 "ValveBiped.attachment_armR_T" 0
	 "ValveBiped.Bip01_R_Wrist" 0
	 "ValveBiped.Bip01_R_Ulna" 0
	 "ValveBiped.Bip01_L_Clavicle" 0
	 "ValveBiped.Bip01_L_UpperArm" 0
	 "ValveBiped.Bip01_L_Forearm" 0
	 "ValveBiped.Bip01_L_Hand" 0
	 "ValveBiped.L_weapon_bone" 0
	 "ValveBiped.Bip01_L_Finger3" 0
	 "ValveBiped.Bip01_L_Finger31" 0
	 "ValveBiped.Bip01_L_Finger32" 0
	 "ValveBiped.Bip01_L_Finger2" 0
	 "ValveBiped.Bip01_L_Finger21" 0
	 "ValveBiped.Bip01_L_Finger22" 0
	 "ValveBiped.Bip01_L_Finger1" 0
	 "ValveBiped.Bip01_L_Finger11" 0
	 "ValveBiped.Bip01_L_Finger12" 0
	 "ValveBiped.Bip01_L_Finger4" 0
	 "ValveBiped.Bip01_L_Finger41" 0
	 "ValveBiped.Bip01_L_Finger42" 0
	 "ValveBiped.Bip01_L_Finger0" 0
	 "ValveBiped.Bip01_L_Finger01" 0
	 "ValveBiped.Bip01_L_Finger02" 0
	 "ValveBiped.attachment_armL_T" 0
	 "ValveBiped.Bip01_L_Ulna" 0
	 "ValveBiped.Bip01_L_Wrist" 0
	 "000" 0
	 "fa00" 0
	 "fa01" 0
	 "fa02" 0
	 "fa03" 0
	 "fa04" 0
	 "fa05" 0
	 "fa06" 0
	 "fa07" 0
	 "fa08" 0
	 "qz00" 0
	 "qzz00" 0
	 "qz01" 0
	 "qzz01" 0
	 "qz02" 0
	 "qzz02" 0
	 "qz03" 0
	 "qzz03" 0
	 "qz04" 0
	 "qzz04" 0
	 "qz05" 0
	 "qzz05" 0
	 "qz06" 0
	 "qzz06" 0
	 "qz07" 0
	 "qzz07" 0
	 "qz08" 0
	 "qzz08" 0
	 "qz09" 0
	 "qzz09" 0
	 "qz10" 0
	 "qzz10" 0
	 "qz11" 0
	 "qzz11" 0
	 "qz12" 0
	 "qzz12" 0
	 "qz13" 0
	 "qzz13" 0
	 "qz14" 0
	 "qzz14" 0
	 "qz15" 0
	 "qzz15" 0
	 "ld" 0
} */

$animation "@dlc1_intro_male_leanup_corrective_animation" "survivor_biker_light_anims\@dlc1_intro_male_leanup_corrective_animation.smd" {
}

$animation "@dlc1_intro_male_leanleft_corrective_animation" "survivor_biker_light_anims\@dlc1_intro_male_leanleft_corrective_animation.smd" {
}

$animation "@dlc1_intro_male_headnod_corrective_animation" "survivor_biker_light_anims\@dlc1_intro_male_headnod_corrective_animation.smd" {
}

$animation "@dlc1_intro_male_handflipR_corrective_animation" "survivor_biker_light_anims\@dlc1_intro_male_handflipR_corrective_animation.smd" {
}

$animation "@INTROIDLENOISE_corrective_animation" "survivor_biker_light_anims\@INTROIDLENOISE_corrective_animation.smd" {
}

$sequence "Biker" {
	"survivor_biker_light_anims\Biker.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 3
}

$sequence "animHack" {
	"survivor_biker_light_anims\animHack.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 10 10 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 10 10 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 10 10 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 10 10 target 3
}

$sequence "dlc1_intro_male_idle" {
	"survivor_biker_light_anims\dlc1_intro_male_idle.smd"
	fadein 0.2
	fadeout 0.2
	addlayer "INTROIDLENOISE"
	fps 30
	loop
	ikrule "lhand" touch "" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 241 241 target 1 usesequence 
	ikrule "rhand" touch "" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 241 241 target 0 usesequence 
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 241 241 target 2 usesequence 
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 241 241 target 3 usesequence 
}

$sequence "dlc1_intro_male_leanup" {
	"survivor_biker_light_anims\dlc1_intro_male_leanup.smd"
	activity "ACT_DLCINTRO_01" -1
	delta
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "@dlc1_intro_male_leanup_corrective_animation" 0
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" touch "" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 120 120 target 1
	ikrule "rhand" touch "" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 120 120 target 0
	ikrule "lfoot" touch "" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 120 120 target 3
	ikrule "rfoot" touch "" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 120 120 target 2
}

$sequence "dlc1_intro_male_leanleft" {
	"survivor_biker_light_anims\dlc1_intro_male_leanleft.smd"
	activity "ACT_DLCINTRO_02" -1
	delta
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "@dlc1_intro_male_leanleft_corrective_animation" 0
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" touch "" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 125 125 target 1
	ikrule "rhand" touch "" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 125 125 target 0
	ikrule "lfoot" touch "" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 125 125 target 3
	ikrule "rfoot" touch "" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 125 125 target 2
}

$sequence "dlc1_intro_male_headnod" {
	"survivor_biker_light_anims\dlc1_intro_male_headnod.smd"
	activity "ACT_DLCINTRO_03" -1
	delta
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "@dlc1_intro_male_headnod_corrective_animation" 0
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" touch "" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 28 28 target 1
	ikrule "rhand" touch "" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 28 28 target 0
	ikrule "lfoot" touch "" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 28 28 target 3
	ikrule "rfoot" touch "" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 28 28 target 2
}

$sequence "dlc1_intro_male_handflipR" {
	"survivor_biker_light_anims\dlc1_intro_male_handflipR.smd"
	activity "ACT_DLCINTRO_04" -1
	delta
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "@dlc1_intro_male_handflipR_corrective_animation" 0
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "lhand" touch "" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 0
	ikrule "lfoot" touch "" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 3
	ikrule "rfoot" touch "" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 40 40 target 2
}

$sequence "ragdoll" {
	"survivor_biker_light_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 3
}

$sequence "INTROIDLENOISE" {
	"survivor_biker_light_anims\INTROIDLENOISE.smd"
	delta
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "@INTROIDLENOISE_corrective_animation" 0
	fadein 0.2
	fadeout 0.2
	hidden
	iklock "lfoot" 1 0
	iklock "rfoot" 1 0
	fps 30
	loop
	walkframe 242
}


$animation "a_proportions_corrective_animation" "survivor_biker_light_anims\a_proportions_corrective_animation.smd" {
}

$animation "a_proportions" "survivor_biker_light_anims\a_proportions.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_proportions_corrective_animation" 0
}

/* $sequence "CustomFrancis" {
	"survivor_biker_light_anims\CustomFrancis.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 3
	ikrule "ikclip" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 4
} */


$sequence "reference" {
	"survivor_biker_light_anims\reference.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 3
	ikrule "ikclip" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 100 100 target 4
}

$sequence "proportions" {
	"a_proportions"
	autoplay
	predelta
	fadein 0.2
	fadeout 0.2
}

