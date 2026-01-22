// Created by Crowbar 0.74

$modelname "infected/common_male_ceda_l4d1.mdl"

/* $model "Associates" "mokou_body.smd" {

	mouth 0 "mouth" "ValveBiped.Bip01_Head1" 0 1 0

	flexfile "common_male_ceda_l4d1_01.vta" 
	{
		defaultflex frame 0
		flex "chest_bigger" frame 1
		flex "mouth_a" frame 2
		flex "mouth_i" frame 3
		flex "mouth_u" frame 4
		flex "mouth_e" frame 5
		flex "mouth_o" frame 6
		flex "mouth_happy" frame 7
		flex "mouth_unhappy" frame 8
		flex "mouth_triangle" frame 9
		flex "mouth_smile" frame 10
		flex "mouth_surprise" frame 11
		flex "tongue_out" frame 12
		flex "face_bigger" frame 13
		flex "mouth_gasp" frame 14
		flex "mouth_sad" frame 15
		flex "mouth_smile2" frame 16
		flex "tongue_out2" frame 17
		flex "tongue_thick" frame 18
		flex "tongue_thin" frame 19
		flex "blink" frame 20
		flex "eye_closeR" frame 21
		flex "eye_happy" frame 22
		flex "eye_happyR" frame 23
		flex "eye_naughty" frame 24
		flex "eye_naughtyR" frame 25
		flex "eye_down" frame 26
		flex "eye_downR" frame 27
		flex "eye_sharp" frame 28
		flex "eye_taunt" frame 29
		flex "eye_bigger" frame 30
		flex "eye_nagomi" frame 31
		flex "eye_scared" frame 32
		flex "eye_star" frame 33
		flex "eye_love" frame 34
		flex "eye_tear" frame 35
		flex "eye_comicOblate" frame 36
		flex "eye_comicThin" frame 37
		flex "eye_reflectDown" frame 38
		flex "eye_reflect" frame 39
		flex "brow_seriousL" frame 40
		flex "brow_seriousR" frame 41
		flex "brow_happyL" frame 42
		flex "brow_happyR" frame 43
		flex "brow_angryL" frame 44
		flex "brow_angryR" frame 45
		flex "brow_sadL" frame 46
		flex "brow_sadR" frame 47
		flex "brow_sleepyL" frame 48
		flex "brow_sleepyR" frame 49
		flex "brow_up" frame 50
		flex "brow_upR" frame 51
		flex "brow_down" frame 52
		flex "brow_downR" frame 53
		flex "brow_front" frame 54
		flex "brow_frontR" frame 55
		flex "mouth_meow" frame 56
		flex "eye_comic" frame 57
		flex "eye_pupil" frame 58
		flex "unknown_1" frame 59
		flex "face_red" frame 60
		flex "face_red2" frame 61
		flex "face_shadow" frame 62
	}

	flexcontroller mouth_a range 0 1 "mouth_a"
	flexcontroller mouth_i range 0 1 "mouth_i"
	flexcontroller mouth_u range 0 1 "mouth_u"
	flexcontroller mouth_e range 0 1 "mouth_e"
	flexcontroller mouth_o range 0 1 "mouth_o"
	flexcontroller mouth_happy range 0 1 "mouth_happy"
	flexcontroller mouth_triangle range 0 1 "mouth_triangle"
	flexcontroller mouth_unhappy range 0 1 "mouth_unhappy"
	flexcontroller mouth_meow range 0 1 "mouth_meow"
	flexcontroller tongue_out range 0 1 "tongue_out"
	flexcontroller tongue_out2 range 0 1 "tongue_out2"
	flexcontroller mouth_gasp range 0 1 "mouth_gasp"
	flexcontroller face_bigger range 0 1 "face_bigger"
	flexcontroller mouth_smile range 0 1 "mouth_smile"
	flexcontroller mouth_sad range 0 1 "mouth_sad"
	flexcontroller tongue_thin range 0 1 "tongue_thin"
	flexcontroller tongue_thick range 0 1 "tongue_thick"
	flexcontroller eyelid range 0 1 "blink"
	flexcontroller eye_closeR range 0 1 "eye_closeR"
	flexcontroller eye_happy range 0 1 "eye_happy"
	flexcontroller eye_happyR range 0 1 "eye_happyR"
	flexcontroller eye_naughty range 0 1 "eye_naughty"
	flexcontroller eye_naughtyR range 0 1 "eye_naughtyR"
	flexcontroller eye_down range 0 1 "eye_down"
	flexcontroller eye_downR range 0 1 "eye_downR"
	flexcontroller eye_sharp range 0 1 "eye_sharp"
	flexcontroller eye_nagomi range 0 1 "eye_nagomi"
	flexcontroller eye_bigger range 0 1 "eye_bigger"
	flexcontroller eye_taunt range 0 1 "eye_taunt"
	flexcontroller eye_comic range 0 1 "eye_comic"
	flexcontroller eye_comicOblate range 0 1 "eye_comicOblate"
	flexcontroller eye_comicThin range 0 1 "eye_comicThin"
	flexcontroller eye_tear range 0 1 "eye_tear"
	flexcontroller eye_scared range 0 1 "eye_scared"
	flexcontroller eye_star range 0 1 "eye_star"
	flexcontroller eye_love range 0 1 "eye_love"
	flexcontroller eye_reflect range 0 1 "eye_reflect"
	flexcontroller eye_reflectDown range 0 1 "eye_reflectDown"
	flexcontroller eye_pupil range 0 1 "eye_pupil"
	flexcontroller brow_seriousL range 0 1 "brow_seriousL"
	flexcontroller brow_seriousR range 0 1 "brow_seriousR"
	flexcontroller brow_happyL range 0 1 "brow_happyL"
	flexcontroller brow_happyR range 0 1 "brow_happyR"
	flexcontroller brow_angryL range 0 1 "brow_angryL"
	flexcontroller brow_angryR range 0 1 "brow_angryR"
	flexcontroller brow_sadL range 0 1 "brow_sadL"
	flexcontroller brow_sadR range 0 1 "brow_sadR"
	flexcontroller brow_sleepyL range 0 1 "brow_sleepyL"
	flexcontroller brow_sleepyR range 0 1 "brow_sleepyR"
	flexcontroller brow_up range 0 1 "brow_up"
	flexcontroller brow_down range 0 1 "brow_down"
	flexcontroller brow_front range 0 1 "brow_front"
	flexcontroller face_red range 0 1 "face_red"
	flexcontroller face_red2 range 0 1 "face_red2"
	flexcontroller face_shadow range 0 1 "face_shadow"
	flexcontroller chest_bigger range 0 1 "chest_bigger"

	%mouth_a = mouth_a
	%mouth_i = mouth_i
	%mouth_u = mouth_u
	%mouth_e = mouth_e
	%mouth_o = mouth_o
	%mouth_happy = mouth_happy
	%mouth_triangle = mouth_triangle
	%mouth_unhappy = mouth_unhappy
	%mouth_meow = mouth_meow
	%tongue_out = tongue_out
	%tongue_out2 = tongue_out2
	%mouth_gasp = mouth_gasp
	%face_bigger = face_bigger
	%mouth_smile = mouth_smile
	%mouth_sad = mouth_sad
	%tongue_thin = tongue_thin
	%tongue_thick = tongue_thick
	%blink = blink
	%eye_closeR = eye_closeR
	%eye_happy = eye_happy
	%eye_happyR = eye_happyR
	%eye_naughty = eye_naughty
	%eye_naughtyR = eye_naughtyR
	%eye_down = eye_down
	%eye_downR = eye_downR
	%eye_sharp = eye_sharp
	%eye_nagomi = eye_nagomi
	%eye_bigger = eye_bigger
	%eye_taunt = eye_taunt
	%eye_comic = eye_comic
	%eye_comicOblate = eye_comicOblate
	%eye_comicThin = eye_comicThin
	%eye_tear = eye_tear
	%eye_scared = eye_scared
	%eye_star = eye_star
	%eye_love = eye_love
	%eye_reflect = eye_reflect
	%eye_reflectDown = eye_reflectDown
	%eye_pupil = eye_pupil
	%brow_seriousL = brow_seriousL
	%brow_seriousR = brow_seriousR
	%brow_happyL = brow_happyL
	%brow_happyR = brow_happyR
	%brow_angryL = brow_angryL
	%brow_angryR = brow_angryR
	%brow_sadL = brow_sadL
	%brow_sadR = brow_sadR
	%brow_sleepyL = brow_sleepyL
	%brow_sleepyR = brow_sleepyR
	%brow_up = brow_up
	%brow_down = brow_down
	%brow_front = brow_front
	%face_red = face_red
	%face_red2 = face_red2
	%face_shadow = face_shadow
	%chest_bigger = chest_bigger
} */
$bodygroup "mokou body"
{
	studio "mokou_body.smd"
}
$bodygroup "Hair"
{
	studio "mokou_hair.smd"
}
$bodygroup "Band"
{
	studio "mokou_band.smd"
	blank
}
$bodygroup "Bowknot Top"
{
	studio "mokou_bowknot_top.smd"
	blank
}
$bodygroup "Bowknot Bot"
{
	studio "mokou_bowknot_bot.smd"
	blank
}
/* $bodygroup "Hair"
{
	studio "mokou_hair_2.smd"
} */
$bodygroup "Legs"
{
	studio "mokou_legs.smd"
}
$bodygroup "Shoes"
{
	studio "mokou_shoes.smd"
	/* studio "mokou_foots.smd" */
}


$surfaceprop "flesh"

$contents "solid"

$illumposition 0.011 9.073 41.165

$ambientboost

$mostlyopaque

$cdmaterials "models\mokou\"

$attachment "eyes" "ValveBiped.Bip01_Head1" 2.04 -3.5 0 rotate 0 -80.1 -90
$attachment "mouth" "ValveBiped.Bip01_Head1" -0.3 -3.5 0 rotate 0 -80 -90
$attachment "chest" "ValveBiped.Bip01_Spine2" 5 4 0 rotate 0 90 90
$attachment "forward" "ValveBiped.Bip01_Head1" 0 0 0 rotate 0 -76 -90
$attachment "grenade" "ValveBiped.Bip01_Pelvis" -10.39 3.05 -1.06 rotate 17.67 -6.47 -80.91
$attachment "Head" "ValveBiped.Bip01_Head1" 0 0 0 rotate 0 0 0
$attachment "RArm" "ValveBiped.Bip01_R_UpperArm" 0 0 0 rotate 0 0 0
$attachment "LArm" "ValveBiped.Bip01_L_UpperArm" 0 0 0 rotate 0 0 0
$attachment "RLeg" "ValveBiped.Bip01_R_Thigh" 0 0 0 rotate 0 0 0
$attachment "LLeg" "ValveBiped.Bip01_L_Thigh" 0 0 0 rotate 0 0 0
$attachment "lfoot" "ValveBiped.Bip01_L_Calf" -3.09 -70.42 -5.56 rotate 16.55 0 0
$attachment "rfoot" "ValveBiped.Bip01_R_Calf" 16.55 0 0 rotate 3.09 -70.42 6.2
$attachment "anim_attachment_RH" "ValveBiped.Bip01_R_Hand" 2.43 -1.55 -0.19 rotate 4.36 0.17 -179.99
$attachment "anim_attachment_LH" "ValveBiped.Bip01_L_Hand" 2.43 -1.55 0.19 rotate 4.36 -179.83 0.01
$attachment "anim_attachment_head" "ValveBiped.Bip01_Head1" 0 0 0 rotate -90 -90 0

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 72

$hboxset "default"
$hbox 3 "ValveBiped.Bip01_Pelvis" -6 -4.5 -4.5 6 4.5 4.5
$hbox 6 "ValveBiped.Bip01_L_Thigh" -1 -3.4 -2.85 17 2.6 2.15
$hbox 6 "ValveBiped.Bip01_L_Calf" 0.5 -1.5 -2 15.5 2.5 2
$hbox 7 "ValveBiped.Bip01_R_Thigh" -1 -3.4 -2.25 17 2.6 2.75
$hbox 7 "ValveBiped.Bip01_R_Calf" 0.5 -1.5 -2 15.5 2.5 2
$hbox 3 "ValveBiped.Bip01_Spine1" -3.5 -2 -5 1.5 6 5
$hbox 2 "ValveBiped.Bip01_Spine2" -3 -2.25 -4.5 10 6.25 4.5
$hbox 1 "ValveBiped.Bip01_Head1" -1 -4.5 -4.3 9 4.5 3.7
$hbox 4 "ValveBiped.Bip01_L_UpperArm" -2 -1.9 -1.8 9 1.7 1.8
$hbox 4 "ValveBiped.Bip01_L_Forearm" -0.5 -1.5 -1.5 10.5 1.5 1.5
$hbox 4 "ValveBiped.Bip01_L_Hand" 1.06 -1.29 -2.15 5.56 0.41 1.05
$hbox 5 "ValveBiped.Bip01_R_UpperArm" -2 -1.9 -1.8 9 1.7 1.8
$hbox 5 "ValveBiped.Bip01_R_Forearm" -0.5 -1.5 -1.5 10.5 1.5 1.5
$hbox 5 "ValveBiped.Bip01_R_Hand" 1.06 -1.29 -2.15 5.56 0.41 1.05
$hbox 7 "ValveBiped.Bip01_R_Foot" -1.5 -1.5 -1.75 5.5 1.5 1.75
$hbox 6 "ValveBiped.Bip01_L_Foot" -1.5 -1.5 -1.75 5.5 1.5 1.75
$hbox 0 "ValveBiped.Bip01_L_Toe0" -0.5 -1.5 -1.5 2.5 1.5 1.5
$hbox 0 "ValveBiped.Bip01_R_Toe0" -0.5 -1.5 -1.5 2.5 1.5 1.5
$skipboneinbbox

$definebone "ValveBiped.Bip01_Pelvis" "" -0.010646 -0.740858 37.743862 0 0 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine" "ValveBiped.Bip01_Pelvis" 0.000004 1.778797 -1.570904 -0.602866 90.000897 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine1" "ValveBiped.Bip01_Spine" 3.567223 0.000007 0.000055 -0.001031 -6.451906 0.000115 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine2" "ValveBiped.Bip01_Spine1" 3.363216 -0.000013 -0.00001 0.000172 -0.724447 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine4" "ValveBiped.Bip01_Spine2" 7.610756 0.069372 -0.000002 0.000115 8.92737 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Neck1" "ValveBiped.Bip01_Spine4" 2.34938 0.024892 0.000004 -0.000229 13.009353 179.999841 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Head1" "ValveBiped.Bip01_Neck1" 3.207985 0.00001 0.000007 0.000229 6.359769 0 0 0 0 0 0 0
$definebone "ValveBiped.forward" "ValveBiped.Bip01_Head1" -0.000004 -0.000004 0 -0.000057 -75.838077 -89.999641 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Eye" "ValveBiped.Bip01_Head1" 2.939034 -0.168531 1.371935 -89.03879 9.997829 90.006915 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Eye" "ValveBiped.Bip01_Head1" 2.947495 -0.167045 -1.32462 -86.39509 -169.996633 -90.000187 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Clavicle" "ValveBiped.Bip01_Spine4" 1.88126 0.843594 1.898573 -76.440226 166.165361 93.870459 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_UpperArm" "ValveBiped.Bip01_L_Clavicle" 2.970787 0.045891 0.084168 5.526762 -29.605766 -82.601624 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_UpperArm" 8.699282 0 0.000008 -2.626752 -2.274788 0.16981 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Ulna" "ValveBiped.Bip01_L_Forearm" 3.891232 0.000032 -0.000008 -0.00006 0.000286 -1.769637 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Wrist" "ValveBiped.Bip01_L_Forearm" 7.782441 0.000062 -0.000004 -0.000051 0.000401 -3.29783 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Hand" "ValveBiped.Bip01_L_Forearm" 7.78244 0.000061 0.000004 -2.211454 2.080009 86.253412 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger3" "ValveBiped.Bip01_L_Hand" 2.959185 0.161552 -0.430215 -2.573557 -14.783514 3.947391 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger31" "ValveBiped.Bip01_L_Finger3" 1.164919 -0.049374 -0.072165 3.305505 7.195539 2.441658 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger32" "ValveBiped.Bip01_L_Finger31" 0.679466 -0.000015 -0.000004 -2.298023 -11.610196 8.962323 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger2" "ValveBiped.Bip01_L_Hand" 3.009077 0.080181 0.136267 -2.998518 -9.824052 8.155195 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger21" "ValveBiped.Bip01_L_Finger2" 1.365345 -0.048332 -0.068482 2.246798 3.074907 -2.069469 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger22" "ValveBiped.Bip01_L_Finger21" 0.755196 0.000008 -0.000005 -0.325211 -5.672053 -0.071508 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger1" "ValveBiped.Bip01_L_Hand" 3.020005 -0.040039 0.648113 -8.549338 -5.874361 17.35368 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger11" "ValveBiped.Bip01_L_Finger1" 1.066566 -0.051331 -0.053617 4.855649 -8.638197 -1.190842 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger12" "ValveBiped.Bip01_L_Finger11" 0.824848 0.022255 -0.030329 1.158581 4.255754 1.317565 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger4" "ValveBiped.Bip01_L_Hand" 2.759466 -0.116608 -1.10751 -3.031867 -6.01703 12.444527 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger41" "ValveBiped.Bip01_L_Finger4" 0.834291 -0.042744 -0.01899 5.779312 0.931526 -22.924562 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger42" "ValveBiped.Bip01_L_Finger41" 0.481278 -0.000004 -0.000003 -0.735276 -3.248725 11.126096 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger0" "ValveBiped.Bip01_L_Hand" 1.003924 -0.31842 0.595913 -47.328372 -30.245362 -4.283488 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger01" "ValveBiped.Bip01_L_Finger0" 0.985941 0.000015 -0.000008 2.505832 5.982934 -9.684405 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger02" "ValveBiped.Bip01_L_Finger01" 0.778557 0.000011 -0.000008 6.207652 -0.850055 -18.319059 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Shoulder" "ValveBiped.Bip01_L_UpperArm" 1.039955 0.001345 0.056854 -3.128649 0.073853 -9.008499 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Elbow" "ValveBiped.Bip01_L_UpperArm" 8.699303 0 0.000004 -3.112932 -5.667317 0.313338 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Trapezius" "ValveBiped.Bip01_L_Clavicle" 2.308937 0.045898 0.084166 -0.000115 0.000117 -0.000056 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Clavicle" "ValveBiped.Bip01_Spine4" 1.881268 0.8436 -1.924851 76.440287 166.163189 -97.983271 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_UpperArm" "ValveBiped.Bip01_R_Clavicle" 2.846478 0.005608 -0.083893 -3.334327 -26.677609 85.98853 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_UpperArm" 8.662304 -0.007339 0.395618 -0.496482 -2.391009 -0.040339 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped.Bip01_R_Forearm" 7.708399 0.000072 0.000034 2.236112 1.709878 -86.05843 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger2" "ValveBiped.Bip01_R_Hand" 2.961793 0.036312 -0.067124 3.229245 -6.880903 -5.361218 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger21" "ValveBiped.Bip01_R_Finger2" 1.241522 0.01236 -0.044787 0.107026 -16.749617 4.844986 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger22" "ValveBiped.Bip01_R_Finger21" 0.922279 0.038929 0.055068 -0.476933 14.465383 -0.449655 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger1" "ValveBiped.Bip01_R_Hand" 2.97055 -0.095581 -0.592683 9.463998 -6.848479 -17.170566 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger11" "ValveBiped.Bip01_R_Finger1" 1.246892 -0.016453 0.060774 -3.724506 -8.902014 0.073035 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger12" "ValveBiped.Bip01_R_Finger11" 0.727602 -0.000023 -0.00001 -5.769963 6.446024 2.365101 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger3" "ValveBiped.Bip01_R_Hand" 2.912333 0.127556 0.651073 4.600848 -10.262384 -10.043372 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger31" "ValveBiped.Bip01_R_Finger3" 1.127991 -0.00153 -0.000503 -2.621166 -4.270149 -0.253653 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger32" "ValveBiped.Bip01_R_Finger31" 0.724867 -0.000015 0.000003 0.942631 -1.034423 -4.678267 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger4" "ValveBiped.Bip01_R_Hand" 2.79882 0.008007 1.13401 -1.985644 -14.255441 -8.302498 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger41" "ValveBiped.Bip01_R_Finger4" 0.709028 -0.019749 0.021117 7.710461 3.155374 -15.765053 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger42" "ValveBiped.Bip01_R_Finger41" 0.581722 0.006519 -0.016452 -7.519149 -3.919157 -0.324659 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger0" "ValveBiped.Bip01_R_Hand" 1.034818 -0.392479 -0.639815 43.5276 -28.823733 103.382392 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger01" "ValveBiped.Bip01_R_Finger0" 1.017588 0.000011 0.000008 3.175327 5.13537 13.01496 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger02" "ValveBiped.Bip01_R_Finger01" 0.804546 0.000008 -0.000015 4.232263 -10.23129 1.169855 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Wrist" "ValveBiped.Bip01_R_Forearm" 7.708399 0.000072 0.000034 -0.000017 0.000288 3.734423 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Ulna" "ValveBiped.Bip01_R_Forearm" 3.854197 0.000038 0.000027 -0.000084 0.000688 2.001512 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Shoulder" "ValveBiped.Bip01_R_UpperArm" 1.031609 0.000007 0.000019 0.000044 0.000287 0.000226 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Elbow" "ValveBiped.Bip01_R_UpperArm" 8.662304 -0.007339 0.395618 0.000044 -5.732728 -0.000517 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Trapezius" "ValveBiped.Bip01_R_Clavicle" 2.184628 0.0056 -0.083895 -0.000172 0.000342 0.000114 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Thigh" "ValveBiped.Bip01_Pelvis" 3.70357 -0.000004 -0.000003 1.780753 -92.308374 -89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Calf" "ValveBiped.Bip01_L_Thigh" 15.711946 -0.008476 0.011104 -0.991618 2.960187 -0.000057 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Foot" "ValveBiped.Bip01_L_Calf" 19.191345 -0.102982 0.046527 -1.737609 -70.474268 1.717842 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Thigh" "ValveBiped.Bip01_Pelvis" -3.703569 0.000008 0.000006 1.781956 -87.560498 -90.02748 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Calf" "ValveBiped.Bip01_R_Thigh" 15.674868 -0.008654 -0.011853 1.02697 2.959384 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Foot" "ValveBiped.Bip01_R_Calf" 19.147047 -0.103892 -0.050088 2.379952 -70.651607 -0.934723 0 0 0 0 0 0
$definebone "j_hair_b_01" "ValveBiped.Bip01_Head1" 7.83881 6.460746 -0.0106 0.000229 146.492723 -0.000172 0 0 0 0 0 0
$definebone "j_hair_b_011" "j_hair_b_01" 1.795998 0 0 24.068818 22.33734 1.948859 0 0 0 0 0 0
$definebone "j_hair_b_012" "j_hair_b_011" 12.693279 0.00001 -0.000004 0.000007 11.729306 0.000002 0 0 0 0 0 0
$definebone "j_hair_b_013" "j_hair_b_012" 14.397278 -0.000021 -0.000004 0.000014 -0.204835 0.000004 0 0 0 0 0 0
$definebone "j_hair_b_014" "j_hair_b_013" 14.182587 0 -0.000008 0.000007 -0.131322 0.000003 0 0 0 0 0 0
$definebone "j_hair_b_015" "j_hair_b_014" 11.238811 -0.000006 -0.000002 0.000007 4.272945 0.000009 0 0 0 0 0 0
$definebone "j_hair_b_021" "j_hair_b_01" 1.796021 0.000008 0 16.114725 19.789099 0.748512 0 0 0 0 0 0
$definebone "j_hair_b_022" "j_hair_b_021" 12.495441 0.000008 -0.000001 0.000002 12.503264 -0.000004 0 0 0 0 0 0
$definebone "j_hair_b_023" "j_hair_b_022" 14.264744 0.000004 0.000002 -0.000007 -0.860628 -0.000005 0 0 0 0 0 0
$definebone "j_hair_b_024" "j_hair_b_023" 14.315907 -0.00001 0.000003 -0.000005 0.482903 -0.000005 0 0 0 0 0 0
$definebone "j_hair_b_025" "j_hair_b_024" 10.998483 0 -0.000001 0 3.889596 -0.000007 0 0 0 0 0 0
$definebone "j_hair_b_041" "j_hair_b_01" 1.796005 -0.000011 0 0 19.545187 -0.000057 0 0 0 0 0 0
$definebone "j_hair_b_042" "j_hair_b_041" 12.211094 0 0 0 7.751028 0 0 0 0 0 0 0
$definebone "j_hair_b_043" "j_hair_b_042" 14.351528 0 0 0 3.537557 0 0 0 0 0 0 0
$definebone "j_hair_b_044" "j_hair_b_043" 14.240404 0 0 0 -0.064457 0 0 0 0 0 0 0
$definebone "j_hair_b_045" "j_hair_b_044" 10.626455 0.000002 0 0 -0.873072 0 0 0 0 0 0 0
$definebone "j_hair_b_051" "j_hair_b_01" 1.796021 0.000008 0 -8.212892 18.813637 -0.186154 0 0 0 0 0 0
$definebone "j_hair_b_052" "j_hair_b_051" 12.44836 0.000011 0 -0.000001 10.423242 0.000001 0 0 0 0 0 0
$definebone "j_hair_b_053" "j_hair_b_052" 14.022095 0 0.000002 0.000002 1.105115 0.000001 0 0 0 0 0 0
$definebone "j_hair_b_054" "j_hair_b_053" 13.727724 -0.000004 -0.000001 0.000003 1.007367 0.000001 0 0 0 0 0 0
$definebone "j_hair_b_055" "j_hair_b_054" 11.751338 0.000006 -0.000004 0.000003 1.658307 0.000002 0 0 0 0 0 0
$definebone "j_hair_b_061" "j_hair_b_01" 1.796005 -0.000011 0 -16.50571 20.361825 -0.78839 0 0 0 0 0 0
$definebone "j_hair_b_062" "j_hair_b_061" 12.201801 -0.000004 -0.000006 -0.000002 11.496794 -0.000001 0 0 0 0 0 0
$definebone "j_hair_b_063" "j_hair_b_062" 13.727722 -0.000004 0.000002 0 -1.540575 -0.000001 0 0 0 0 0 0
$definebone "j_hair_b_064" "j_hair_b_063" 14.05024 -0.000006 -0.000002 0.000002 3.9247 0 0 0 0 0 0 0
$definebone "j_hair_b_065" "j_hair_b_064" 11.467726 -0.000076 -0.000004 0 0.041193 0 0 0 0 0 0 0
$definebone "j_hair_b_071" "j_hair_b_01" 1.796005 -0.000011 0 -23.680177 22.149059 -1.924451 0 0 0 0 0 0
$definebone "j_hair_b_072" "j_hair_b_071" 12.348488 0.00001 -0.000004 -0.000003 12.398058 0.000004 0 0 0 0 0 0
$definebone "j_hair_b_073" "j_hair_b_072" 13.917492 0.000004 -0.000006 -0.000002 -1.556955 0.000001 0 0 0 0 0 0
$definebone "j_hair_b_074" "j_hair_b_073" 13.326015 0 -0.000002 -0.000002 1.110795 0.000001 0 0 0 0 0 0
$definebone "j_hair_b_075" "j_hair_b_074" 12.015517 -0.000031 0.000004 0 1.670635 -0.000001 0 0 0 0 0 0
$definebone "j_hair_b_031" "j_hair_b_01" 1.796024 0.000004 0 7.707659 18.812042 0.174408 0 0 0 0 0 0
$definebone "j_hair_b_032" "j_hair_b_031" 12.448383 0.000008 0 0.000003 10.749091 -0.000001 0 0 0 0 0 0
$definebone "j_hair_b_033" "j_hair_b_032" 13.88773 0.000004 -0.000001 0.000002 1.295628 -0.000001 0 0 0 0 0 0
$definebone "j_hair_b_034" "j_hair_b_033" 14.264746 0.000006 -0.000001 0.000003 -0.534343 -0.000003 0 0 0 0 0 0
$definebone "j_hair_b_035" "j_hair_b_034" 11.346076 0.000008 0 0.000003 3.409785 -0.000003 0 0 0 0 0 0
$definebone "j_hair_f_01" "ValveBiped.Bip01_Head1" 7.951519 -3.887465 -0.205244 3.140408 -175.703912 -90.258423 0 0 0 0 0 0
$definebone "j_hair_f_02" "j_hair_f_01" 2.581451 0.000001 -0.000004 0.000003 -1.360775 -0.000057 0 0 0 0 0 0
$definebone "j_hair_fr_01" "ValveBiped.Bip01_Head1" 7.462284 -3.21774 2.206808 -2.063491 -170.996545 -90.000016 0 0 0 0 0 0
$definebone "j_hair_fl_01" "ValveBiped.Bip01_Head1" 8.022854 -3.128915 -2.19164 -1.331898 -170.996545 -89.999982 0 0 0 0 0 0
$definebone "j_hair_r_01" "ValveBiped.Bip01_Head1" 4.493595 -2.010132 4.28777 16.733957 -170.996545 -90.000078 0 0 0 0 0 0
$definebone "j_hair_l_01" "ValveBiped.Bip01_Head1" 5.194363 -1.899093 -4.650998 -14.580156 -170.996545 -90.000078 0 0 0 0 0 0
$definebone "p_wing_c_01" "ValveBiped.Bip01_Spine4" -1.049805 -2.841841 0.01065 -0.000115 -4.089658 179.999786 0 0 0 0 0 0
$definebone "p_wing_r_01" "p_wing_c_01" 1.969006 -0.000021 0 -83.219086 -1.737781 90.002099 0 0 0 0 0 0
$definebone "p_wing_l_01" "p_wing_c_01" 1.969017 0 0 79.550844 -1.734515 90.001307 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Ankle" "ValveBiped.Bip01_L_Calf" 18.014826 -0.155478 0.043366 0 0.000519 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Knee" "ValveBiped.Bip01_L_Thigh" 15.711946 -0.008476 0.011104 0 1.447291 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Toe0" "ValveBiped.Bip01_R_Foot" 5.992654 -0.000032 0.000001 -0.354489 -28.588201 -4.506371 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Ankle" "ValveBiped.Bip01_R_Calf" 17.973303 -0.156878 -0.046989 0 0.001032 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Knee" "ValveBiped.Bip01_R_Thigh" 15.674856 -0.008654 -0.011852 0 1.446948 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Toe0" "ValveBiped.Bip01_L_Foot" 5.947886 -0.000037 -0.000001 0.053457 -28.678779 -0.638734 0 0 0 0 0 0

$bonemerge "ValveBiped.Bip01_Pelvis"
$bonemerge "ValveBiped.Bip01_Spine"
$bonemerge "ValveBiped.Bip01_Spine1"
$bonemerge "ValveBiped.Bip01_Spine2"
$bonemerge "ValveBiped.Bip01_Spine4"
$bonemerge "ValveBiped.Bip01_R_Clavicle"
$bonemerge "ValveBiped.Bip01_R_UpperArm"
$bonemerge "ValveBiped.Bip01_R_Forearm"
$bonemerge "ValveBiped.Bip01_R_Hand"

$jigglebone "j_hair_b_01"
{
	is_flexible
	{
		length 20
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -10 3
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 10
	}
}
$jigglebone "j_hair_b_011"
{
	is_flexible
	{
		length 20
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -10 3
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 10
	}
}
$jigglebone "j_hair_b_012"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -19.999999 3
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "j_hair_b_013"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -19.999999 3
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "j_hair_b_014"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -19.999999 3
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "j_hair_b_015"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -19.999999 3
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "j_hair_b_021"
{
	is_flexible
	{
		length 20
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -10 3
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 10
	}
}
$jigglebone "j_hair_b_022"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -19.999999 3
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "j_hair_b_023"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -19.999999 3
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "j_hair_b_024"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -19.999999 3
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "j_hair_b_025"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -19.999999 3
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "j_hair_b_041"
{
	is_flexible
	{
		length 20
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -10 3
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 10
	}
}
$jigglebone "j_hair_b_042"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -19.999999 3
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "j_hair_b_043"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -19.999999 3
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "j_hair_b_044"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -19.999999 3
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "j_hair_b_045"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -19.999999 3
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "j_hair_b_051"
{
	is_flexible
	{
		length 20
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -10 3
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 10
	}
}
$jigglebone "j_hair_b_052"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -19.999999 3
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "j_hair_b_053"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -19.999999 3
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "j_hair_b_054"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -19.999999 3
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "j_hair_b_055"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -19.999999 3
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "j_hair_b_061"
{
	is_flexible
	{
		length 20
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -10 3
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 10
	}
}
$jigglebone "j_hair_b_062"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -19.999999 3
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "j_hair_b_063"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -19.999999 3
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "j_hair_b_064"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -19.999999 3
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "j_hair_b_065"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -19.999999 3
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "j_hair_b_071"
{
	is_flexible
	{
		length 20
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -10 3
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 10
	}
}
$jigglebone "j_hair_b_072"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -19.999999 3
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "j_hair_b_073"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -19.999999 3
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "j_hair_b_074"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -19.999999 3
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "j_hair_b_075"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -19.999999 3
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "j_hair_b_031"
{
	is_flexible
	{
		length 20
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -10 3
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 10
	}
}
$jigglebone "j_hair_b_032"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -19.999999 3
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "j_hair_b_033"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -19.999999 3
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "j_hair_b_034"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -19.999999 3
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "j_hair_b_035"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -19.999999 3
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "j_hair_f_01"
{
	is_flexible
	{
		length 20
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -5 19.999999
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "j_hair_f_02"
{
	is_flexible
	{
		length 20
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -5 19.999999
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "j_hair_fr_01"
{
	is_flexible
	{
		length 20
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -5 19.999999
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "j_hair_fl_01"
{
	is_flexible
	{
		length 20
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -5 19.999999
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "j_hair_r_01"
{
	is_flexible
	{
		length 20
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -5 19.999999
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "j_hair_l_01"
{
	is_flexible
	{
		length 20
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -5 19.999999
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "p_wing_r_01"
{
	is_flexible
	{
		length 20
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -5 19.999999
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "p_wing_l_01"
{
	is_flexible
	{
		length 20
		tip_mass 0
		pitch_stiffness 80
		pitch_damping 8
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint -5 19.999999
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}

$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0

$ikautoplaylock "rhand" 0 0
$ikautoplaylock "lhand" 0 0
$ikautoplaylock "rfoot" 0.5 0.1
$ikautoplaylock "lfoot" 0.5 0.1

$weightlist "weights_common_male_aim_matrix_run" {
	 "ValveBiped.Bip01_Pelvis" 0
	 "ValveBiped.Bip01_Spine" 0
	 "ValveBiped.Bip01_Spine1" 0
	 "ValveBiped.Bip01_Spine2" 0
	 "ValveBiped.Bip01_Spine4" 0
	 "ValveBiped.Bip01_Neck1" 0
	 "ValveBiped.Bip01_Head1" 0
	 "ValveBiped.forward" 0
	 "ValveBiped.Bip01_R_Eye" 0
	 "ValveBiped.Bip01_L_Eye" 0
	 "ValveBiped.Bip01_L_Clavicle" 0
	 "ValveBiped.Bip01_L_UpperArm" 0
	 "ValveBiped.Bip01_L_Forearm" 0
	 "ValveBiped.Bip01_L_Ulna" 0
	 "ValveBiped.Bip01_L_Wrist" 0
	 "ValveBiped.Bip01_L_Hand" 0
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
	 "ValveBiped.Bip01_L_Shoulder" 0
	 "ValveBiped.Bip01_L_Elbow" 0
	 "ValveBiped.Bip01_L_Trapezius" 0
	 "ValveBiped.Bip01_R_Clavicle" 0
	 "ValveBiped.Bip01_R_UpperArm" 0
	 "ValveBiped.Bip01_R_Forearm" 0
	 "ValveBiped.Bip01_R_Hand" 0
	 "ValveBiped.Bip01_R_Finger2" 0
	 "ValveBiped.Bip01_R_Finger21" 0
	 "ValveBiped.Bip01_R_Finger22" 0
	 "ValveBiped.Bip01_R_Finger1" 0
	 "ValveBiped.Bip01_R_Finger11" 0
	 "ValveBiped.Bip01_R_Finger12" 0
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
	 "ValveBiped.Bip01_R_Shoulder" 0
	 "ValveBiped.Bip01_R_Elbow" 0
	 "ValveBiped.Bip01_R_Trapezius" 0
	 "ValveBiped.Bip01_L_Thigh" 0
	 "ValveBiped.Bip01_L_Calf" 0
	 "ValveBiped.Bip01_L_Foot" 0
	 "ValveBiped.Bip01_R_Thigh" 0
	 "ValveBiped.Bip01_R_Calf" 0
	 "ValveBiped.Bip01_R_Foot" 0
	 "j_hair_b_01" 0
	 "j_hair_b_011" 0
	 "j_hair_b_012" 0
	 "j_hair_b_013" 0
	 "j_hair_b_014" 0
	 "j_hair_b_015" 0
	 "j_hair_b_021" 0
	 "j_hair_b_022" 0
	 "j_hair_b_023" 0
	 "j_hair_b_024" 0
	 "j_hair_b_025" 0
	 "j_hair_b_041" 0
	 "j_hair_b_042" 0
	 "j_hair_b_043" 0
	 "j_hair_b_044" 0
	 "j_hair_b_045" 0
	 "j_hair_b_051" 0
	 "j_hair_b_052" 0
	 "j_hair_b_053" 0
	 "j_hair_b_054" 0
	 "j_hair_b_055" 0
	 "j_hair_b_061" 0
	 "j_hair_b_062" 0
	 "j_hair_b_063" 0
	 "j_hair_b_064" 0
	 "j_hair_b_065" 0
	 "j_hair_b_071" 0
	 "j_hair_b_072" 0
	 "j_hair_b_073" 0
	 "j_hair_b_074" 0
	 "j_hair_b_075" 0
	 "j_hair_b_031" 0
	 "j_hair_b_032" 0
	 "j_hair_b_033" 0
	 "j_hair_b_034" 0
	 "j_hair_b_035" 0
	 "j_hair_f_01" 0
	 "j_hair_f_02" 0
	 "j_hair_fr_01" 0
	 "j_hair_fl_01" 0
	 "j_hair_r_01" 0
	 "j_hair_l_01" 0
	 "p_wing_c_01" 0
	 "p_wing_r_01" 0
	 "p_wing_l_01" 0
	 "ValveBiped.Bip01_L_Ankle" 0
	 "ValveBiped.Bip01_L_Knee" 0
	 "ValveBiped.Bip01_R_Toe0" 0
	 "ValveBiped.Bip01_R_Ankle" 0
	 "ValveBiped.Bip01_R_Knee" 0
	 "ValveBiped.Bip01_L_Toe0" 0
}

// $animation "a_proportions_corrective_animation" "common_male_ceda_l4d1_anims\a_proportions_corrective_animation.smd" {
// }

/* $animation "a_proportions_corrective_animation" "common_male_ceda_l4d1_anims\a_proportions_corrective_animation.smd" {
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 3
}

$animation "a_proportions" "common_male_ceda_l4d1_anims\a_proportions.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_proportions_corrective_animation" 0
} */

$sequence "ragdoll" {
	"common_male_ceda_l4d1_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 3
}

$sequence "ragdoll_01" {
	"common_male_ceda_l4d1_anims\ragdoll_01.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 3
}

$sequence "ragdoll_02" {
	"common_male_ceda_l4d1_anims\ragdoll_02.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 3
}

$sequence "ragdoll_03" {
	"common_male_ceda_l4d1_anims\ragdoll_03.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 3
}

$sequence "ragdoll_04" {
	"common_male_ceda_l4d1_anims\ragdoll_04.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 3
}

$sequence "ragdoll_05" {
	"common_male_ceda_l4d1_anims\ragdoll_05.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 3
}

$sequence "ragdoll_06" {
	"common_male_ceda_l4d1_anims\ragdoll_06.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 3
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
	"common_male_ceda_l4d1_anims\reference.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 3
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

/* $collisionjoints "common_male_ceda_l4d1_physics.smd"
{
	$mass 40
	$inertia 10
	$damping 0.05
	$rotdamping 0.01
	$rootbone " "


	$jointconstrain "ValveBiped.Bip01_R_Thigh" x limit -25 25 0
	$jointconstrain "ValveBiped.Bip01_R_Thigh" y limit -10 15 0
	$jointconstrain "ValveBiped.Bip01_R_Thigh" z limit -55 25 0

	$jointconstrain "ValveBiped.Bip01_R_Calf" x limit -10 10 0
	$jointconstrain "ValveBiped.Bip01_R_Calf" y limit -5 5 0
	$jointconstrain "ValveBiped.Bip01_R_Calf" z limit 0 120 0

	$jointconstrain "ValveBiped.Bip01_L_Thigh" x limit -25 25 0
	$jointconstrain "ValveBiped.Bip01_L_Thigh" y limit -15 10 0
	$jointconstrain "ValveBiped.Bip01_L_Thigh" z limit -55 25 0

	$jointconstrain "ValveBiped.Bip01_L_Calf" x limit -10 10 0
	$jointconstrain "ValveBiped.Bip01_L_Calf" y limit -5 5 0
	$jointconstrain "ValveBiped.Bip01_L_Calf" z limit 0 120 0

	$jointconstrain "ValveBiped.Bip01_L_Foot" x limit -10 10 0
	$jointconstrain "ValveBiped.Bip01_L_Foot" y limit -20 20 0
	$jointconstrain "ValveBiped.Bip01_L_Foot" z limit -20 25 0

	$jointconstrain "ValveBiped.Bip01_Spine2" x limit -15 15 0
	$jointconstrain "ValveBiped.Bip01_Spine2" y limit -20 20 0
	$jointconstrain "ValveBiped.Bip01_Spine2" z limit -25 30 0

	$jointconstrain "ValveBiped.Bip01_R_UpperArm" x limit -15 20 0
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" y limit -40 40 0
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" z limit -122 50 0

	$jointconstrain "ValveBiped.Bip01_R_Forearm" x limit -40 15 0
	$jointconstrain "ValveBiped.Bip01_R_Forearm" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Forearm" z limit -120 10 0

	$jointconstrain "ValveBiped.Bip01_L_UpperArm" x limit -15 20 0
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" y limit -40 40 0
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" z limit -122 50 0

	$jointconstrain "ValveBiped.Bip01_L_Forearm" x limit -40 15 0
	$jointconstrain "ValveBiped.Bip01_L_Forearm" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Forearm" z limit -120 10 0

	$jointconstrain "ValveBiped.Bip01_L_Hand" x limit -25 25 0
	$jointconstrain "ValveBiped.Bip01_L_Hand" y limit -35 35 0
	$jointconstrain "ValveBiped.Bip01_L_Hand" z limit -50 50 0

	$jointconstrain "ValveBiped.Bip01_Head1" x limit -61 61 0
	$jointconstrain "ValveBiped.Bip01_Head1" y limit -44 44 0
	$jointconstrain "ValveBiped.Bip01_Head1" z limit -32 50 0

	$jointconstrain "ValveBiped.Bip01_R_Hand" x limit -25 25 0
	$jointconstrain "ValveBiped.Bip01_R_Hand" y limit -35 35 0
	$jointconstrain "ValveBiped.Bip01_R_Hand" z limit -50 50 0

	$jointconstrain "ValveBiped.Bip01_R_Foot" x limit -10 10 0
	$jointconstrain "ValveBiped.Bip01_R_Foot" y limit -20 20 0
	$jointconstrain "ValveBiped.Bip01_R_Foot" z limit -20 25 0
} */
