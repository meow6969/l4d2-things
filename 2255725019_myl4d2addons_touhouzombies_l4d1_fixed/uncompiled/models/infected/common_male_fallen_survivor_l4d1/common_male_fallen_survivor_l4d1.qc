// Created by Crowbar 0.74

$modelname "infected/common_male_fallen_survivor_l4d1.mdl"

$bodygroup "body"
{
	studio "alice_margatroid.smd"
}
$bodygroup "hands"
{
	studio "arms.smd"
}
$bodygroup "Headband"
{
	studio "headband.smd"
	blank
}
$bodygroup "Tie"
{
	studio "tie.smd"
	blank
}
$bodygroup "Right Wristband"
{
	studio "r_wristband.smd"
	blank
}
$bodygroup "Left Wristband"
{
	studio "l_wristband.smd"
	blank
}
$bodygroup "Belt"
{
	studio "belt.smd"
	blank
}
$bodygroup "Right Boot"
{
	studio "r_boot.smd"
	blank
}
$bodygroup "Left Boot"
{
	studio "l_boot.smd"
	blank
}
$bodygroup "clamped1"
{
	studio "body30_model0.smd"
}


$surfaceprop "flesh"

$contents "solid"

$illumposition 0 -0.957 37.37

$ambientboost

$mostlyopaque

$cdmaterials "pacagma\touhou\alice_margatroid\"

$attachment "Head" "ValveBiped.Bip01_Head1" 0 0 0 rotate 0 0 0
$attachment "RArm" "ValveBiped.Bip01_R_UpperArm" 0 0 0 rotate 0 0 0
$attachment "LArm" "ValveBiped.Bip01_L_UpperArm" 0 0 0 rotate 0 0 0
$attachment "RLeg" "ValveBiped.Bip01_R_Thigh" 0 0 0 rotate 0 0 0
$attachment "LLeg" "ValveBiped.Bip01_L_Thigh" 0 0 0 rotate 0 0 0
$attachment "lfoot" "ValveBiped.Bip01_L_Calf" -3.09 -70.42 -5.56 rotate 16.55 0 0
$attachment "rfoot" "ValveBiped.Bip01_R_Calf" 16.55 0 0 rotate 3.09 -70.42 6.2
$attachment "Mouth" "ValveBiped.Bip01_Head1" 0.55 -3.5 0 rotate 0 -86 -90
$attachment "forward" "ValveBiped.Bip01_Head1" 2 -3 0 rotate 0 0 0
$attachment "molotov" "ValveBiped.Bip01_Spine2" -4.32 7.07 3.35 rotate -10 86 70
$attachment "pipebomb" "ValveBiped.Bip01_Spine1" -5.81 4.27 -6.94 rotate 40 110 87
$attachment "pills" "ValveBiped.Bip01_Spine1" -5.81 4.27 6.94 rotate 20 90 78
$attachment "medkit" "ValveBiped.Bip01_Spine4" -1 -5 0 rotate 5 77 0

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 72

$hboxset "default"
$hbox 1 "ValveBiped.Bip01_Head1" -1.5 -4 -4.25 8.5 6 4.25
$hbox 4 "ValveBiped.Bip01_L_UpperArm" -0.5 -1.25 -1.75 10.5 2.25 1.75
$hbox 4 "ValveBiped.Bip01_L_Forearm" 0 -1.25 -1.75 9 1.75 1.75
$hbox 4 "ValveBiped.Bip01_L_Hand" 0 -1.5 -2 5 1 2
$hbox 5 "ValveBiped.Bip01_R_UpperArm" -0.5 -1.25 -1.75 10.5 2.25 1.75
$hbox 5 "ValveBiped.Bip01_R_Forearm" 0 -1.25 -1.75 9 1.75 1.75
$hbox 5 "ValveBiped.Bip01_R_Hand" 0 -1.5 -2 5 1 2
$hbox 6 "ValveBiped.Bip01_L_Thigh" 0.6 -2.75 -3 13.4 3.25 3
$hbox 6 "ValveBiped.Bip01_L_Calf" -1 -2.25 -2.5 17 3.25 2.5
$hbox 6 "ValveBiped.Bip01_L_Foot" -1.5 -1.5 -2.25 5.5 3.5 1.75
$hbox 7 "ValveBiped.Bip01_R_Thigh" 0.6 -2.75 -3 13.4 3.25 3
$hbox 7 "ValveBiped.Bip01_R_Calf" -1 -2.25 -2.5 17 3.25 2.5
$hbox 7 "ValveBiped.Bip01_R_Foot" -1.5 -1.5 -2.25 5.5 3.5 1.75
$hbox 3 "ValveBiped.Bip01_Pelvis" -6.25 -3.5 -4.8 6.25 6.5 3.8
$hbox 2 "ValveBiped.Bip01_Spine2" -6.1 -2.3 -4.5 6.9 5.7 4.5
$skipboneinbbox

$definebone "ValveBiped.Bip01_Pelvis" "" 0 -2.087236 35.214973 0 0 90.000009 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine" "ValveBiped.Bip01_Pelvis" 0.000003 3.958523 -1.379565 -4.245821 90.000276 90.000003 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine1" "ValveBiped.Bip01_Spine" 3.543995 0.000027 0.000016 -0.000348 -6.452352 0.000029 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine2" "ValveBiped.Bip01_Spine1" 3.34124 0.000028 -0.000005 0.000246 -0.723747 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine4" "ValveBiped.Bip01_Spine2" 6.963295 0.000036 0.000019 -0.000256 8.928179 -0.000025 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Neck1" "ValveBiped.Bip01_Spine4" 2.935257 -0.000237 -0.000006 0.000065 12.837212 -179.999978 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Head1" "ValveBiped.Bip01_Neck1" 2.189419 0.080305 0.000001 0.000053 5.762698 -0.000003 0 0 0 0 0 0
$definebone "Eye_L" "ValveBiped.Bip01_Head1" 2.52314 -0.334479 -1.152895 -3.125808 -4.288008 -162.639877 0 0 0 0 0 0
$definebone "Eye_R" "ValveBiped.Bip01_Head1" 2.523151 -0.334476 1.152903 -3.124668 175.712504 17.361233 0 0 0 0 0 0
$definebone "Teeth" "ValveBiped.Bip01_Head1" 0.249527 -1.665982 0 89.999873 168.084904 0 0 0 0 0 0 0
$definebone "Tongue1" "ValveBiped.Bip01_Head1" 0.238728 -1.261398 0 89.999572 166.222735 0 0 0 0 0 0 0
$definebone "Tongue2" "Tongue1" 0 0.645903 0 -0.000007 -0.000001 0.30207 0 0 0 0 0 0
$definebone "Tongue3" "Tongue2" 0 0.483725 -0.000011 0 0 -0.297412 0 0 0 0 0 0
$definebone "FrontHair1" "ValveBiped.Bip01_Head1" 5.935238 -3.22506 0.000009 -89.999921 13.983912 0 0 0 0 0 0 0
$definebone "FrontHair2" "FrontHair1" 0 0.033809 2.125095 -0.000002 0.000001 -0.300722 0 0 0 0 0 0
$definebone "FrontHair_L" "ValveBiped.Bip01_Head1" 5.935242 -3.225062 -2.082912 89.9999 13.983912 0 0 0 0 0 0 0
$definebone "FrontHair_R" "ValveBiped.Bip01_Head1" 5.93523 -3.225059 2.08293 -89.999921 13.983912 0 0 0 0 0 0 0
$definebone "SideHair1_L" "ValveBiped.Bip01_Head1" 5.365299 0.301672 -4.43436 -89.999914 11.206456 0 0 0 0 0 0 0
$definebone "SideHair2_L" "SideHair1_L" 0 -0.100058 3.071205 -0.000002 -0.000001 0.545535 0 0 0 0 0 0
$definebone "SideHair3_L" "SideHair2_L" 0 -0.047046 2.040993 0 0 0.932757 0 0 0 0 0 0
$definebone "SideHair1_R" "ValveBiped.Bip01_Head1" 5.365273 0.301674 4.434371 -89.999914 11.206456 0 0 0 0 0 0 0
$definebone "SideHair2_R" "SideHair1_R" 0 -0.100058 3.071205 -0.000002 -0.000001 0.545549 0 0 0 0 0 0
$definebone "SideHair3_R" "SideHair2_R" 0 -0.047046 2.040977 0 0 0.932738 0 0 0 0 0 0
$definebone "BackSideHair1_L" "ValveBiped.Bip01_Head1" 4.607597 3.495597 -5.170744 -89.999914 11.206456 0 0 0 0 0 0 0
$definebone "BackSideHair2_L" "BackSideHair1_L" 0 -0.166048 5.096725 -0.001277 0.077923 0.00881 0 0 0 0 0 0
$definebone "BackSideHair1_R" "ValveBiped.Bip01_Head1" 4.607563 3.495595 5.170753 -89.999914 11.206442 0 0 0 0 0 0 0
$definebone "BackSideHair2_R" "BackSideHair1_R" 0 -0.166049 5.096745 0.001273 -0.077925 0.00881 0 0 0 0 0 0
$definebone "BackInsideHair" "ValveBiped.Bip01_Head1" 0.605942 4.565639 0.000001 -89.999914 10.518409 0 0 0 0 0 0 0
$definebone "BackHair" "ValveBiped.Bip01_Head1" 0.33976 5.719982 0.000001 -89.999921 10.518403 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Clavicle" "ValveBiped.Bip01_Spine4" 1.620518 0.585389 0.90623 -70.99024 175.389627 80.059823 0 0 0 0 0 0
$definebone "SleeveRibbon_L" "ValveBiped.Bip01_L_Clavicle" 8.683131 -0.055904 -0.805784 80.377229 105.624313 117.431907 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_UpperArm" "ValveBiped.Bip01_L_Clavicle" 4.017079 -0.343719 -0.838144 2.851127 -16.685667 -81.605919 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_UpperArm" 9.653368 0 0.000004 0.102417 -0.785094 0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Hand" "ValveBiped.Bip01_L_Forearm" 9.700518 -0.000003 0.173656 -3.37209 0.00005 89.999989 0 0 0 0 0 0
$definebone "BackArmKA_L" "ValveBiped.Bip01_L_UpperArm" 0.140936 1.465839 1.65683 -37.430195 -83.830887 -2.121953 0 0 0 0 0 0
$definebone "FrontArmKA_L" "ValveBiped.Bip01_L_UpperArm" -0.074823 -0.93014 1.653088 -27.678934 -99.282537 8.336784 0 0 0 0 0 0
$definebone "BackKA1_L" "ValveBiped.Bip01_L_Clavicle" 2.275753 1.061657 -2.923032 -40.527044 37.226088 -148.563008 0 0 0 0 0 0
$definebone "BackKA2_L" "BackKA1_L" -0.000004 1.650684 0 -12.827557 8.09969 -28.841536 0 0 0 0 0 0
$definebone "SideKA1_L" "ValveBiped.Bip01_Spine4" 1.750286 1.309223 2.4316 12.058508 51.984993 57.982931 0 0 0 0 0 0
$definebone "SideKA2_L" "SideKA1_L" -0.000004 2.839314 0.000004 -30.707656 26.145512 -23.822677 0 0 0 0 0 0
$definebone "FrontKA1_L" "ValveBiped.Bip01_Spine4" 1.24667 2.549739 1.387323 5.450234 43.297491 49.295459 0 0 0 0 0 0
$definebone "FrontKA2_L" "FrontKA1_L" -0.000008 3.089647 0.000008 -31.873389 29.459084 -20.252015 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Clavicle" "ValveBiped.Bip01_Spine4" 1.620544 0.585401 -0.906207 70.962011 175.883136 -83.704481 0 0 0 0 0 0
$definebone "SleeveRibbon_R" "ValveBiped.Bip01_R_Clavicle" 8.685408 -0.111889 0.775028 85.173333 -84.66585 -69.480386 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_UpperArm" "ValveBiped.Bip01_R_Clavicle" 4.019472 -0.402168 0.79994 -1.50898 -16.828698 85.498198 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_UpperArm" 9.653349 0 0 -0.102733 -0.785107 -0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped.Bip01_R_Forearm" 9.700523 -0.000002 -0.173683 3.389252 0.000045 -90.000009 0 0 0 0 0 0
$definebone "BackArmKA_R" "ValveBiped.Bip01_R_UpperArm" 0.140936 1.46584 -1.656834 -37.430174 96.169145 177.877975 0 0 0 0 0 0
$definebone "FrontArmKA_R" "ValveBiped.Bip01_R_UpperArm" -0.074835 -0.93014 -1.653084 -27.678916 80.717482 -171.663281 0 0 0 0 0 0
$definebone "BackKA1_R" "ValveBiped.Bip01_R_Clavicle" 2.284115 0.849781 2.985157 -38.089158 -140.053097 27.152142 0 0 0 0 0 0
$definebone "BackKA2_R" "BackKA1_R" -0.000006 1.650673 0 12.827555 -8.09971 -28.841546 0 0 0 0 0 0
$definebone "SideKA1_R" "ValveBiped.Bip01_Spine4" 1.750278 1.309222 -2.431606 12.058381 -128.015053 -122.017204 0 0 0 0 0 0
$definebone "SideKA2_R" "SideKA1_R" 0.000006 2.839324 -0.000004 30.707649 -26.14551 -23.82267 0 0 0 0 0 0
$definebone "FrontKA1_R" "ValveBiped.Bip01_Spine4" 1.246651 2.549737 -1.387329 5.450074 -136.702534 -130.704699 0 0 0 0 0 0
$definebone "FrontKA2_R" "FrontKA1_R" -0.000004 3.089649 0.000004 31.873412 -29.459002 -20.251921 0 0 0 0 0 0
$definebone "BackMiddleKA1" "ValveBiped.Bip01_Spine4" 0.209564 -2.528919 -0.000001 89.999518 171.949548 0 0 0 0 0 0 0
$definebone "BackMiddleKA2" "BackMiddleKA1" 0 0.48807 1.83345 -0.000003 -0.000001 2.055017 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Thigh" "ValveBiped.Bip01_Pelvis" 2.982521 0.000004 0.000002 0 -90.000003 -90.000009 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Calf" "ValveBiped.Bip01_L_Thigh" 13.441391 -0.116433 -0.318382 0.000021 7.046938 0.000003 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Foot" "ValveBiped.Bip01_L_Calf" 17.962406 0 0 -0.000013 -62.078428 0.000033 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Thigh" "ValveBiped.Bip01_Pelvis" -2.98252 0.000004 0.000002 0 -90.000003 -90.000009 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Calf" "ValveBiped.Bip01_R_Thigh" 13.441391 -0.116433 0.31838 0.000021 7.046941 0.000003 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Foot" "ValveBiped.Bip01_R_Calf" 17.962406 0 0 -0.000018 -62.252619 0.000013 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger0" "ValveBiped.Bip01_L_Hand" 0.255142 -0.280396 0.786743 -22.511612 -18.961411 -93.263481 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger01" "ValveBiped.Bip01_L_Finger0" 1.293726 0.000002 0.000008 0.07288 -2.50538 -3.21779 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger02" "ValveBiped.Bip01_L_Finger01" 1.033815 0.026755 0.086334 -4.475931 -15.010504 -0.088586 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger1" "ValveBiped.Bip01_L_Hand" 2.478043 -0.225304 0.803191 -0.000155 -5.195114 0.000009 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger11" "ValveBiped.Bip01_L_Finger1" 1.164511 -0.027367 0.008878 0.000036 -1.346249 -0.000005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger12" "ValveBiped.Bip01_L_Finger11" 0.793106 0.009369 -0.015788 0.00004 0.677055 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger2" "ValveBiped.Bip01_L_Hand" 2.609573 -0.172768 0.167416 -0.000019 -3.787672 0.000004 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger21" "ValveBiped.Bip01_L_Finger2" 1.203959 0.021435 0.008552 -0.000023 1.019822 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger22" "ValveBiped.Bip01_L_Finger21" 0.809978 -0.023346 0 0.000054 -1.650921 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger3" "ValveBiped.Bip01_L_Hand" 2.495249 -0.28756 -0.444678 0.000048 -6.57384 0.000009 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger31" "ValveBiped.Bip01_L_Finger3" 1.024574 0.059875 0.017763 -0.000029 3.344929 -0.000008 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger32" "ValveBiped.Bip01_L_Finger31" 0.752829 -0.013725 0.0273 -0.000041 -1.044404 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger4" "ValveBiped.Bip01_L_Hand" 2.354773 -0.462547 -1.022895 -0.000006 -11.112979 0.000005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger41" "ValveBiped.Bip01_L_Finger4" 0.80718 0.074558 0.035851 -0.000032 5.276948 0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger42" "ValveBiped.Bip01_L_Finger41" 0.590862 0.010323 0.023023 0.00002 1.000826 -0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger0" "ValveBiped.Bip01_R_Hand" 0.255068 -0.280472 -0.786743 22.5116 -18.978391 93.263474 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger01" "ValveBiped.Bip01_R_Finger0" 1.293739 0 0 -0.220634 -2.516857 3.638874 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger02" "ValveBiped.Bip01_R_Finger01" 1.033586 0.026156 -0.089211 4.396155 -15.046681 0.048594 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger1" "ValveBiped.Bip01_R_Hand" 2.477989 -0.22604 -0.803191 0.000179 -5.212116 -0.000004 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger11" "ValveBiped.Bip01_R_Finger1" 1.164515 -0.027367 -0.008878 -0.00004 -1.346272 0.000005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger12" "ValveBiped.Bip01_R_Finger11" 0.793106 0.00938 0.015789 -0.000033 0.677027 0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger2" "ValveBiped.Bip01_R_Hand" 2.609529 -0.173538 -0.167416 0.000042 -3.804667 -0.000003 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger21" "ValveBiped.Bip01_R_Finger2" 1.203957 0.021431 -0.008552 0.000035 1.019787 0.000003 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger22" "ValveBiped.Bip01_R_Finger21" 0.809975 -0.023357 0 -0.000065 -1.650962 0.000004 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger3" "ValveBiped.Bip01_R_Hand" 2.495169 -0.288292 0.444679 -0.000025 -6.590836 -0.000007 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger31" "ValveBiped.Bip01_R_Finger3" 1.024569 0.059879 -0.017762 0.00003 3.344893 0.000009 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger32" "ValveBiped.Bip01_R_Finger31" 0.752827 -0.013721 -0.0273 0.000054 -1.044441 0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger4" "ValveBiped.Bip01_R_Hand" 2.35463 -0.463242 1.022895 0.000029 -11.129973 -0.000011 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger41" "ValveBiped.Bip01_R_Finger4" 0.807182 0.074554 -0.035851 0.000052 5.276904 0.000006 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger42" "ValveBiped.Bip01_R_Finger41" 0.590853 0.010323 -0.023023 -0.000029 1.000797 0.000003 0 0 0 0 0 0
$definebone "Tie1" "ValveBiped.Bip01_Spine4" 0.794476 3.282163 -0.000002 -89.999907 -36.546966 0 0 0 0 0 0 0
$definebone "Tie2" "Tie1" 0 0.091845 0.779434 -0.000014 -0.000001 6.917671 0 0 0 0 0 0
$definebone "Tie3" "Tie2" 0 0.167423 0.697979 -0.002082 -0.000188 5.097905 0 0 0 0 0 0
$definebone "Tie4" "Tie3" 0.000041 0.226934 1.110523 0.001805 -0.00001 1.966384 0 0 0 0 0 0
$definebone "Tie5" "Tie4" 0.000008 0.112391 1.553921 0.000137 -0.000003 1.016097 0 0 0 0 0 0
$definebone "Tie6" "Tie5" 0.000005 -0.150728 1.708767 0.003407 0.000918 15.82999 0 0 0 0 0 0
$definebone "Belt1" "ValveBiped.Bip01_Pelvis" 2.795703 6.788696 3.734684 0.000009 0.00001 49.793841 0 0 0 0 0 0
$definebone "Belt2" "Belt1" -0.000001 -0.562551 3.198036 -0.000027 -0.000005 18.195535 0 0 0 0 0 0
$definebone "Belt3" "Belt2" 0.000001 0.136871 4.045181 0.000068 0.000002 0.468351 0 0 0 0 0 0
$definebone "Belt4" "Belt3" -0.000004 0.182451 4.048157 -0.000027 0 5.295954 0 0 0 0 0 0
$definebone "Belt5" "Belt4" -0.000002 0.549179 4.012953 -0.000014 0 1.276335 0 0 0 0 0 0

$jigglebone "FrontHair1"
{
	is_flexible
	{
		length 13
		tip_mass 300
		pitch_stiffness 45
		pitch_damping 6
		yaw_stiffness 45
		yaw_damping 6
		along_stiffness 100
		along_damping 0
		pitch_constraint -45.000001 15
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -25 25
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "FrontHair2"
{
	is_flexible
	{
		length 13
		tip_mass 300
		pitch_stiffness 45
		pitch_damping 6
		yaw_stiffness 45
		yaw_damping 6
		along_stiffness 100
		along_damping 0
		pitch_constraint -45.000001 15
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -25 25
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "FrontHair_L"
{
	is_flexible
	{
		length 13
		tip_mass 300
		pitch_stiffness 45
		pitch_damping 6
		yaw_stiffness 45
		yaw_damping 6
		along_stiffness 100
		along_damping 0
		pitch_constraint -45.000001 15
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -25 25
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "FrontHair_R"
{
	is_flexible
	{
		length 13
		tip_mass 300
		pitch_stiffness 45
		pitch_damping 6
		yaw_stiffness 45
		yaw_damping 6
		along_stiffness 100
		along_damping 0
		pitch_constraint -45.000001 15
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -25 25
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "SideHair1_L"
{
	is_flexible
	{
		length 13
		tip_mass 300
		pitch_stiffness 45
		pitch_damping 6
		yaw_stiffness 45
		yaw_damping 6
		along_stiffness 100
		along_damping 0
		pitch_constraint -45.000001 15
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -25 25
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "SideHair2_L"
{
	is_flexible
	{
		length 13
		tip_mass 300
		pitch_stiffness 45
		pitch_damping 6
		yaw_stiffness 45
		yaw_damping 6
		along_stiffness 100
		along_damping 0
		pitch_constraint -45.000001 15
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -25 25
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "SideHair3_L"
{
	is_flexible
	{
		length 13
		tip_mass 300
		pitch_stiffness 45
		pitch_damping 6
		yaw_stiffness 45
		yaw_damping 6
		along_stiffness 100
		along_damping 0
		pitch_constraint -45.000001 15
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -25 25
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "SideHair1_R"
{
	is_flexible
	{
		length 13
		tip_mass 300
		pitch_stiffness 45
		pitch_damping 6
		yaw_stiffness 45
		yaw_damping 6
		along_stiffness 100
		along_damping 0
		pitch_constraint -45.000001 15
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -25 25
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "SideHair2_R"
{
	is_flexible
	{
		length 13
		tip_mass 300
		pitch_stiffness 45
		pitch_damping 6
		yaw_stiffness 45
		yaw_damping 6
		along_stiffness 100
		along_damping 0
		pitch_constraint -45.000001 15
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -25 25
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "SideHair3_R"
{
	is_flexible
	{
		length 13
		tip_mass 300
		pitch_stiffness 45
		pitch_damping 6
		yaw_stiffness 45
		yaw_damping 6
		along_stiffness 100
		along_damping 0
		pitch_constraint -45.000001 15
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -25 25
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "BackSideHair1_L"
{
	is_flexible
	{
		length 13
		tip_mass 300
		pitch_stiffness 45
		pitch_damping 6
		yaw_stiffness 45
		yaw_damping 6
		along_stiffness 100
		along_damping 0
		pitch_constraint -45.000001 15
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -25 25
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "BackSideHair2_L"
{
	is_flexible
	{
		length 13
		tip_mass 300
		pitch_stiffness 45
		pitch_damping 6
		yaw_stiffness 45
		yaw_damping 6
		along_stiffness 100
		along_damping 0
		pitch_constraint -45.000001 15
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -25 25
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "BackSideHair1_R"
{
	is_flexible
	{
		length 13
		tip_mass 300
		pitch_stiffness 45
		pitch_damping 6
		yaw_stiffness 45
		yaw_damping 6
		along_stiffness 100
		along_damping 0
		pitch_constraint -45.000001 15
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -25 25
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "BackSideHair2_R"
{
	is_flexible
	{
		length 13
		tip_mass 300
		pitch_stiffness 45
		pitch_damping 6
		yaw_stiffness 45
		yaw_damping 6
		along_stiffness 100
		along_damping 0
		pitch_constraint -45.000001 15
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -25 25
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "BackInsideHair"
{
	is_flexible
	{
		length 13
		tip_mass 300
		pitch_stiffness 45
		pitch_damping 6
		yaw_stiffness 45
		yaw_damping 6
		along_stiffness 100
		along_damping 0
		pitch_constraint -45.000001 15
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -25 25
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "BackHair"
{
	is_flexible
	{
		length 13
		tip_mass 300
		pitch_stiffness 45
		pitch_damping 6
		yaw_stiffness 45
		yaw_damping 6
		along_stiffness 100
		along_damping 0
		pitch_constraint -45.000001 15
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -25 25
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "SleeveRibbon_L"
{
	is_flexible
	{
		length 10
		tip_mass 0
		pitch_stiffness 75
		pitch_damping 7
		yaw_stiffness 75
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 19.999999
	}
}
$jigglebone "SleeveRibbon_R"
{
	is_flexible
	{
		length 10
		tip_mass 0
		pitch_stiffness 75
		pitch_damping 7
		yaw_stiffness 75
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 19.999999
	}
}
$jigglebone "BackMiddleKA1"
{
	is_flexible
	{
		length 15
		tip_mass 0
		pitch_stiffness 45
		pitch_damping 5
		yaw_stiffness 45
		yaw_damping 5
		along_stiffness 100
		along_damping 0
		pitch_constraint -19.999999 19.999999
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -19.999999 19.999999
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "BackMiddleKA2"
{
	is_flexible
	{
		length 15
		tip_mass 0
		pitch_stiffness 45
		pitch_damping 5
		yaw_stiffness 45
		yaw_damping 5
		along_stiffness 100
		along_damping 0
		pitch_constraint -19.999999 19.999999
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -19.999999 19.999999
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "Tie1"
{
	is_flexible
	{
		length 15
		tip_mass 0
		pitch_stiffness 45
		pitch_damping 5
		yaw_stiffness 45
		yaw_damping 5
		along_stiffness 100
		along_damping 0
		pitch_constraint -19.999999 19.999999
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -19.999999 19.999999
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "Tie2"
{
	is_flexible
	{
		length 15
		tip_mass 0
		pitch_stiffness 45
		pitch_damping 5
		yaw_stiffness 45
		yaw_damping 5
		along_stiffness 100
		along_damping 0
		pitch_constraint -19.999999 19.999999
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -19.999999 19.999999
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "Tie3"
{
	is_flexible
	{
		length 15
		tip_mass 0
		pitch_stiffness 45
		pitch_damping 5
		yaw_stiffness 45
		yaw_damping 5
		along_stiffness 100
		along_damping 0
		pitch_constraint -19.999999 19.999999
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -19.999999 19.999999
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "Tie4"
{
	is_flexible
	{
		length 15
		tip_mass 0
		pitch_stiffness 45
		pitch_damping 5
		yaw_stiffness 45
		yaw_damping 5
		along_stiffness 100
		along_damping 0
		pitch_constraint -19.999999 19.999999
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -19.999999 19.999999
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "Tie5"
{
	is_flexible
	{
		length 15
		tip_mass 0
		pitch_stiffness 45
		pitch_damping 5
		yaw_stiffness 45
		yaw_damping 5
		along_stiffness 100
		along_damping 0
		pitch_constraint -19.999999 19.999999
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -19.999999 19.999999
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "Tie6"
{
	is_flexible
	{
		length 15
		tip_mass 0
		pitch_stiffness 45
		pitch_damping 5
		yaw_stiffness 45
		yaw_damping 5
		along_stiffness 100
		along_damping 0
		pitch_constraint -19.999999 19.999999
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -19.999999 19.999999
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "Belt1"
{
	is_flexible
	{
		length 15
		tip_mass 0
		pitch_stiffness 45
		pitch_damping 5
		yaw_stiffness 45
		yaw_damping 5
		along_stiffness 100
		along_damping 0
		pitch_constraint -19.999999 19.999999
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -19.999999 19.999999
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "Belt2"
{
	is_flexible
	{
		length 15
		tip_mass 0
		pitch_stiffness 45
		pitch_damping 5
		yaw_stiffness 45
		yaw_damping 5
		along_stiffness 100
		along_damping 0
		pitch_constraint -19.999999 19.999999
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -19.999999 19.999999
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "Belt3"
{
	is_flexible
	{
		length 15
		tip_mass 0
		pitch_stiffness 45
		pitch_damping 5
		yaw_stiffness 45
		yaw_damping 5
		along_stiffness 100
		along_damping 0
		pitch_constraint -19.999999 19.999999
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -19.999999 19.999999
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "Belt4"
{
	is_flexible
	{
		length 15
		tip_mass 0
		pitch_stiffness 45
		pitch_damping 5
		yaw_stiffness 45
		yaw_damping 5
		along_stiffness 100
		along_damping 0
		pitch_constraint -19.999999 19.999999
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -19.999999 19.999999
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "Belt5"
{
	is_flexible
	{
		length 15
		tip_mass 0
		pitch_stiffness 45
		pitch_damping 5
		yaw_stiffness 45
		yaw_damping 5
		along_stiffness 100
		along_damping 0
		pitch_constraint -19.999999 19.999999
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -19.999999 19.999999
		yaw_friction 0
		yaw_bounce 0
	}
}

$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0

$ikautoplaylock "rhand" 0.1 0
$ikautoplaylock "lhand" 0.1 0
$ikautoplaylock "rfoot" 1 0.1
$ikautoplaylock "lfoot" 1 0.1

$weightlist "weights_common_male_aim_matrix_run" {
	 "ValveBiped.Bip01_Pelvis" 0
	 "ValveBiped.Bip01_Spine" 0
	 "ValveBiped.Bip01_Spine1" 0
	 "ValveBiped.Bip01_Spine2" 0
	 "ValveBiped.Bip01_Spine4" 0
	 "ValveBiped.Bip01_Neck1" 0
	 "ValveBiped.Bip01_Head1" 0
	 "Eye_L" 0
	 "Eye_R" 0
	 "Teeth" 0
	 "Tongue1" 0
	 "Tongue2" 0
	 "Tongue3" 0
	 "FrontHair1" 0
	 "FrontHair2" 0
	 "FrontHair_L" 0
	 "FrontHair_R" 0
	 "SideHair1_L" 0
	 "SideHair2_L" 0
	 "SideHair3_L" 0
	 "SideHair1_R" 0
	 "SideHair2_R" 0
	 "SideHair3_R" 0
	 "BackSideHair1_L" 0
	 "BackSideHair2_L" 0
	 "BackSideHair1_R" 0
	 "BackSideHair2_R" 0
	 "BackInsideHair" 0
	 "BackHair" 0
	 "ValveBiped.Bip01_L_Clavicle" 0
	 "SleeveRibbon_L" 0
	 "ValveBiped.Bip01_L_UpperArm" 0
	 "ValveBiped.Bip01_L_Forearm" 0
	 "ValveBiped.Bip01_L_Hand" 0
	 "BackArmKA_L" 0
	 "FrontArmKA_L" 0
	 "BackKA1_L" 0
	 "BackKA2_L" 0
	 "SideKA1_L" 0
	 "SideKA2_L" 0
	 "FrontKA1_L" 0
	 "FrontKA2_L" 0
	 "ValveBiped.Bip01_R_Clavicle" 0
	 "SleeveRibbon_R" 0
	 "ValveBiped.Bip01_R_UpperArm" 0
	 "ValveBiped.Bip01_R_Forearm" 0
	 "ValveBiped.Bip01_R_Hand" 0
	 "BackArmKA_R" 0
	 "FrontArmKA_R" 0
	 "BackKA1_R" 0
	 "BackKA2_R" 0
	 "SideKA1_R" 0
	 "SideKA2_R" 0
	 "FrontKA1_R" 0
	 "FrontKA2_R" 0
	 "BackMiddleKA1" 0
	 "BackMiddleKA2" 0
	 "ValveBiped.Bip01_L_Thigh" 0
	 "ValveBiped.Bip01_L_Calf" 0
	 "ValveBiped.Bip01_L_Foot" 0
	 "ValveBiped.Bip01_R_Thigh" 0
	 "ValveBiped.Bip01_R_Calf" 0
	 "ValveBiped.Bip01_R_Foot" 0
	 "ValveBiped.Bip01_L_Finger0" 0
	 "ValveBiped.Bip01_L_Finger01" 0
	 "ValveBiped.Bip01_L_Finger02" 0
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
	 "ValveBiped.Bip01_R_Finger0" 0
	 "ValveBiped.Bip01_R_Finger01" 0
	 "ValveBiped.Bip01_R_Finger02" 0
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
	 "Tie1" 0
	 "Tie2" 0
	 "Tie3" 0
	 "Tie4" 0
	 "Tie5" 0
	 "Tie6" 0
	 "Belt1" 0
	 "Belt2" 0
	 "Belt3" 0
	 "Belt4" 0
	 "Belt5" 0
}

// $animation "a_proportions_corrective_animation" "common_male_fallen_survivor_l4d1_anims\a_proportions_corrective_animation.smd" {
// }

/* $animation "a_proportions_corrective_animation" "common_male_fallen_survivor_l4d1_anims\a_proportions_corrective_animation.smd" {
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 3
}

$animation "a_proportions" "common_male_fallen_survivor_l4d1_anims\a_proportions.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_proportions_corrective_animation" 0
} */

$sequence "ragdoll" {
	"common_male_fallen_survivor_l4d1_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 3
}

$sequence "ragdoll_01" {
	"common_male_fallen_survivor_l4d1_anims\ragdoll_01.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 3
}

$sequence "ragdoll_02" {
	"common_male_fallen_survivor_l4d1_anims\ragdoll_02.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 3
}

$sequence "ragdoll_03" {
	"common_male_fallen_survivor_l4d1_anims\ragdoll_03.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 3
}

$sequence "ragdoll_04" {
	"common_male_fallen_survivor_l4d1_anims\ragdoll_04.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 3
}

$sequence "ragdoll_05" {
	"common_male_fallen_survivor_l4d1_anims\ragdoll_05.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 3
}

$sequence "ragdoll_06" {
	"common_male_fallen_survivor_l4d1_anims\ragdoll_06.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 3
}

// $declaresequence "common_male_aim_matrix_run"

// $declaresequence "common_male_aimmatrix_Standing_Alert"

// $declaresequence "common_male_AimMatrix_Standing"

// $declaresequence "common_male_aimmatrix_Standing_Acquiring"

// $declaresequence "Idlenoise"

// $declaresequence "Idle"

// $declaresequence "Idle_Alert_01a"

// $declaresequence "Idle_Alert_01b"

// $declaresequence "Idle_Alert_01c"

// $declaresequence "Idle_Alert_02a"

// $declaresequence "Idle_Alert_02b"

// $declaresequence "Idle_Alert_02c"

// $declaresequence "Idle_Alert_03"

// $declaresequence "Idle_Alert_Behind_02"

// $declaresequence "Idle_Alert_Behind_03"

// $declaresequence "Idle_Alert_Left_04"

// $declaresequence "Idle_Alert_Left_01"

// $declaresequence "Idle_Alert_Right_02a"

// $declaresequence "Idle_Alert_Right_02d"

// $declaresequence "Idle_Alert_Straight_05"

// $declaresequence "Idle_Alert_Straight_08"

// $declaresequence "violent_alert01_Common_a"

// $declaresequence "violent_alert01_Common_D"

// $declaresequence "violent_alert01_Common_E"

// $declaresequence "violent_alert01_Common_B"

// $declaresequence "violent_alert01_Common_C"

// $declaresequence "Idle_Alert_Injured_Behind_01"

// $declaresequence "Idle_Alert_Injured_Left_02"

// $declaresequence "Idle_Alert_Injured_Right_02"

// $declaresequence "Idle_Alert_Injured_Straight_02"

// $declaresequence "Idle_Acquire_05"

// $declaresequence "Idle_Acquire_06"

// $declaresequence "Idle_Acquire_11"

// $declaresequence "Idle_UnableToReachTarget_01a"

// $declaresequence "Idle_UnableToReachTarget_01b"

// $declaresequence "Idle_UnableToReachTarget_01c"

// $declaresequence "Idle_UnableToReachTarget_01d"

// $declaresequence "Idle_Neutral_01"

// $declaresequence "Idle_Neutral_02"

// $declaresequence "Idle_Neutral_03"

// $declaresequence "Idle_Neutral_06"

// $declaresequence "Idle_Neutral_07"

// $declaresequence "Idle_Neutral_08"

// $declaresequence "Idle_Neutral_10"

// $declaresequence "Idle_Neutral_11"

// $declaresequence "Idle_Neutral_12"

// $declaresequence "Idle_Neutral_13"

// $declaresequence "Idle_Neutral_14"

// $declaresequence "Idle_Neutral_15"

// $declaresequence "Idle_Neutral_16"

// $declaresequence "Idle_Neutral_17"

// $declaresequence "Idle_Crouching_Neutral_01"

// $declaresequence "Idle_Crouching_Neutral_02"

// $declaresequence "Idle_Neutral_Turn_Right"

// $declaresequence "Idle_Neutral_Turn_Left"

// $declaresequence "Idle_Neutral_Turn_Around_01a"

// $declaresequence "Idle_Neutral_Turn_Around_01b"

// $declaresequence "Idle_Neutral_Turn_Around_01c"

// $declaresequence "Crouch_Idle_Upper_KNIFE"

// $declaresequence "Idle_Neutral_to_Alert_01"

// $declaresequence "Idle_Alert_to_Neutral_01"

// $declaresequence "Running_to_Standing"

// $declaresequence "Running_to_Standing_02"

// $declaresequence "Walk_Neutral_01"

// $declaresequence "Walk_Neutral_02"

// $declaresequence "Walk_Neutral_02b"

// $declaresequence "Walk_Neutral_03"

// $declaresequence "Walk_Neutral_04a"

// $declaresequence "Walk_Neutral_04b"

// $declaresequence "Walk_Neutral_South"

// $declaresequence "Shamble_01"

// $declaresequence "Shamble_02"

// $declaresequence "Shamble_03"

// $declaresequence "Walk"

// $declaresequence "CrouchWalk_01"

// $declaresequence "CrouchWalk_03"

// $declaresequence "MeleeAlign"

// $declaresequence "Run_01"

// $declaresequence "Run_01b"

// $declaresequence "Run_02"

// $declaresequence "Run_02b"

// $declaresequence "Run_03"

// $declaresequence "Run_03b"

// $declaresequence "Run_04"

// $declaresequence "Run_05"

// $declaresequence "Run_OnFire"

// $declaresequence "Run_OnFire_01"

// $declaresequence "Standing_OnFire"

// $declaresequence "Run_Stumble_01"

// $declaresequence "Melee_01"

// $declaresequence "Melee_02"

// $declaresequence "Melee_03"

// $declaresequence "Melee_04"

// $declaresequence "Melee_Moving01_Delta"

// $declaresequence "Melee_Moving01_Layer"

// $declaresequence "Melee_Moving01"

// $declaresequence "Melee_Moving02_Delta"

// $declaresequence "Melee_Moving02_Layer"

// $declaresequence "Melee_Moving02"

// $declaresequence "Melee_Moving03_Delta"

// $declaresequence "Melee_Moving03_Layer"

// $declaresequence "Melee_Moving03"

// $declaresequence "Melee_Moving04_Delta"

// $declaresequence "Melee_Moving04_Layer"

// $declaresequence "Melee_Moving04"

// $declaresequence "Melee_Moving05_Delta"

// $declaresequence "Melee_Moving05_Layer"

// $declaresequence "Melee_Moving05"

// $declaresequence "Melee_Moving06_Delta"

// $declaresequence "Melee_Moving06_Layer"

// $declaresequence "Melee_Moving06"

// $declaresequence "AttackIncap_01"

// $declaresequence "AttackIncap_03"

// $declaresequence "AttackDoor_01"

// $declaresequence "AttackDoor_ReachThrough"

// $declaresequence "Shoved_Backward_01"

// $declaresequence "Shoved_Backward_02"

// $declaresequence "Shoved_Backward_03"

// $declaresequence "Shoved_Backward_03a"

// $declaresequence "Shoved_Backward_04e"

// $declaresequence "Shoved_Backward_04g"

// $declaresequence "Shoved_Backward_04i"

// $declaresequence "Shoved_Backward_04j"

// $declaresequence "Shoved_Backward_04m"

// $declaresequence "Shoved_Backward_04o"

// $declaresequence "Shoved_Forward_01"

// $declaresequence "Shoved_Leftward_01"

// $declaresequence "Shoved_Rightward_01"

// $declaresequence "Shoved_Backward_IntoWall_01"

// $declaresequence "Shoved_Backward_IntoWall_02"

// $declaresequence "Shoved_Backward_IntoWall_03"

// $declaresequence "Shoved_Backward_IntoWall_04"

// $declaresequence "Shoved_Forward_IntoWall_02"

// $declaresequence "Shoved_Leftward_IntoWall_02"

// $declaresequence "Shoved_Rightward_IntoWall_01"

// $declaresequence "Jump_01"

// $declaresequence "Jump_02"

// $declaresequence "Jump_Across_01"

// $declaresequence "Jump_Across_02"

// $declaresequence "Jump_Up_To_Ledge_01"

// $declaresequence "Jump_Up_To_Ledge_04"

// $declaresequence "Jump_Up_To_Ledge_02"

// $declaresequence "Jump_Up_To_Ledge_03_Tall"

// $declaresequence "Jump_Down_From_Ledge_Extraction"

// $declaresequence "Jump_Down_From_Ledge_NoMotion"

// $declaresequence "Jump_Down_From_Ledge_Walkframe"

// $declaresequence "Ledge_Climb"

// $declaresequence "Fall_01"

// $declaresequence "Fall_02"

// $declaresequence "Fall_03"

// $declaresequence "Fall_04"

// $declaresequence "Fall_05"

// $declaresequence "Fall_06"

// $declaresequence "Fall_07"

// $declaresequence "Fall_08"

// $declaresequence "Fall_09"

// $declaresequence "Landing01_Neutral"

// $declaresequence "Landing_Hard01_Neutral"

// $declaresequence "Landing01"

// $declaresequence "Landing02"

// $declaresequence "Landing03"

// $declaresequence "Landing04"

// $declaresequence "Landing_Hard01"

// $declaresequence "Landing_Hard02"

// $declaresequence "Landing_Hard03"

// $declaresequence "Landing_Hard04"

// $declaresequence "Landing_Hard05"

// $declaresequence "Landing_Hard06"

// $declaresequence "Climb24_01_InPlace"

// $declaresequence "Climb24_02_InPlace"

// $declaresequence "Climb24_03_InPlace"

// $declaresequence "Climb36_01_InPlace"

// $declaresequence "Climb36_02_InPlace"

// $declaresequence "Climb36_03_InPlace"

// $declaresequence "Climb36_04_InPlace"

// $declaresequence "Climb48_01_InPlace"

// $declaresequence "Climb48_02_InPlace"

// $declaresequence "Climb48_03_InPlace"

// $declaresequence "Climb48_04_InPlace"

// $declaresequence "Climb60_01_InPlace"

// $declaresequence "Climb60_02_InPlace"

// $declaresequence "Climb60_03_InPlace"

// $declaresequence "Climb60_04_InPlace"

// $declaresequence "Climb72_03_InPlace"

// $declaresequence "Climb72_04_InPlace"

// $declaresequence "Climb72_05_InPlace"

// $declaresequence "Climb72_06_InPlace"

// $declaresequence "Climb72_07_InPlace"

// $declaresequence "Climb84_01_InPlace"

// $declaresequence "Climb84_03_InPlace"

// $declaresequence "Climb84_04_InPlace"

// $declaresequence "Climb84_05_InPlace"

// $declaresequence "Climb84_06_InPlace"

// $declaresequence "Climb96_05_InPlace"

// $declaresequence "Climb96_00_InPlace"

// $declaresequence "Climb96_00a_InPlace"

// $declaresequence "Climb96_03_InPlace"

// $declaresequence "Climb96_03a_InPlace"

// $declaresequence "Climb96_04a_InPlace"

// $declaresequence "Climb108_01_InPlace"

// $declaresequence "Climb108_00_InPlace"

// $declaresequence "Climb108_00a_InPlace"

// $declaresequence "Climb108_03_InPlace"

// $declaresequence "Climb108_03a_InPlace"

// $declaresequence "Climb108_04_InPlace"

// $declaresequence "Climb120_01_InPlace"

// $declaresequence "Climb120_00_InPlace"

// $declaresequence "Climb120_00a_InPlace"

// $declaresequence "Climb120_03_InPlace"

// $declaresequence "Climb120_03a_InPlace"

// $declaresequence "Climb120_04_InPlace"

// $declaresequence "Climb132_01_InPlace"

// $declaresequence "Climb132_00_InPlace"

// $declaresequence "Climb132_00a_InPlace"

// $declaresequence "Climb132_03_InPlace"

// $declaresequence "Climb132_03a_InPlace"

// $declaresequence "Climb132_04_InPlace"

// $declaresequence "Climb144_01_InPlace"

// $declaresequence "Climb144_00_InPlace"

// $declaresequence "Climb144_00a_InPlace"

// $declaresequence "Climb144_03_InPlace"

// $declaresequence "Climb144_03a_InPlace"

// $declaresequence "Climb144_04_InPlace"

// $declaresequence "Climb156_01_InPlace"

// $declaresequence "Climb156_00_InPlace"

// $declaresequence "Climb156_00a_InPlace"

// $declaresequence "Climb156_03_InPlace"

// $declaresequence "Climb156_03a_InPlace"

// $declaresequence "Climb156_04_InPlace"

// $declaresequence "Climb168_01_InPlace"

// $declaresequence "Climb168_00_InPlace"

// $declaresequence "Climb168_00a_InPlace"

// $declaresequence "Climb168_03_InPlace"

// $declaresequence "Climb168_03a_InPlace"

// $declaresequence "Climb168_04_InPlace"

// $declaresequence "Climb36_Hurdle_04_InPlace"

// $declaresequence "Ladder_Ascend"

// $declaresequence "Ladder_Descend"

// $declaresequence "Ladder_Dismount_01"

// $declaresequence "Ladder_Dismount_02"

// $declaresequence "Ladder_Dismount_03"

// $declaresequence "LyingIdlenoise"

// $declaresequence "SittingIdlenoise"

// $declaresequence "Standing_to_Sitting03"

// $declaresequence "Sitting01"

// $declaresequence "Sitting02"

// $declaresequence "Sitting03"

// $declaresequence "Sitting04"

// $declaresequence "Sitting05"

// $declaresequence "Sitting06"

// $declaresequence "Sitting07"

// $declaresequence "Sitting08"

// $declaresequence "Sitting09"

// $declaresequence "Sitting03_to_Standing"

// $declaresequence "Sitting_to_Standing_Alert"

// $declaresequence "Shoved_Backward_Sit_04i"

// $declaresequence "Shoved_Backward_Sit_04o"

// $declaresequence "Shoved_Sitting_Leftward"

// $declaresequence "Shoved_Sitting_Rightward"

// $declaresequence "Standing_to_Sitting_in_Chair"

// $declaresequence "Sitting_in_Chair01"

// $declaresequence "Sitting_in_Chair_to_Standing"

// $declaresequence "Sitting_in_Chair_to_Standing_Alert"

// $declaresequence "Standing_to_Lying03"

// $declaresequence "Lying01"

// $declaresequence "Lying02"

// $declaresequence "Lying03"

// $declaresequence "Lying04"

// $declaresequence "Lying05"

// $declaresequence "Lying06"

// $declaresequence "Lying07"

// $declaresequence "Lying08"

// $declaresequence "Lying03_to_Standing"

// $declaresequence "Lying_to_Standing_Alert"

// $declaresequence "Lying_to_Standing_Alert03c"

// $declaresequence "Lying_to_Standing_Alert03d"

// $declaresequence "Lying03_to_Sitting03"

// $declaresequence "Sitting03_to_Lying03"

// $declaresequence "LeaningIdlenoise"

// $declaresequence "LeaningIdlenoise_RT"

// $declaresequence "LeaningIdlenoise_LT"

// $declaresequence "LeaningIdlenoise_Both"

// $declaresequence "LeaningRightward01"

// $declaresequence "LeaningRightward02"

// $declaresequence "LeaningRightward03"

// $declaresequence "LeaningRightward04"

// $declaresequence "LeaningBackward01"

// $declaresequence "LeaningBackward02"

// $declaresequence "LeaningBackward03"

// $declaresequence "LeaningBackward04"

// $declaresequence "LeaningLeftward01"

// $declaresequence "LeaningLeftward02"

// $declaresequence "LeaningLeftward03"

// $declaresequence "LeaningLeftward04"

// $declaresequence "LeaningForward01"

// $declaresequence "LeaningForward02"

// $declaresequence "LeaningForward03"

// $declaresequence "LeaningForward04"

// $declaresequence "common_male_body_leans"

// $declaresequence "Death_01"

// $declaresequence "Death_02a"

// $declaresequence "Death_02c"

// $declaresequence "Death_03"

// $declaresequence "Death_05"

// $declaresequence "Death_06"

// $declaresequence "Death_07"

// $declaresequence "Death_08"

// $declaresequence "Death_08b"

// $declaresequence "Death_09"

// $declaresequence "Death_10ab"

// $declaresequence "Death_10b"

// $declaresequence "Death_10c"

// $declaresequence "Death_11_01a"

// $declaresequence "Death_11_01b"

// $declaresequence "Death_11_02a"

// $declaresequence "Death_11_02b"

// $declaresequence "Death_11_02c"

// $declaresequence "Death_11_02d"

// $declaresequence "Death_11_03a"

// $declaresequence "Death_11_03b"

// $declaresequence "Death_11_03c"

// $declaresequence "HeadshotFront"

// $declaresequence "HeadshotBack"

// $declaresequence "DeathRunning_01"

// $declaresequence "DeathRunning_03"

// $declaresequence "DeathRunning_04"

// $declaresequence "DeathRunning_05"

// $declaresequence "DeathRunning_06"

// $declaresequence "DeathRunning_07"

// $declaresequence "DeathRunning_08"

// $declaresequence "DeathRunning_09"

// $declaresequence "DeathRunning_10"

// $declaresequence "DeathRunning_11a"

// $declaresequence "DeathRunning_11b"

// $declaresequence "DeathRunning_11c"

// $declaresequence "DeathRunning_11d"

// $declaresequence "DeathRunning_11e"

// $declaresequence "DeathRunning_11f"

// $declaresequence "DeathRunning_11g"

// $declaresequence "Death_Shotgun_Backward_05"

// $declaresequence "Death_Shotgun_Backward_03"

// $declaresequence "Death_Shotgun_Backward_04"

// $declaresequence "Death_Shotgun_Backward_06"

// $declaresequence "Death_Shotgun_Backward_07"

// $declaresequence "Death_Shotgun_Backward_08"

// $declaresequence "Death_Shotgun_Backward_09"

// $declaresequence "Death_Shotgun_Backward_collapse"

// $declaresequence "Death_shotgun_Forward"

// $declaresequence "Death_Shotgun_Rightward"

// $declaresequence "Death_Shotgun_Rightward01"

// $declaresequence "Death_Shotgun_Rightward02"

// $declaresequence "Death_Shotgun_Leftward"

// $declaresequence "deathpose_front"

// $declaresequence "deathpose_back"

// $declaresequence "deathpose_right"

// $declaresequence "deathpose_left"

// $declaresequence "deathpose_crouch_front"

// $declaresequence "deathpose_crouch_back"

// $declaresequence "deathpose_crouch_right"

// $declaresequence "deathpose_crouch_left"

// $declaresequence "Flinch_01"

// $declaresequence "Flinch_02"

// $declaresequence "Startled_delta_01"

// $declaresequence "Startled_01"

// $declaresequence "Charger_Shove_Leftward"

// $declaresequence "Charger_Shove_Rightward"

// $declaresequence "mudguy_run"

// $declaresequence "Chainsaw_Rshldr"

// $declaresequence "Chainsaw_Head_Down"

// $declaresequence "Chainsaw_Back_Up"

// $declaresequence "Chainsaw_Chest_Up"

// $declaresequence "Chainsaw_Shldrs_Down"

// $declaresequence "Chainsaw_Back_Forward"

// $declaresequence "Chainsaw_Lshldr_Down"

// $declaresequence "Chainsaw_Rshldr_Behind"

// $declaresequence "Chainsaw_Rshldr_Down"

// $declaresequence "Chainsaw_Chest_Up2"

// $declaresequence "Chainsaw_Head_Down2"

// $declaresequence "Chainsaw_Chest_Down"

// $declaresequence "Chainsaw_Lside"

// $declaresequence "Chainsaw_Rhip"

// $declaresequence "Chainsaw_Rside"

// $declaresequence "melee_death_right_01"

// $declaresequence "melee_death_right_02"

// $declaresequence "melee_death_left_01"

// $declaresequence "melee_death_left_02"

// $declaresequence "melee_death_back_01"

// $declaresequence "melee_death_back_02"

// $declaresequence "melee_death_back_03"

// $declaresequence "melee_death_back_04"

// $declaresequence "melee_death_back_05"

// $declaresequence "melee_death_right_01_SLASH"

// $declaresequence "melee_death_right_02_SLASH"

// $declaresequence "melee_death_left_01_SLASH"

// $declaresequence "melee_death_left_02_SLASH"

// $declaresequence "melee_death_back_01_SLASH"

// $declaresequence "melee_death_back_02_SLASH"

// $declaresequence "melee_death_back_03_SLASH"

// $declaresequence "melee_death_back_04_SLASH"

// $declaresequence "melee_death_back_05_SLASH"

// $declaresequence "Idle_Neutral_04"

// $declaresequence "Idle_Neutral_05"

// $declaresequence "exp_idle_01"

// $declaresequence "exp_idle_02"

// $declaresequence "exp_idle_03"

// $declaresequence "exp_idle_04"

// $declaresequence "exp_idle_05"

// $declaresequence "exp_idle_06"

// $declaresequence "exp_angry_01"

// $declaresequence "exp_angry_02"

// $declaresequence "exp_angry_03"

// $declaresequence "exp_angry_04"

// $declaresequence "exp_angry_05"

// $declaresequence "exp_angry_06"

/* $sequence "reference" {
	"common_male_fallen_survivor_l4d1_anims\reference.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 3
}

$sequence "proportions" {
	"a_proportions"
	autoplay
	predelta
	fadein 0.2
	fadeout 0.2
} */

$includemodel "infected/anim_common.mdl"
$includemodel "infected/anim_common_vomit.mdl"
$includemodel "infected/anim_common_male_exp.mdl"

/* $collisionjoints "common_male_fallen_survivor_l4d1_physics.smd"
{
	$mass 100
	$inertia 5
	$damping 0.01
	$rotdamping 1.5
	$rootbone " "

	$jointrotdamping "ValveBiped.Bip01_Pelvis" 3

	$jointmassbias "ValveBiped.Bip01_R_Thigh" 7
	$jointrotdamping "ValveBiped.Bip01_R_Thigh" 7
	$jointconstrain "ValveBiped.Bip01_R_Thigh" x limit -25 25 0
	$jointconstrain "ValveBiped.Bip01_R_Thigh" y limit -10 30 0
	$jointconstrain "ValveBiped.Bip01_R_Thigh" z limit -55 50 0

	$jointmassbias "ValveBiped.Bip01_R_Calf" 4
	$jointconstrain "ValveBiped.Bip01_R_Calf" x limit -10 25 0
	$jointconstrain "ValveBiped.Bip01_R_Calf" y limit -5 5 0
	$jointconstrain "ValveBiped.Bip01_R_Calf" z limit -10 140 0

	$jointmassbias "ValveBiped.Bip01_L_Thigh" 7
	$jointrotdamping "ValveBiped.Bip01_L_Thigh" 7
	$jointconstrain "ValveBiped.Bip01_L_Thigh" x limit -25 25 0
	$jointconstrain "ValveBiped.Bip01_L_Thigh" y limit -10 30 0
	$jointconstrain "ValveBiped.Bip01_L_Thigh" z limit -55 59 0

	$jointmassbias "ValveBiped.Bip01_L_Calf" 4
	$jointconstrain "ValveBiped.Bip01_L_Calf" x limit -25 10 0
	$jointconstrain "ValveBiped.Bip01_L_Calf" y limit -5 5 0
	$jointconstrain "ValveBiped.Bip01_L_Calf" z limit -10 140 0

	$jointrotdamping "ValveBiped.Bip01_L_Foot" 2
	$jointconstrain "ValveBiped.Bip01_L_Foot" x limit -20 30 0
	$jointconstrain "ValveBiped.Bip01_L_Foot" y limit -30 30 0
	$jointconstrain "ValveBiped.Bip01_L_Foot" z limit -20 30 0

	$jointconstrain "ValveBiped.Bip01_Spine" x limit -10 10 0
	$jointconstrain "ValveBiped.Bip01_Spine" y limit -16 16 0
	$jointconstrain "ValveBiped.Bip01_Spine" z limit -20 30 0

	$jointmassbias "ValveBiped.Bip01_Spine2" 9
	$jointconstrain "ValveBiped.Bip01_Spine2" x limit -10 10 0
	$jointconstrain "ValveBiped.Bip01_Spine2" y limit -10 10 0
	$jointconstrain "ValveBiped.Bip01_Spine2" z limit -20 20 0

	$jointmassbias "ValveBiped.Bip01_R_Clavicle" 4
	$jointrotdamping "ValveBiped.Bip01_R_Clavicle" 6
	$jointconstrain "ValveBiped.Bip01_R_Clavicle" x limit -12 12 0
	$jointconstrain "ValveBiped.Bip01_R_Clavicle" y limit -8 8 0
	$jointconstrain "ValveBiped.Bip01_R_Clavicle" z limit 0 15 0

	$jointmassbias "ValveBiped.Bip01_R_UpperArm" 5
	$jointrotdamping "ValveBiped.Bip01_R_UpperArm" 5
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" x limit -50 80 0
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" y limit -45 70 0
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" z limit -100 60 0

	$jointmassbias "ValveBiped.Bip01_L_Clavicle" 4
	$jointrotdamping "ValveBiped.Bip01_L_Clavicle" 6
	$jointconstrain "ValveBiped.Bip01_L_Clavicle" x limit -12 12 0
	$jointconstrain "ValveBiped.Bip01_L_Clavicle" y limit -8 8 0
	$jointconstrain "ValveBiped.Bip01_L_Clavicle" z limit 0 15 0

	$jointmassbias "ValveBiped.Bip01_L_UpperArm" 5
	$jointrotdamping "ValveBiped.Bip01_L_UpperArm" 5
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" x limit -50 80 0
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" y limit -45 70 0
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" z limit -100 60 0

	$jointmassbias "ValveBiped.Bip01_L_Forearm" 4
	$jointrotdamping "ValveBiped.Bip01_L_Forearm" 4
	$jointconstrain "ValveBiped.Bip01_L_Forearm" x limit -40 30 0
	$jointconstrain "ValveBiped.Bip01_L_Forearm" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Forearm" z limit -120 10 0

	$jointconstrain "ValveBiped.Bip01_L_Hand" x limit -50 50 0
	$jointconstrain "ValveBiped.Bip01_L_Hand" y limit -35 35 0
	$jointconstrain "ValveBiped.Bip01_L_Hand" z limit -50 50 0

	$jointmassbias "ValveBiped.Bip01_R_Forearm" 4
	$jointrotdamping "ValveBiped.Bip01_R_Forearm" 4
	$jointconstrain "ValveBiped.Bip01_R_Forearm" x limit -40 30 0
	$jointconstrain "ValveBiped.Bip01_R_Forearm" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Forearm" z limit -120 10 0

	$jointconstrain "ValveBiped.Bip01_R_Hand" x limit -50 50 0
	$jointconstrain "ValveBiped.Bip01_R_Hand" y limit -35 35 0
	$jointconstrain "ValveBiped.Bip01_R_Hand" z limit -50 50 0

	$jointmassbias "ValveBiped.Bip01_Head1" 2
	$jointrotdamping "ValveBiped.Bip01_Head1" 3
	$jointconstrain "ValveBiped.Bip01_Head1" x limit -50 50 0
	$jointconstrain "ValveBiped.Bip01_Head1" y limit -20 20 0
	$jointconstrain "ValveBiped.Bip01_Head1" z limit -26 30 0

	$jointrotdamping "ValveBiped.Bip01_R_Foot" 2
	$jointconstrain "ValveBiped.Bip01_R_Foot" x limit -20 30 0
	$jointconstrain "ValveBiped.Bip01_R_Foot" y limit -30 30 0
	$jointconstrain "ValveBiped.Bip01_R_Foot" z limit -20 30 0
} */
