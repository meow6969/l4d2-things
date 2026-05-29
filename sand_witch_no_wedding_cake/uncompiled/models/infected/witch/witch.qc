// Created by Crowbar 0.74

$modelname "infected/witch.mdl"

$bodygroup "witch_model"
{
	studio "sandwich.smd"
}


$surfaceprop "flesh"

$contents "solid"

$illumposition -0.177 7.217 33.956

$eyeposition 0 0 73

$ambientboost

$opaque

$cdmaterials "models\infected\witch\"
$cdmaterials "models\DoktorHaus\"

$attachment "lfoot" "ValveBiped.Bip01_L_Foot" 0 0 0 rotate 0 0 0
$attachment "rfoot" "ValveBiped.Bip01_R_Foot" 0 0 0 rotate 0 0 0
$attachment "reye" "ValveBiped.Bip01_Head1" 3.05 -3.12 1.05 rotate 0 -90 0
$attachment "leye" "ValveBiped.Bip01_Head1" 3.05 -3.12 -1.04 rotate 0 -90 0
$attachment "forward" "ValveBiped.forward" 0 0 0 rotate 0 0 0
$attachment "lfoot" "ValveBiped.Bip01_L_Foot" 0 2 0 rotate 0 -20 180
$attachment "rfoot" "ValveBiped.Bip01_R_Foot" 0 2 0 rotate 0 -20 -180
$attachment "lhand" "ValveBiped.Bip01_L_Hand" 9 -3 -2 rotate 15 0 15
$attachment "rhand" "ValveBiped.Bip01_R_Hand" 9 -3 2 rotate -15 0 -15

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 72

$hboxset "L4D_Witch"
$hbox 3 "ValveBiped.Bip01_Pelvis" -6 -4.5 -4.5 6 4.5 3.5
$hbox 6 "ValveBiped.Bip01_L_Thigh" 4 -2.8 -2.25 18 2.2 2.25
$hbox 6 "ValveBiped.Bip01_L_Calf" 0 -1.5 -2 18 2.5 2
$hbox 6 "ValveBiped.Bip01_L_Toe0" -3.5 -0.5 -1.35 1.5 1.5 2.45
$hbox 7 "ValveBiped.Bip01_R_Thigh" 4 -2.8 -2.25 18 2.2 2.25
$hbox 7 "ValveBiped.Bip01_R_Calf" 0 -1.5 -2 18 2.5 2
$hbox 7 "ValveBiped.Bip01_R_Toe0" -3.5 -0.5 -1.35 1.5 1.5 2.45
$hbox 3 "ValveBiped.Bip01_Spine1" -5 -2.75 -4.5 5 3.75 4.5
$hbox 2 "ValveBiped.Bip01_Spine2" -2 -3.5 -5 11 4.5 5
$hbox 1 "ValveBiped.Bip01_Neck1" 0 -2 -2 4 2 2
$hbox 1 "ValveBiped.Bip01_Head1" -1.5 -4 -3 7.5 5 3
$hbox 4 "ValveBiped.Bip01_L_UpperArm" -2 -1.6 -1.5 11 1.4 1.5
$hbox 4 "ValveBiped.Bip01_L_Forearm" 0 -1.25 -1.25 10 1.25 1.25
$hbox 4 "ValveBiped.Bip01_L_Hand" -0.5 -1.5 -1.5 8.5 1.5 1.5
$hbox 5 "ValveBiped.Bip01_R_UpperArm" -2 -1.6 -1.5 11 1.4 1.5
$hbox 5 "ValveBiped.Bip01_R_Forearm" 0 -1.25 -1.25 10 1.25 1.25
$hbox 5 "ValveBiped.Bip01_R_Hand" -0.5 -1.5 -1.5 8.5 1.5 1.5
$skipboneinbbox

$definebone "ValveBiped.Bip01_Pelvis" "" 0 0.814341 35.924473 0 0 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Thigh" "ValveBiped.Bip01_Pelvis" 3.490192 0 0 1.568415 -89.901375 -89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Calf" "ValveBiped.Bip01_L_Thigh" 17.312614 0 0 0 1.149296 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Foot" "ValveBiped.Bip01_L_Calf" 16.130363 0 0 -6.43483 -74.437819 -1.887323 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Toe0" "ValveBiped.Bip01_L_Foot" 5.353091 0 0 -1.516961 -18.140708 1.043356 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Thigh" "ValveBiped.Bip01_Pelvis" -3.490192 0 0 1.568435 -90.098603 -90.000016 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Calf" "ValveBiped.Bip01_R_Thigh" 17.312616 0 0 0 1.149296 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Foot" "ValveBiped.Bip01_R_Calf" 16.130356 0 0 6.434831 -74.437819 2.559173 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Toe0" "ValveBiped.Bip01_R_Foot" 5.35309 0 0 1.307718 -18.15646 -6.212352 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine" "ValveBiped.Bip01_Pelvis" 0 3.98064 -0.064522 -1.903481 89.999982 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine1" "ValveBiped.Bip01_Spine" 3.278969 0 0 0 -6.812239 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine2" "ValveBiped.Bip01_Spine1" 3.543987 0 0 0 -5.314814 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine4" "ValveBiped.Bip01_Spine2" 5.663628 0 0 0 5.685 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Neck1" "ValveBiped.Bip01_Spine4" 4.682087 0 0 0 34.886079 179.999909 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Head1" "ValveBiped.Bip01_Neck1" 4.186314 -0.000002 0 -0.000057 29.719666 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Clavicle" "ValveBiped.Bip01_Spine4" 3.369213 1.594238 1.5 -63.009199 -102.87842 3.320119 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_UpperArm" "ValveBiped.Bip01_L_Clavicle" 4.179418 0 0 2.122866 -65.92097 -60.180052 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_UpperArm" 10.735909 0 0.000002 -0.00001 -9.014458 -0.000006 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Hand" "ValveBiped.Bip01_L_Forearm" 10.060625 -0.000017 -0.000027 10.203626 4.066456 58.994591 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger4" "ValveBiped.Bip01_L_Hand" 2.88802 0.275892 -1.268036 11.480243 -8.6897 30.780668 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger41" "ValveBiped.Bip01_L_Finger4" 2.059616 0 0 -4.04496 -31.90631 -2.514651 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger42" "ValveBiped.Bip01_L_Finger41" 1.413881 -0.000001 0 -3.786843 -27.585987 -1.976304 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger3" "ValveBiped.Bip01_L_Hand" 3.061207 0.168358 -0.385494 5.944495 -8.560954 29.931477 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger31" "ValveBiped.Bip01_L_Finger3" 2.508614 0.000001 0 0.000006 -31.61547 0.000003 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger32" "ValveBiped.Bip01_L_Finger31" 2.100855 0 0 -3.151032 -30.605866 -1.862343 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger2" "ValveBiped.Bip01_L_Hand" 3.430954 -0.12108 0.402565 5.944495 -10.277367 29.931477 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger21" "ValveBiped.Bip01_L_Finger2" 2.573874 0 0 -4.277758 -23.123605 -1.824408 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger22" "ValveBiped.Bip01_L_Finger21" 2.362709 -0.000001 0 4.208266 -37.438278 3.215612 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger1" "ValveBiped.Bip01_L_Hand" 3.440187 -0.578703 1.137346 1.890759 -9.208627 29.271267 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger11" "ValveBiped.Bip01_L_Finger1" 2.501089 0.000001 0 1.386734 -26.593948 0.694139 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger12" "ValveBiped.Bip01_L_Finger11" 2.170918 -0.000001 0 3.566955 -24.66802 1.636709 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger0" "ValveBiped.Bip01_L_Hand" 0.955235 -1.097456 0.270379 -15.105124 -24.1174 121.481663 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger01" "ValveBiped.Bip01_L_Finger0" 1.963949 0 -0.000001 0.935876 -21.824138 -0.000003 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger02" "ValveBiped.Bip01_L_Finger01" 1.86883 0 0 1.121114 1.667134 -0.000003 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Clavicle" "ValveBiped.Bip01_Spine4" 3.369213 1.594238 -1.5 63.009205 -102.87842 -7.837663 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_UpperArm" "ValveBiped.Bip01_R_Clavicle" 4.179418 0 0 2.001915 -65.922909 62.022742 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_UpperArm" 10.735909 0 0 0.000003 -9.014462 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped.Bip01_R_Forearm" 10.060598 -0.00001 0.000015 -10.203807 4.066282 -59.030122 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger4" "ValveBiped.Bip01_R_Hand" 2.888031 0.275105 1.268208 -11.480417 -8.689539 -30.745099 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger41" "ValveBiped.Bip01_R_Finger4" 2.05962 -0.000001 0 4.044964 -31.906317 2.514655 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger42" "ValveBiped.Bip01_R_Finger41" 1.413883 0 0 3.786846 -27.585971 1.976303 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger3" "ValveBiped.Bip01_R_Hand" 3.061222 0.168118 0.385599 -5.94467 -8.560797 -29.895909 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger31" "ValveBiped.Bip01_R_Finger3" 2.50861 -0.000001 0 -0.000003 -31.615477 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger32" "ValveBiped.Bip01_R_Finger31" 2.100859 0 0 3.151037 -30.605869 1.862345 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger2" "ValveBiped.Bip01_R_Hand" 3.430975 -0.120831 -0.402639 -5.94467 -10.277205 -29.895912 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger21" "ValveBiped.Bip01_R_Finger2" 2.573874 0 0 4.277755 -23.123616 1.82441 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger22" "ValveBiped.Bip01_R_Finger21" 2.362711 0 0 -4.208266 -37.438272 -3.215612 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger1" "ValveBiped.Bip01_R_Hand" 3.440208 -0.577997 -1.137703 -1.890937 -9.208464 -29.235696 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger11" "ValveBiped.Bip01_R_Finger1" 2.501087 0 0 -1.386732 -26.593961 -0.694138 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger12" "ValveBiped.Bip01_R_Finger11" 2.170918 0.000001 0 -3.566947 -24.668026 -1.636709 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger0" "ValveBiped.Bip01_R_Hand" 0.955254 -1.097296 -0.271061 15.119609 -24.108406 -121.447976 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger01" "ValveBiped.Bip01_R_Finger0" 1.963947 0 -0.000001 -0.935863 -21.824138 0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger02" "ValveBiped.Bip01_R_Finger01" 1.868828 0 -0.000001 -1.121102 1.667133 0.000002 0 0 0 0 0 0
$definebone "ValveBiped.jiggle_bangA_1" "ValveBiped.Bip01_Head1" 5.881767 -3.362281 0.599177 81.89866 -97.330401 68.258356 0 0 0 0 0 0
$definebone "ValveBiped.jiggle_bangA_2" "ValveBiped.jiggle_bangA_1" 0 -0.090338 3.838062 0 -0.000001 12.782511 0 0 0 0 0 0
$definebone "ValveBiped.jiggle_bangA_3" "ValveBiped.jiggle_bangA_2" 0 -0.252023 4.059597 0 -0.000001 -0.000002 0 0 0 0 0 0
$definebone "ValveBiped.jiggle_bangB_1" "ValveBiped.Bip01_Head1" 5.826401 -2.451741 1.86307 53.302038 -86.849749 77.78647 0 0 0 0 0 0
$definebone "ValveBiped.jiggle_bangB_2" "ValveBiped.jiggle_bangB_1" 0 -0.090338 3.838066 0.000001 -0.000005 10.718951 0 0 0 0 0 0
$definebone "ValveBiped.jiggle_bangB_3" "ValveBiped.jiggle_bangB_2" 0 -0.252023 4.059605 0.000001 -0.000007 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.jiggle_bangC_1" "ValveBiped.Bip01_Head1" 5.416069 -2.516343 -2.048455 39.696581 89.801053 -99.516526 0 0 0 0 0 0
$definebone "ValveBiped.jiggle_bangC_2" "ValveBiped.jiggle_bangC_1" 0 -0.09034 3.838058 0 0.000003 12.782517 0 0 0 0 0 0
$definebone "ValveBiped.jiggle_bangC_3" "ValveBiped.jiggle_bangC_2" 0 -0.252023 4.059601 0.000001 0.000002 0.000002 0 0 0 0 0 0
$definebone "ValveBiped.jiggle_RsideA_1" "ValveBiped.Bip01_Head1" 5.926964 -0.032883 2.949805 14.810099 -93.300446 75.413792 0 0 0 0 0 0
$definebone "ValveBiped.jiggle_RsideA_2" "ValveBiped.jiggle_RsideA_1" 0 -0.09034 3.838062 0.000001 -0.000001 10.718952 0 0 0 0 0 0
$definebone "ValveBiped.jiggle_LsideA_1" "ValveBiped.Bip01_Head1" 5.442558 -0.261105 -2.837629 13.50095 83.996485 -103.040671 0 0 0 0 0 0
$definebone "ValveBiped.jiggle_LsideA_2" "ValveBiped.jiggle_LsideA_1" -0.000001 -0.09034 3.83807 0.000001 0.000001 6.215733 0 0 0 0 0 0
$definebone "ValveBiped.forward" "ValveBiped.Bip01_Head1" 2 -3 0 0 -76 -90.000003 0 0 0 0 0 0


$poseparameter "body_pitch" -90 90 loop 360
$poseparameter "body_yaw" -90 90 loop 360

$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0

$sequence "ragdoll" {
	"witch_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 3
}

$includemodel "infected/anim_witch.mdl"

$keyvalues
{
	AddedAmbientScale 0.1 particles 
	{
		"effect"		 
		{
			"name" "witch_eye_glow"
			"attachment_type" "follow_attachment"
			"attachment_point" "reye"
		}
		"effect"		 
		{
			"name" "witch_eye_glow"
			"attachment_type" "follow_attachment"
			"attachment_point" "leye"
		}
	}
}
