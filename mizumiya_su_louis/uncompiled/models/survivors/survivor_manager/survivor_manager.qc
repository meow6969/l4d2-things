// Created by Crowbar 0.74

$modelname "survivors/survivor_manager.mdl"

$bodygroup "mizumiyaface"
{
	studio "Face.smd"
}

$bodygroup "mizumiyabody"
{
	studio "Body.smd"
}

$bodygroup "mizumiyahair"
{
	studio "Hair.smd"
}


$surfaceprop "flesh"

$contents "solid"

$illumposition -1.788 -1.26 37.579

$eyeposition 0 0 71

$maxeyedeflection 30

$forcephonemecrossfade

$ambientboost

$mostlyopaque

$cdmaterials "models\meowmeow\mizumiya\"


$attachment "eyes" "ValveBiped.Bip01_Head1" 3.73 -3 0.02 rotate 0 -89.37 -90
$attachment "mouth" "ValveBiped.Bip01_Head1" 0.84 -6.09 -0.16 rotate 0 -80 -90
$attachment "pistol" "ValveBiped.Bip01_R_Thigh" 2.75 0.37 -5.79 rotate -8.25 3.42 83.61
$attachment "attach_L_shoulderBladeAim" "ValveBiped.Bip01_Spine4" -11.07 -1.46 3.69 rotate -90 -102.85 0
$attachment "attach_R_shoulderBladeAim" "ValveBiped.Bip01_Spine4" -11.07 -1.46 -5.33 rotate -90 -102.85 0
$attachment "primary" "ValveBiped.Bip01_Spine4" 3.21 -5.16 -2.75 rotate -13.7 170.19 174.29
$attachment "medkit" "ValveBiped.Bip01_Spine4" -1.34 -5.84 -1.37 rotate 5.03 77.16 0
$attachment "pills" "ValveBiped.Bip01_Spine" -3.1 0.74 -8.47 rotate -41.18 -88.48 -87.05
$attachment "grenade" "ValveBiped.Bip01_Spine" -1.31 -0.67 7.9 rotate -90 -175.23 0
$attachment "molotov" "ValveBiped.Bip01_Spine" -3.78 -2.89 8.29 rotate -63.44 -74.67 -101.41
$attachment "melee" "ValveBiped.Bip01_Spine4" 2.74 -5.31 5.23 rotate 24 175 97
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

$definebone "ValveBiped.Bip01_Pelvis" "" 0 0.542624 40.233574 0 0 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Thigh" "ValveBiped.Bip01_Pelvis" 3.806942 0 0 3.326306 -87.048507 -95.710935 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Calf" "ValveBiped.Bip01_L_Thigh" 19.263102 0 0 0 0 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Foot" "ValveBiped.Bip01_L_Calf" 17.589098 0 0 -3.939487 -74.439534 -4.413494 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Toe0" "ValveBiped.Bip01_L_Foot" 6.240661 0 0 -1.58761 -19.272642 1.162818 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Thigh" "ValveBiped.Bip01_Pelvis" -3.806942 0 0 3.326307 -92.951464 -84.289083 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Calf" "ValveBiped.Bip01_R_Thigh" 19.263102 0 0 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Foot" "ValveBiped.Bip01_R_Calf" 17.589098 0 0 3.939487 -74.439534 5.084027 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Toe0" "ValveBiped.Bip01_R_Foot" 6.24066 0 0 1.366218 -19.288963 -6.40802 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine" "ValveBiped.Bip01_Pelvis" 0 4.246162 -0.018825 4.766608 89.999982 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine1" "ValveBiped.Bip01_Spine" 4.195629 0 0 0 -9.852982 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine2" "ValveBiped.Bip01_Spine1" 3.883152 0 0 0 -0.906992 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine4" "ValveBiped.Bip01_Spine2" 5.985935 0.000001 0 0 28.37167 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Neck1" "ValveBiped.Bip01_Spine4" 5.620495 -0.000002 0 0 14.358381 179.999855 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Head1" "ValveBiped.Bip01_Neck1" 4.684906 -0.000002 0 -0.000057 26.575615 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Clavicle" "ValveBiped.Bip01_Spine4" 4.268654 1.531893 1.575 -63.87528 -147.035805 50.277507 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_UpperArm" "ValveBiped.Bip01_L_Clavicle" 5.782731 0.000004 0 -19.730432 -44.165482 -79.348295 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_UpperArm" 11.45277 0 0 0 -7.20248 -0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Hand" "ValveBiped.Bip01_L_Forearm" 10.945538 -0.000009 -0.000034 6.507312 7.122667 78.669798 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger4" "ValveBiped.Bip01_L_Hand" 3.147137 0.005678 -1.551345 7.633001 -14.600909 11.707931 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger41" "ValveBiped.Bip01_L_Finger4" 1.585899 0 0 0.499275 -23.943611 0.221676 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger42" "ValveBiped.Bip01_L_Finger41" 0.849091 0.000002 0 -9.236594 -20.442322 -3.423881 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger3" "ValveBiped.Bip01_L_Hand" 3.471081 0.213266 -0.574066 5.902784 -16.812649 11.323362 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger31" "ValveBiped.Bip01_L_Finger3" 1.897533 0 0 -8.965071 -21.951791 -3.593879 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger32" "ValveBiped.Bip01_L_Finger31" 1.01445 0.000002 0 3.923214 -14.43939 1.009321 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger2" "ValveBiped.Bip01_L_Hand" 3.750084 0.114767 0.430059 -0.622863 -14.026407 9.606092 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger21" "ValveBiped.Bip01_L_Finger2" 2.258194 0 0 -1.589729 -30.215661 -0.925613 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger22" "ValveBiped.Bip01_L_Finger21" 1.210384 0.000001 0 2.236025 -9.181465 0.361306 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger1" "ValveBiped.Bip01_L_Hand" 3.868298 -0.166639 1.490142 -2.298879 -13.504962 9.252177 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger11" "ValveBiped.Bip01_L_Finger1" 1.786068 0 0 6.368257 -26.255568 3.131675 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger12" "ValveBiped.Bip01_L_Finger11" 1.044441 -0.000001 0 3.591763 -9.268914 0.585794 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger0" "ValveBiped.Bip01_L_Hand" 1.121475 -1.351564 1.030999 -23.486519 -14.595469 99.340798 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger01" "ValveBiped.Bip01_L_Finger0" 1.928118 0 0.000004 -4.635456 -14.578284 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger02" "ValveBiped.Bip01_L_Finger01" 1.285141 0 0 -0.773204 11.053619 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Clavicle" "ValveBiped.Bip01_Spine4" 4.268654 1.531894 -1.575 63.875287 -147.035805 -54.583283 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_UpperArm" "ValveBiped.Bip01_R_Clavicle" 5.782726 0 0.000001 22.698464 -42.953724 82.694999 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_UpperArm" 11.45277 0.000001 0 0.000007 -7.202475 0.000005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped.Bip01_R_Forearm" 10.945513 -0.000004 0.000015 -6.507534 7.122616 -78.876978 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger4" "ValveBiped.Bip01_R_Hand" 3.147154 0.000071 1.551354 -7.633063 -14.600685 -11.500704 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger41" "ValveBiped.Bip01_R_Finger4" 1.585907 0.000002 0 -0.499279 -23.943626 -0.221678 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger42" "ValveBiped.Bip01_R_Finger41" 0.849087 -0.000001 0 9.23659 -20.44234 3.423883 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger3" "ValveBiped.Bip01_R_Hand" 3.4711 0.211191 0.574833 -5.902844 -16.812417 -11.116135 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger31" "ValveBiped.Bip01_R_Finger3" 1.897533 -0.000002 0 8.965063 -21.951798 3.593879 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger32" "ValveBiped.Bip01_R_Finger31" 1.014446 -0.000002 0 -3.92322 -14.43939 -1.009323 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger2" "ValveBiped.Bip01_R_Hand" 3.750103 0.116323 -0.42964 0.622802 -14.026228 -9.398923 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger21" "ValveBiped.Bip01_R_Finger2" 2.25819 0 0 1.58972 -30.215667 0.925613 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger22" "ValveBiped.Bip01_R_Finger21" 1.210388 -0.000002 0 -2.236032 -9.181472 -0.361308 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger1" "ValveBiped.Bip01_R_Hand" 3.868322 -0.161243 -1.490733 2.298818 -13.504726 -9.044947 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger11" "ValveBiped.Bip01_R_Finger1" 1.786064 0 0 -6.36826 -26.255575 -3.131673 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger12" "ValveBiped.Bip01_R_Finger11" 1.044445 -0.000001 0 -3.591762 -9.268925 -0.585789 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger0" "ValveBiped.Bip01_R_Hand" 1.1215 -1.347836 -1.035881 23.538534 -14.507972 -99.122116 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger01" "ValveBiped.Bip01_R_Finger0" 1.92812 0 -0.000002 4.635454 -14.578289 0.000004 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger02" "ValveBiped.Bip01_R_Finger01" 1.285141 0 0 0.773202 11.05361 0.000002 0 0 0 0 0 0
$definebone "ValveBiped.attachment_bandage_legL" "ValveBiped.Bip01_L_Calf" 11.345838 -3.026195 0.311951 -83.423275 -63.332711 150.153431 0 0 0 0 0 0
$definebone "ValveBiped.attachment_bandage_armL" "ValveBiped.Bip01_L_Forearm" 3.813801 -3.870656 0.998558 -61.285737 11.452964 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.attachment_armL_T" "ValveBiped.Bip01_L_Forearm" 0 -0.000008 -0.000031 6.507312 7.122667 78.669798 0 0 0 0 0 0
$definebone "ValveBiped.attachment_armR_T" "ValveBiped.Bip01_R_Forearm" 0 -0.000008 -0.000031 6.50731 7.12267 78.669798 0 0 0 0 0 0
$definebone "ValveBiped.L_weapon_bone" "ValveBiped.Bip01_L_Hand" 3.349003 -1.371 0.725001 -5.043 89.255006 113.321998 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bone" "ValveBiped.Bip01_R_Hand" 2.856899 -1.5362 -0.9738 -15.616425 -90.427695 -86.009389 0 0 0 0 0 0
$definebone "ValveBiped.forward" "ValveBiped.Bip01_Head1" 2 -3 0 0 -76 -90.000003 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bone_Clip" "ValveBiped.weapon_bone" 0 0 10.000002 0.000002 -0.000003 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bone_extra" "ValveBiped.weapon_bone" 0.018898 0.665159 9.395884 0.000002 -0.000003 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bone_Clip2" "ValveBiped.Bip01_L_Hand" 3.02821 -0.923407 -2.009451 -0.743367 90.942357 90.188249 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bone_Clip2_Bullets" "ValveBiped.weapon_bone_Clip2" 0.116953 4.311607 0.061865 -0.00002 0.000008 0.000593 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bolt_l" "ValveBiped.Bip01_L_Hand" 0 0 0.000001 -0.000001 -0.000003 -0.000003 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bone_Clip_Bullets" "ValveBiped.weapon_bone_Clip" 0 1 0.00001 0.000002 -0.000003 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bolt" "ValveBiped.weapon_bone" 0 0 0 0.000002 -0.000003 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bolt_opposite" "ValveBiped.weapon_bone" 0 0 0 0.000002 -0.000003 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.weapon_charger" "ValveBiped.weapon_bone" 0 0 0 0.000002 -0.000003 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Jiggle_tie1" "ValveBiped.Bip01_Spine4" 3.108662 4.92119 -1.149827 -78.370007 -141.842142 116.591029 0 0 0 0 0 0
$definebone "ValveBiped.Jiggle_tie2" "ValveBiped.Jiggle_tie1" -0.000001 0 4.954498 1.904266 4.059258 1.557933 0 0 0 0 0 0
$definebone "ValveBiped.Jiggle_tie3" "ValveBiped.Jiggle_tie2" -0.045793 -0.009843 4.253613 -6.922467 3.623491 3.706744 0 0 0 0 0 0
$definebone "ValveBiped.Jiggle_tie4" "ValveBiped.Jiggle_tie3" 0.184012 0.107328 3.57753 0 0.000001 -0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Knee" "ValveBiped.Bip01_L_Thigh" 19.253849 0 0 0 1.446891 0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Quadricep" "ValveBiped.Bip01_R_Thigh" 6.694805 0 0 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Knee" "ValveBiped.Bip01_R_Thigh" 19.253845 0 0 0 1.446719 0 0 0 0 0 0 0
$definebone "ValveBiped.hlp_shirt_front" "ValveBiped.Bip01_Pelvis" -4.886463 4.307392 3.994676 -2.146905 5.475579 -1.370644 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Ulna" "ValveBiped.Bip01_L_Forearm" 5.88435 0 0 0.000009 0.000005 -7.237035 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Wrist" "ValveBiped.Bip01_L_Forearm" 11.768709 0.000001 -0.000004 0.000009 0.000005 -13.660899 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Shoulder" "ValveBiped.Bip01_L_UpperArm" 1.575008 -0.000001 0 0.000003 0.000003 -14.05291 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Elbow" "ValveBiped.Bip01_L_UpperArm" 11.679211 0 0.000004 0.000007 -9.262338 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.hlp_shoulder1_L" "ValveBiped.Bip01_L_Clavicle" 5.983923 -1.056519 3.207436 -2.851075 0.014332 -13.794886 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Wrist" "ValveBiped.Bip01_R_Forearm" 11.768713 0 0 0.000002 -0.000004 13.903737 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Ulna" "ValveBiped.Bip01_R_Forearm" 5.884354 0 0.000008 0.000002 -0.000004 7.369184 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Shoulder" "ValveBiped.Bip01_R_UpperArm" 1.575001 0 0 0.000003 -0.000005 -1.584484 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Elbow" "ValveBiped.Bip01_R_UpperArm" 11.679203 -0.000001 0 0.000002 -9.262289 -0.000001 0 0 0 0 0 0

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
$bonemerge "ValveBiped.L_weapon_bone"
$bonemerge "ValveBiped.weapon_bone"
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



$jigglebone "J_Sec_L_Bust1"
{
	is_flexible
	{
		length 5
		tip_mass 10
		pitch_stiffness 500
		pitch_damping 15
		yaw_stiffness 500
		yaw_damping 15
		along_stiffness 100
		along_damping 0
		angle_constraint 3
	}
	has_base_spring
	{
		base_mass 0
		stiffness 500
		damping 15
		left_constraint -0.2 0.2
		left_friction 0
		up_constraint -0.5 0.5
		up_friction 0
		forward_constraint -0.5 0.5
		forward_friction 0
	}
}

$jigglebone "J_Sec_L_Bust2"
{
	is_flexible
	{
		length 5
		tip_mass 10
		pitch_stiffness 500
		pitch_damping 15
		yaw_stiffness 500
		yaw_damping 15
		along_stiffness 100
		along_damping 0
		angle_constraint 3
	}
	has_base_spring
	{
		base_mass 0
		stiffness 500
		damping 15
		left_constraint -0.2 0.2
		left_friction 0
		up_constraint -0.5 0.5
		up_friction 0
		forward_constraint -0.5 0.5
		forward_friction 0
	}
}

$jigglebone "J_Sec_R_Bust1"
{
	is_flexible
	{
		length 5
		tip_mass 10
		pitch_stiffness 500
		pitch_damping 15
		yaw_stiffness 500
		yaw_damping 15
		along_stiffness 100
		along_damping 0
		angle_constraint 3
	}
	has_base_spring
	{
		base_mass 0
		stiffness 500
		damping 15
		left_constraint -0.2 0.2
		left_friction 0
		up_constraint -0.5 0.5
		up_friction 0
		forward_constraint -0.5 0.5
		forward_friction 0
	}
}

$jigglebone "J_Sec_R_Bust2"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}


// hair


$jigglebone "J_Sec_Hair1_1"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}



$jigglebone "J_Sec_Hair2_1"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}



$jigglebone "J_Sec_Hair3_1"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}



$jigglebone "J_Sec_Hair4_1"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}




$jigglebone "J_Sec_Hair1_2"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}



$jigglebone "J_Sec_Hair2_2"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}



$jigglebone "J_Sec_Hair3_2"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}




$jigglebone "J_Sec_Hair1_3"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}



$jigglebone "J_Sec_Hair2_3"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}



$jigglebone "J_Sec_Hair3_3"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}




$jigglebone "J_Sec_Hair1_4"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}



$jigglebone "J_Sec_Hair2_4"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}



$jigglebone "J_Sec_Hair3_4"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}




$jigglebone "J_Sec_Hair1_5"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}



$jigglebone "J_Sec_Hair2_5"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}



$jigglebone "J_Sec_Hair3_5"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}




$jigglebone "J_Sec_Hair1_6"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}



$jigglebone "J_Sec_Hair2_6"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}



$jigglebone "J_Sec_Hair3_6"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}




$jigglebone "J_Sec_Hair1_7"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}



$jigglebone "J_Sec_Hair2_7"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}




$jigglebone "J_Sec_Hair1_8"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}



$jigglebone "J_Sec_Hair2_8"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}




$jigglebone "J_Sec_Hair1_9"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}



$jigglebone "J_Sec_Hair2_9"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}




$jigglebone "J_Sec_Hair1_10"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}



$jigglebone "J_Sec_Hair2_10"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}




$jigglebone "J_Sec_Hair1_11"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}



$jigglebone "J_Sec_Hair2_11"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}




$jigglebone "J_Sec_Hair1_12"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}



$jigglebone "J_Sec_Hair2_12"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}




$jigglebone "J_Sec_Hair1_13"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}



$jigglebone "J_Sec_Hair2_13"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}




$jigglebone "J_Sec_Hair1_14"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}



$jigglebone "J_Sec_Hair2_14"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}




$jigglebone "J_Sec_Hair1_15"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}



$jigglebone "J_Sec_Hair2_15"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}




$jigglebone "J_Sec_Hair1_16"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}



$jigglebone "J_Sec_Hair2_16"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}



$jigglebone "J_Sec_Hair3_16"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}




$jigglebone "J_Sec_Hair1_17"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}



$jigglebone "J_Sec_Hair2_17"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}



$jigglebone "J_Sec_Hair3_17"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}



$jigglebone "J_Sec_Hair4_17"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}



$jigglebone "J_Sec_Hair5_17"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}



$jigglebone "J_Sec_Hair6_17"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}



$jigglebone "J_Sec_Hair7_17"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}




$jigglebone "J_Sec_Hair1_18"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}



$jigglebone "J_Sec_Hair2_18"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}



$jigglebone "J_Sec_Hair3_18"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}



$jigglebone "J_Sec_Hair4_18"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}



$jigglebone "J_Sec_Hair5_18"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}



$jigglebone "J_Sec_Hair6_18"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}



$jigglebone "J_Sec_Hair7_18"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}




$jigglebone "J_Sec_Hair1_19"
{
	is_flexible
	{
		length 10
		tip_mass 10
		pitch_stiffness 50
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
	has_base_spring
	{
		base_mass 0
		stiffness 100
		damping 15
		left_constraint -3 3
		left_friction 0
		up_constraint -3 3
		up_friction 0
		forward_constraint -3 3
		forward_friction 0
	}
}



$jigglebone "J_Sec_Hair2_19"
{
	is_flexible
	{
		length 10
		tip_mass 10
		pitch_stiffness 50
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
	has_base_spring
	{
		base_mass 0
		stiffness 100
		damping 15
		left_constraint -3 3
		left_friction 0
		up_constraint -3 3
		up_friction 0
		forward_constraint -3 3
		forward_friction 0
	}
}


$sectionframes 30 168

$poseparameter "body_pitch" -90 90 loop 360
$poseparameter "body_yaw" -90 90 loop 360
$poseparameter "head_pitch" -90 90 loop 360
$poseparameter "head_yaw" -90 90 loop 360

$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0
$ikchain "ikclip" "ValveBiped.weapon_bone_Clip" knee 0.707 -0.707 0

$ikautoplaylock "rfoot" 1 0.1
$ikautoplaylock "lfoot" 1 0.1

$weightlist "weights_Idlenoise" {
	 "ValveBiped.Bip01_Pelvis" 0
	 "ValveBiped.Bip01_L_Thigh" 0
	 "ValveBiped.Bip01_L_Calf" 0
	 "ValveBiped.Bip01_L_Foot" 0
	 "ValveBiped.Bip01_L_Toe0" 0
	 "ValveBiped.Bip01_R_Thigh" 0
	 "ValveBiped.Bip01_R_Calf" 0
	 "ValveBiped.Bip01_R_Foot" 0
	 "ValveBiped.Bip01_R_Toe0" 0
	 "ValveBiped.Bip01_Spine" 0
	 "ValveBiped.Bip01_Spine1" 0
	 "ValveBiped.Bip01_Spine2" 0
	 "ValveBiped.Bip01_Spine4" 0
	 "ValveBiped.Bip01_Neck1" 0
	 "ValveBiped.Bip01_Head1" 0
	 "ValveBiped.Bip01_L_Clavicle" 0
	 "ValveBiped.Bip01_L_UpperArm" 0
	 "ValveBiped.Bip01_L_Forearm" 0
	 "ValveBiped.Bip01_L_Hand" 0
	 "ValveBiped.Bip01_L_Finger4" 0
	 "ValveBiped.Bip01_L_Finger41" 0
	 "ValveBiped.Bip01_L_Finger42" 0
	 "ValveBiped.Bip01_L_Finger3" 0
	 "ValveBiped.Bip01_L_Finger31" 0
	 "ValveBiped.Bip01_L_Finger32" 0
	 "ValveBiped.Bip01_L_Finger2" 0
	 "ValveBiped.Bip01_L_Finger21" 0
	 "ValveBiped.Bip01_L_Finger22" 0
	 "ValveBiped.Bip01_L_Finger1" 0
	 "ValveBiped.Bip01_L_Finger11" 0
	 "ValveBiped.Bip01_L_Finger12" 0
	 "ValveBiped.Bip01_L_Finger0" 0
	 "ValveBiped.Bip01_L_Finger01" 0
	 "ValveBiped.Bip01_L_Finger02" 0
	 "ValveBiped.Bip01_R_Clavicle" 0
	 "ValveBiped.Bip01_R_UpperArm" 0
	 "ValveBiped.Bip01_R_Forearm" 0
	 "ValveBiped.Bip01_R_Hand" 0
	 "ValveBiped.Bip01_R_Finger4" 0
	 "ValveBiped.Bip01_R_Finger41" 0
	 "ValveBiped.Bip01_R_Finger42" 0
	 "ValveBiped.Bip01_R_Finger3" 0
	 "ValveBiped.Bip01_R_Finger31" 0
	 "ValveBiped.Bip01_R_Finger32" 0
	 "ValveBiped.Bip01_R_Finger2" 0
	 "ValveBiped.Bip01_R_Finger21" 0
	 "ValveBiped.Bip01_R_Finger22" 0
	 "ValveBiped.Bip01_R_Finger1" 0
	 "ValveBiped.Bip01_R_Finger11" 0
	 "ValveBiped.Bip01_R_Finger12" 0
	 "ValveBiped.Bip01_R_Finger0" 0
	 "ValveBiped.Bip01_R_Finger01" 0
	 "ValveBiped.Bip01_R_Finger02" 0
	 "ValveBiped.attachment_bandage_legL" 0
	 "ValveBiped.attachment_bandage_armL" 0
	 "ValveBiped.attachment_armL_T" 0
	 "ValveBiped.attachment_armR_T" 0
	 "ValveBiped.L_weapon_bone" 0
	 "ValveBiped.weapon_bone" 0
	 "ValveBiped.forward" 0
	 "ValveBiped.weapon_bone_Clip" 0
	 "ValveBiped.weapon_bone_extra" 0
	 "ValveBiped.weapon_bone_Clip2" 0
	 "ValveBiped.weapon_bone_Clip2_Bullets" 0
	 "ValveBiped.weapon_bolt_l" 0
	 "ValveBiped.weapon_bone_Clip_Bullets" 0
	 "ValveBiped.weapon_bolt" 0
	 "ValveBiped.weapon_bolt_opposite" 0
	 "ValveBiped.weapon_charger" 0
	 "ValveBiped.Jiggle_tie1" 0
	 "ValveBiped.Jiggle_tie2" 0
	 "ValveBiped.Jiggle_tie3" 0
	 "ValveBiped.Jiggle_tie4" 0
	 "ValveBiped.Bip01_L_Knee" 0
	 "ValveBiped.Bip01_R_Quadricep" 0
	 "ValveBiped.Bip01_R_Knee" 0
	 "ValveBiped.hlp_shirt_front" 0
	 "ValveBiped.Bip01_L_Ulna" 0
	 "ValveBiped.Bip01_L_Wrist" 0
	 "ValveBiped.Bip01_L_Shoulder" 0
	 "ValveBiped.Bip01_L_Elbow" 0
	 "ValveBiped.hlp_shoulder1_L" 0
	 "ValveBiped.Bip01_R_Wrist" 0
	 "ValveBiped.Bip01_R_Ulna" 0
	 "ValveBiped.Bip01_R_Shoulder" 0
	 "ValveBiped.Bip01_R_Elbow" 0
}


$include "Anims_RigToZoey_ReplaceLouis.qci"
$sequence Proportion_Trick survivor_manager_anims/Proportion.smd delta subtract Proportion_Trick 1 numframes 1 autoplay noautoik

$collisionjoints "survivor_manager_physics.smd"
{
	$mass 100
	$inertia 10
	$damping 0.05
	$rotdamping 5
	$rootbone "valvebiped.bip01_pelvis"

	$jointrotdamping "ValveBiped.Bip01_Pelvis" 3

	$jointmassbias "ValveBiped.Bip01_Spine1" 8
	$jointconstrain "ValveBiped.Bip01_Spine1" x limit -10 10 0
	$jointconstrain "ValveBiped.Bip01_Spine1" y limit -16 16 0
	$jointconstrain "ValveBiped.Bip01_Spine1" z limit -20 30 0

	$jointmassbias "ValveBiped.Bip01_Spine2" 9
	$jointconstrain "ValveBiped.Bip01_Spine2" x limit -10 10 0
	$jointconstrain "ValveBiped.Bip01_Spine2" y limit -10 10 0
	$jointconstrain "ValveBiped.Bip01_Spine2" z limit -20 20 0

	$jointmassbias "ValveBiped.Bip01_R_Clavicle" 4
	$jointrotdamping "ValveBiped.Bip01_R_Clavicle" 6
	$jointconstrain "ValveBiped.Bip01_R_Clavicle" x limit -15 15 0
	$jointconstrain "ValveBiped.Bip01_R_Clavicle" y limit -10 10 0
	$jointconstrain "ValveBiped.Bip01_R_Clavicle" z limit 0 45 0

	$jointmassbias "ValveBiped.Bip01_L_Clavicle" 4
	$jointrotdamping "ValveBiped.Bip01_L_Clavicle" 6
	$jointconstrain "ValveBiped.Bip01_L_Clavicle" x limit -15 15 0
	$jointconstrain "ValveBiped.Bip01_L_Clavicle" y limit -10 10 0
	$jointconstrain "ValveBiped.Bip01_L_Clavicle" z limit 0 45 0

	$jointmassbias "ValveBiped.Bip01_L_UpperArm" 5
	$jointrotdamping "ValveBiped.Bip01_L_UpperArm" 2
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" x limit -15 20 0
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" y limit -40 32 0
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" z limit -80 25 0

	$jointmassbias "ValveBiped.Bip01_L_Forearm" 4
	$jointrotdamping "ValveBiped.Bip01_L_Forearm" 4
	$jointconstrain "ValveBiped.Bip01_L_Forearm" x limit -40 15 0
	$jointconstrain "ValveBiped.Bip01_L_Forearm" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Forearm" z limit -120 10 0

	$jointrotdamping "ValveBiped.Bip01_L_Hand" 1
	$jointconstrain "ValveBiped.Bip01_L_Hand" x limit -25 25 0
	$jointconstrain "ValveBiped.Bip01_L_Hand" y limit -35 35 0
	$jointconstrain "ValveBiped.Bip01_L_Hand" z limit -50 50 0

	$jointmassbias "ValveBiped.Bip01_R_UpperArm" 5
	$jointrotdamping "ValveBiped.Bip01_R_UpperArm" 2
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" x limit -15 20 0
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" y limit -40 32 0
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" z limit -80 25 0

	$jointmassbias "ValveBiped.Bip01_R_Forearm" 4
	$jointrotdamping "ValveBiped.Bip01_R_Forearm" 4
	$jointconstrain "ValveBiped.Bip01_R_Forearm" x limit -40 15 0
	$jointconstrain "ValveBiped.Bip01_R_Forearm" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Forearm" z limit -120 10 0

	$jointrotdamping "ValveBiped.Bip01_R_Hand" 1
	$jointconstrain "ValveBiped.Bip01_R_Hand" x limit -25 25 0
	$jointconstrain "ValveBiped.Bip01_R_Hand" y limit -35 35 0
	$jointconstrain "ValveBiped.Bip01_R_Hand" z limit -50 50 0

	$jointmassbias "ValveBiped.Bip01_R_Thigh" 7
	$jointrotdamping "ValveBiped.Bip01_R_Thigh" 7
	$jointconstrain "ValveBiped.Bip01_R_Thigh" x limit -25 25 0
	$jointconstrain "ValveBiped.Bip01_R_Thigh" y limit -10 15 0
	$jointconstrain "ValveBiped.Bip01_R_Thigh" z limit -55 25 0

	$jointmassbias "ValveBiped.Bip01_R_Calf" 4
	$jointconstrain "ValveBiped.Bip01_R_Calf" x limit -10 25 0
	$jointconstrain "ValveBiped.Bip01_R_Calf" y limit -5 5 0
	$jointconstrain "ValveBiped.Bip01_R_Calf" z limit -10 115 0

	$jointrotdamping "ValveBiped.Bip01_R_Foot" 2
	$jointconstrain "ValveBiped.Bip01_R_Foot" x limit -20 30 0
	$jointconstrain "ValveBiped.Bip01_R_Foot" y limit -30 20 0
	$jointconstrain "ValveBiped.Bip01_R_Foot" z limit -30 50 0

	$jointmassbias "ValveBiped.Bip01_L_Thigh" 7
	$jointrotdamping "ValveBiped.Bip01_L_Thigh" 7
	$jointconstrain "ValveBiped.Bip01_L_Thigh" x limit -25 25 0
	$jointconstrain "ValveBiped.Bip01_L_Thigh" y limit -10 15 0
	$jointconstrain "ValveBiped.Bip01_L_Thigh" z limit -55 25 0

	$jointmassbias "ValveBiped.Bip01_L_Calf" 4
	$jointconstrain "ValveBiped.Bip01_L_Calf" x limit -10 25 0
	$jointconstrain "ValveBiped.Bip01_L_Calf" y limit -5 5 0
	$jointconstrain "ValveBiped.Bip01_L_Calf" z limit -10 115 0

	$jointrotdamping "ValveBiped.Bip01_L_Foot" 2
	$jointconstrain "ValveBiped.Bip01_L_Foot" x limit -20 30 0
	$jointconstrain "ValveBiped.Bip01_L_Foot" y limit -30 20 0
	$jointconstrain "ValveBiped.Bip01_L_Foot" z limit -30 50 0

	$jointmassbias "ValveBiped.Bip01_Head1" 4
	$jointrotdamping "ValveBiped.Bip01_Head1" 3
	$jointconstrain "ValveBiped.Bip01_Head1" x limit -50 50 0
	$jointconstrain "ValveBiped.Bip01_Head1" y limit -20 20 0
	$jointconstrain "ValveBiped.Bip01_Head1" z limit -26 30 0

	$jointcollide "ValveBiped.Bip01_R_Foot" "ValveBiped.Bip01_L_Foot"
	$jointcollide "ValveBiped.Bip01_R_Calf" "ValveBiped.Bip01_L_Foot"
	$jointcollide "ValveBiped.Bip01_L_Calf" "ValveBiped.Bip01_R_Foot"
	$jointcollide "ValveBiped.Bip01_L_Calf" "ValveBiped.Bip01_R_Calf"
	$jointcollide "ValveBiped.Bip01_L_Thigh" "ValveBiped.Bip01_R_Thigh"
	$jointcollide "ValveBiped.Bip01_Spine2" "ValveBiped.Bip01_R_Hand"
	$jointcollide "ValveBiped.Bip01_Spine2" "ValveBiped.Bip01_L_Hand"
	$jointcollide "ValveBiped.Bip01_Spine1" "ValveBiped.Bip01_R_Hand"
	$jointcollide "ValveBiped.Bip01_Spine1" "ValveBiped.Bip01_L_Hand"
	$jointcollide "ValveBiped.Bip01_Spine2" "ValveBiped.Bip01_L_UpperArm"
	$jointcollide "ValveBiped.Bip01_Spine2" "ValveBiped.Bip01_R_UpperArm"
	$jointcollide "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_Head1"
	$jointcollide "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_Spine1"
	$jointcollide "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_Head1"
	$jointcollide "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_Spine1"
	$jointcollide "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_R_Forearm"
	$jointcollide "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_R_UpperArm"
	$jointcollide "ValveBiped.Bip01_R_Hand" "ValveBiped.Bip01_R_Thigh"
	$jointcollide "ValveBiped.Bip01_R_Hand" "ValveBiped.Bip01_L_Thigh"
	$jointcollide "ValveBiped.Bip01_R_Hand" "ValveBiped.Bip01_Pelvis"
	$jointcollide "ValveBiped.Bip01_L_Hand" "ValveBiped.Bip01_R_Thigh"
	$jointcollide "ValveBiped.Bip01_L_Hand" "ValveBiped.Bip01_L_Thigh"
	$jointcollide "ValveBiped.Bip01_L_Hand" "ValveBiped.Bip01_Pelvis"
	$jointcollide "ValveBiped.Bip01_Head1" "ValveBiped.Bip01_R_Hand"
	$jointcollide "ValveBiped.Bip01_Head1" "ValveBiped.Bip01_L_Hand"
	$jointcollide "ValveBiped.Bip01_Head1" "ValveBiped.Bip01_R_Clavicle"
	$jointcollide "ValveBiped.Bip01_Head1" "ValveBiped.Bip01_L_Clavicle"
}
