// Created by Crowbar 0.74

$modelname "infected/charger.mdl"

$bodygroup "kanata_charger"
{
	studio "my_charger.smd"
}


$surfaceprop "flesh"

$contents "solid"

$illumposition -3.157 -6.319 33.42

$eyeposition 0 0 73

$ambientboost

$opaque

$cdmaterials "20doge\kanata\"

$attachment "lfoot" "bip_foot_L" 1 3 0 rotate 0 -23 -180
$attachment "rfoot" "bip_foot_R" 1 3 0 rotate 0 -23 180
$attachment "lhand" "bip_hand_R" 5 -2 0 rotate 0 0 0
$attachment "rhand" "bip_hand_R" 5 -2 0 rotate 0 0 0
$attachment "attach_blur" "bip_pelvis" 0 0 0 rotate 30 0 90

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 72

$hboxset "charger"
$hbox 5 "bip_hip_L" 3 -5 -5 21 4.5 7
$hbox 5 "bip_knee_L" -1 -4 -5 17 4 5
$hbox 5 "bip_foot_L" -3.5 -7 -4 3.5 3 4
$hbox 4 "bip_hip_R" 3 -4.5 -3 21 4.5 5.5
$hbox 4 "bip_knee_R" 0 -3.75 -3 18 3.25 4
$hbox 4 "bip_foot_R" -2 -1 -2.75 2 7 2.75
$hbox 0 "bip_pelvis" -9.25 -7 -9.5 9.25 7 6.5
$hbox 0 "bip_spine_1" -10 -8 -10.5 8 8 7.5
$hbox 0 "bip_spine_3" -11 -8 -8 9 8 8
$hbox 1 "bip_head" -4 -6.25 -3.5 2.5 2.25 3.5
$hbox 2 "bip_upperArm_L" -2 -2 -1.5 2 2 13.5
$hbox 2 "bip_lowerArm_L" -1 -1 -2 1 1 10
$hbox 3 "bip_upperArm_R" -4 -6.25 -7.5 20 4.75 7.5
$hbox 3 "bip_lowerArm_R" -1 -6.25 -6 19 8.25 6
$hbox 3 "bip_hand_R" -2 -0.5 -6.5 6 8.5 6.5
$skipboneinbbox

$unlockdefinebones
$definebone "bip_pelvis" "" 0.000069 40.078655 -5.71823 0 0 179.684601 0 0 0 0 0 0
$definebone "bip_spine_0" "bip_pelvis" 0 -4.477634 0.943081 0 0 -20.922934 0 0 0 0 0 0
$definebone "bip_spine_1" "bip_spine_0" 0 0 0 0 0 4.517543 0 0 0 0 0 0
$definebone "bip_spine_2" "bip_spine_1" 0 0 0 0 0 11.634192 0 0 0 0 0 0
$definebone "bip_spine_3" "bip_spine_2" 0 -6.487892 0.584438 0 0 43.538665 0 0 0 0 0 0
$definebone "bip_neck" "bip_spine_3" 0 -3.726528 6.698624 0 0 5.236321 0 0 0 0 0 0
$definebone "bip_head" "bip_neck" 0 -2.180004 3.228176 0 0 -39.224571 0 0 0 0 0 0
$definebone "bip_collar_L" "bip_spine_3" 0.84168 -3.77895 6.842449 -41.911789 -86.221255 -160.460377 0 0 0 0 0 0
$definebone "bip_upperArm_L" "bip_collar_L" -0.542641 -4.231889 1.211349 -13.635933 -53.524853 77.533507 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" 0.937191 0.852382 9.676201 -3.79091 0.477329 -11.573293 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_lowerArm_L" 1.784336 -3.633119 7.712915 -0.002628 18.274885 -0.000398 0 0 0 0 0 0
$definebone "bip_collar_R" "bip_spine_3" -0.84168 -3.77895 6.842449 -44.615646 -83.409703 140.004821 0 0 0 0 0 0
$definebone "bip_upperArm_R" "bip_collar_R" -1.153088 4.01507 2.443371 -13.812865 151.622222 -30.3376 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" 9.651585 -0.471001 1.08904 -6.121765 -0.485517 -86.877192 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_lowerArm_R" 19.832741 4.794439 -2.286751 -88.577902 -89.999927 -8.670643 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 2.899811 -0.471063 -4.331224 -32.078202 -40.640343 -25.7521 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" -0.000027 2.543324 0.000039 -0.000934 0.000005 12.663975 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" 0.000065 2.315296 -0.000038 0.000898 0.00012 5.779715 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_hand_R" 1.551384 3.956605 -3.900833 -78.355794 -178.815022 154.46705 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" 0 2.741438 -0.000006 -0.000855 0.000398 -14.684644 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" 0.00001 2.668509 0.000044 0.001437 0.000056 -10.919902 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_hand_R" 1.401085 3.639791 -1.202138 -77.68343 -140.209399 116.377968 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" -0.000002 2.81094 0 0.002577 -0.000687 -14.684809 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" -0.000014 2.736195 -0.000031 -0.003725 0.000286 -10.92013 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_hand_R" 1.33567 3.182092 1.418062 -71.710839 -81.08677 56.159161 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" 0.000003 2.663261 0.00005 -0.002927 0.00058 -14.684577 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" -0.000002 2.592527 -0.000038 0.001712 0.00035 -10.920244 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_hand_R" 1.34478 1.881134 3.809573 -68.931471 -84.645653 64.190248 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" -0.000002 2.315653 -0.000076 -0.005849 0.00161 -14.684463 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" -0.000015 2.254025 0.00008 0.00452 0.000405 -10.919849 0 0 0 0 0 0
$definebone "bip_hip_R" "bip_pelvis" -3.212346 0.027462 1.047472 10.794067 96.370124 88.403323 0 0 0 0 0 0
$definebone "bip_knee_R" "bip_hip_R" 16.443773 0.017725 -0.024524 -0.000058 11.202185 -0.000057 0 0 0 0 0 0
$definebone "bip_foot_R" "bip_knee_R" 12.72773 1.561728 -0.262975 -86.213421 -148.039637 -1.124138 0 0 0 0 0 0
$definebone "Rfoot_IK" "bip_knee_R" 20.353382 4.314385 -3.818229 -86.774726 -161.513797 23.771314 0 0 0 0 0 0
$definebone "bip_hip_L" "bip_pelvis" 3.212346 0.027462 1.047472 10.793988 83.630113 -178.40323 0 0 0 0 0 0
$definebone "bip_knee_L" "bip_hip_L" 16.443748 0.036691 -0.008527 11.201552 0.000515 0 0 0 0 0 0 0
$definebone "bip_foot_L" "bip_knee_L" 12.839327 0.117177 -1.406964 2.00329 86.785688 -59.218812 0 0 0 0 0 0
$definebone "Lfoot_IK" "bip_knee_L" 20.354837 3.810967 -4.133191 1.325939 86.94951 -47.759872 0 0 0 0 0 0

$bonemerge "bip_pelvis"
$bonemerge "bip_spine_0"
$bonemerge "bip_spine_1"
$bonemerge "bip_spine_2"
$bonemerge "bip_spine_3"
$bonemerge "bip_neck"
$bonemerge "bip_head"
$bonemerge "bip_collar_L"
$bonemerge "bip_upperArm_L"
$bonemerge "bip_lowerArm_L"
$bonemerge "bip_hand_L"
$bonemerge "bip_collar_R"
$bonemerge "bip_upperArm_R"
$bonemerge "bip_lowerArm_R"
$bonemerge "bip_hand_R"
$bonemerge "bip_thumb_0_R"
$bonemerge "bip_thumb_1_R"
$bonemerge "bip_thumb_2_R"
$bonemerge "bip_index_0_R"
$bonemerge "bip_index_1_R"
$bonemerge "bip_index_2_R"
$bonemerge "bip_middle_0_R"
$bonemerge "bip_middle_1_R"
$bonemerge "bip_middle_2_R"
$bonemerge "bip_ring_0_R"
$bonemerge "bip_ring_1_R"
$bonemerge "bip_ring_2_R"
$bonemerge "bip_pinky_0_R"
$bonemerge "bip_pinky_1_R"
$bonemerge "bip_pinky_2_R"
$bonemerge "bip_hip_R"
$bonemerge "bip_knee_R"
$bonemerge "bip_foot_R"
$bonemerge "Rfoot_IK"
$bonemerge "bip_hip_L"
$bonemerge "bip_knee_L"
$bonemerge "bip_foot_L"
$bonemerge "Lfoot_IK"


$poseparameter "move_yaw" -180 180 loop 360
$poseparameter "body_pitch" -90 90 loop 360
$poseparameter "body_yaw" -90 90 loop 360

$ikchain "rhand" "bip_hand_R" knee 0.707 0.707 0
$ikchain "rfoot" "Rfoot_IK" knee 0 0 0
$ikchain "lfoot" "Lfoot_IK" knee 0 0 0

$weightlist "weights_Idle_Upper_KNIFE" {
	 "bip_pelvis" 0
	 "bip_spine_0" 0
	 "bip_spine_1" 0
	 "bip_spine_2" 0
	 "bip_spine_3" 0
	 "bip_neck" 0
	 "bip_head" 0
	 "bip_collar_L" 0
	 "bip_upperArm_L" 0
	 "bip_lowerArm_L" 0
	 "bip_hand_L" 0
	 "bip_collar_R" 0
	 "bip_upperArm_R" 0
	 "bip_lowerArm_R" 0
	 "bip_hand_R" 0
	 "bip_thumb_0_R" 0
	 "bip_thumb_1_R" 0
	 "bip_thumb_2_R" 0
	 "bip_index_0_R" 0
	 "bip_index_1_R" 0
	 "bip_index_2_R" 0
	 "bip_middle_0_R" 0
	 "bip_middle_1_R" 0
	 "bip_middle_2_R" 0
	 "bip_ring_0_R" 0
	 "bip_ring_1_R" 0
	 "bip_ring_2_R" 0
	 "bip_pinky_0_R" 0
	 "bip_pinky_1_R" 0
	 "bip_pinky_2_R" 0
	 "bip_hip_R" 0
	 "bip_knee_R" 0
	 "bip_foot_R" 0
	 "Rfoot_IK" 0
	 "bip_hip_L" 0
	 "bip_knee_L" 0
	 "bip_foot_L" 0
	 "Lfoot_IK" 0
}

/* $animation "a_proportions_corrective_animation" "charger_anims\a_proportions_corrective_animation.smd" {
}

$animation "a_proportions" "charger_anims\a_proportions.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_proportions_corrective_animation" 0
} */

$sequence "charger" {
	"charger_anims\charger.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 2
}

$sequence "ragdoll" {
	"charger_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 0
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 1
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 29 29 target 2
}

$include "declaresequence.qci"

$sequence Proportion_Trick charger_anims/Proportion.smd delta subtract Proportion_Trick 1 numframes 1 autoplay noautoik

/* 
$sequence "reference" {
	"charger_anims\reference.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 2
}

$sequence "!!!_proportions" {
	"a_proportions"
	autoplay
	predelta
	fadein 0.2
	fadeout 0.2
} */

$includemodel "infected/anim_charger.mdl"
