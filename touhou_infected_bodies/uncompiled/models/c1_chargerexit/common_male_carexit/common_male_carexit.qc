// Created by Crowbar 0.74

$modelname "c1_chargerexit/common_male_carexit.mdl"

$model "Associates" "mokou_body.smd" {

	mouth 0 "mouth" "ValveBiped.Bip01_Head1" 0 1 0

	flexfile "common_male_carexit.vta" 
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
$bodygroup "Hair"
{
	studio "mokou_hair_2.smd"
}
$bodygroup "Legs"
{
	studio "mokou_legs.smd"
}
$bodygroup "Shoes"
{
	studio "mokou_shoes.smd"
	studio "mokou_foots.smd"
}


$surfaceprop "flesh"

$contents "solid"

$illumposition 0.011 9.073 41.165

$ambientboost

$mostlyopaque

$cdmaterials "models\meowmeow\deadbodies\mokou\"

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

$bonesaveframe "Bip01_Pelvis" position
$bonesaveframe "Bip01_R_Calf" position
$bonesaveframe "Bip01_Spine" position
$bonesaveframe "Bip01_Spine1" position
$bonesaveframe "Bip01_Spine4" position

$sectionframes 30 460

$sequence "idle" {
	"common_male_carexit_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "escape_a1" {
	"common_male_carexit_anims\escape_a1.smd"
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}

$sequence "escape_a2" {
	"common_male_carexit_anims\escape_a2.smd"
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}

$sequence "escape_a3" {
	"common_male_carexit_anims\escape_a3.smd"
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}

$sequence "escape_b1" {
	"common_male_carexit_anims\escape_b1.smd"
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}

$sequence "escape_b2" {
	"common_male_carexit_anims\escape_b2.smd"
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}

$sequence "escape_b3" {
	"common_male_carexit_anims\escape_b3.smd"
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}
