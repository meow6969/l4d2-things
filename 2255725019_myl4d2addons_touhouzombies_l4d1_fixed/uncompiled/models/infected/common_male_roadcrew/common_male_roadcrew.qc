// Created by Crowbar 0.74

$modelname "infected/common_male_roadcrew.mdl"

/* $model "Associates" "orin_emotions.smd" {

	mouth 0 "mouth" "ValveBiped.Bip01_Head1" 0 1 0

	flexfile "common_male_roadcrew_01.vta" 
	{
		defaultflex frame 0
		flex "mouth_a" frame 1
		flex "mouth_i" frame 2
		flex "mouth_u" frame 3
		flex "mouth_e" frame 4
		flex "mouth_o" frame 5
		flex "mouth_wa" frame 6
		flex "mouth_roar" frame 7
		flex "mouth_triangle" frame 8
		flex "mouth_meow" frame 9
		flex "mouth_meow_a" frame 10
		flex "mouth_meow_i" frame 11
		flex "mouth_meow_u" frame 12
		flex "mouth_meow_e" frame 13
		flex "mouth_meow_o" frame 14
		flex "mouth_meow_wa" frame 15
		flex "mouth_unhappy" frame 16
		flex "mouth_titter" frame 17
		flex "mouth_smile" frame 18
		flex "mouth_smileL" frame 19
		flex "mouth_smileR" frame 20
		flex "mouth_grin" frame 21
		flex "mouth_licking" frame 22
		flex "mouth_licking2" frame 23
		flex "mouth_licking3" frame 24
		flex "mouth_wider" frame 25
		flex "teeth_noUpper" frame 26
		flex "teeth_noLower" frame 27
		flex "mouth_puku" frame 28
		flex "face_melon" frame 29
		flex "mouth_pointed" frame 30
		flex "mouth_laugh" frame 31
		flex "mouth_hen" frame 32
		flex "teeth_fang" frame 33
		flex "teeth_no" frame 34
		flex "tongue_thin" frame 35
		flex "tongue_thick" frame 36
		flex "blink" frame 37
		flex "eye_happy" frame 38
		flex "eye_happy2" frame 39
		flex "eye_closeL" frame 40
		flex "eye_closeR" frame 41
		flex "eye_happyL" frame 42
		flex "eye_happyR" frame 43
		flex "eye_happy2L" frame 44
		flex "eye_happy2R" frame 45
		flex "eye_naughty" frame 46
		flex "eye_naughtyL" frame 47
		flex "eye_naughtyR" frame 48
		flex "eye_nagomi" frame 49
		flex "eye_surprise" frame 50
		flex "eyelid_down" frame 51
		flex "eyelid_up" frame 52
		flex "eye_spread" frame 53
		flex "eye_taunt" frame 54
		flex "eye_tauntL" frame 55
		flex "eye_tauntR" frame 56
		flex "eye_sharp" frame 57
		flex "eye_comicwhite" frame 58
		flex "eye_comicangry" frame 59
		flex "eye_comiccat" frame 60
		flex "brow_up" frame 61
		flex "brow_down" frame 62
		flex "brow_front" frame 63
		flex "brow_sleepy" frame 64
		flex "brow_curved" frame 65
		flex "brow_angry" frame 66
		flex "brow_serious" frame 67
		flex "brow_sad" frame 68
		flex "brow_doubt" frame 69
		flex "brow_parallel" frame 70
		flex "brow_thick" frame 71
		flex "ear_nohuman" frame 72
		flex "eye_scared" frame 73
		flex "eye_cat" frame 74
		flex "eye_unknown2" frame 75
		flex "eye_left" frame 76
		flex "eye_right" frame 77
		flex "eye_up" frame 78
		flex "eye_down" frame 79
		flex "eye_reflect_low" frame 80
		flex "eye_no_reflect" frame 81
		flex "eye_unknown" frame 82
		flex "eye_star" frame 83
		flex "face_shadow" frame 84
		flex "face_shadow2" frame 85
		flex "face_red" frame 86
		flex "face_red2" frame 87
		flex "face_tear" frame 88
		flex "face_tear2" frame 89
		flex "face_tear2L" frame 90
		flex "face_tear2R" frame 91
		flex "face_tearmark" frame 92
		flex "face_glasses" frame 93
	}

	flexcontroller mouth_a range 0 1 "mouth_a"
	flexcontroller mouth_i range 0 1 "mouth_i"
	flexcontroller mouth_u range 0 1 "mouth_u"
	flexcontroller mouth_e range 0 1 "mouth_e"
	flexcontroller mouth_o range 0 1 "mouth_o"
	flexcontroller mouth_wa range 0 1 "mouth_wa"
	flexcontroller mouth_roar range 0 1 "mouth_roar"
	flexcontroller mouth_triangle range 0 1 "mouth_triangle"
	flexcontroller mouth_meow range 0 1 "mouth_meow"
	flexcontroller mouth_meow_a range 0 1 "mouth_meow_a"
	flexcontroller mouth_meow_i range 0 1 "mouth_meow_i"
	flexcontroller mouth_meow_u range 0 1 "mouth_meow_u"
	flexcontroller mouth_meow_e range 0 1 "mouth_meow_e"
	flexcontroller mouth_meow_o range 0 1 "mouth_meow_o"
	flexcontroller mouth_meow_wa range 0 1 "mouth_meow_wa"
	flexcontroller mouth_unhappy range 0 1 "mouth_unhappy"
	flexcontroller mouth_titter range 0 1 "mouth_titter"
	flexcontroller mouth_smile range 0 1 "mouth_smile"
	flexcontroller mouth_smileL range 0 1 "mouth_smileL"
	flexcontroller mouth_smileR range 0 1 "mouth_smileR"
	flexcontroller mouth_grin range 0 1 "mouth_grin"
	flexcontroller mouth_licking range 0 1 "mouth_licking"
	flexcontroller mouth_licking2 range 0 1 "mouth_licking2"
	flexcontroller mouth_licking3 range 0 1 "mouth_licking3"
	flexcontroller mouth_wider range 0 1 "mouth_wider"
	flexcontroller teeth_noUpper range 0 1 "teeth_noUpper"
	flexcontroller teeth_noLower range 0 1 "teeth_noLower"
	flexcontroller mouth_puku range 0 1 "mouth_puku"
	flexcontroller face_melon range 0 1 "face_melon"
	flexcontroller mouth_pointed range 0 1 "mouth_pointed"
	flexcontroller mouth_laugh range 0 1 "mouth_laugh"
	flexcontroller mouth_hen range 0 1 "mouth_hen"
	flexcontroller teeth_fang range 0 1 "teeth_fang"
	flexcontroller teeth_no range 0 1 "teeth_no"
	flexcontroller tongue_thin range 0 1 "tongue_thin"
	flexcontroller tongue_thick range 0 1 "tongue_thick"
	flexcontroller eyelid range 0 1 "blink"
	flexcontroller eye_happy range 0 1 "eye_happy"
	flexcontroller eye_happy2 range 0 1 "eye_happy2"
	flexcontroller eye_closeL range 0 1 "eye_closeL"
	flexcontroller eye_closeR range 0 1 "eye_closeR"
	flexcontroller eye_happyL range 0 1 "eye_happyL"
	flexcontroller eye_happyR range 0 1 "eye_happyR"
	flexcontroller eye_happy2L range 0 1 "eye_happy2L"
	flexcontroller eye_happy2R range 0 1 "eye_happy2R"
	flexcontroller eye_naughty range 0 1 "eye_naughty"
	flexcontroller eye_naughtyL range 0 1 "eye_naughtyL"
	flexcontroller eye_naughtyR range 0 1 "eye_naughtyR"
	flexcontroller eye_nagomi range 0 1 "eye_nagomi"
	flexcontroller eye_scared range 0 1 "eye_scared"
	flexcontroller eye_reflect_low range 0 1 "eye_reflect_low"
	flexcontroller eye_no_reflect range 0 1 "eye_no_reflect"
	flexcontroller eye_unknown range 0 1 "eye_unknown"
	flexcontroller eye_cat range 0 1 "eye_cat"
	flexcontroller eye_unknown2 range 0 1 "eye_unknown2"
	flexcontroller eye_surprise range 0 1 "eye_surprise"
	flexcontroller eyelid_down range 0 1 "eyelid_down"
	flexcontroller eyelid_up range 0 1 "eyelid_up"
	flexcontroller eye_spread range 0 1 "eye_spread"
	flexcontroller eye_taunt range 0 1 "eye_taunt"
	flexcontroller eye_tauntL range 0 1 "eye_tauntL"
	flexcontroller eye_tauntR range 0 1 "eye_tauntR"
	flexcontroller eye_sharp range 0 1 "eye_sharp"
	flexcontroller eye_comicwhite range 0 1 "eye_comicwhite"
	flexcontroller eye_comicangry range 0 1 "eye_comicangry"
	flexcontroller eye_comiccat range 0 1 "eye_comiccat"
	flexcontroller eye_star range 0 1 "eye_star"
	flexcontroller eye_left range 0 1 "eye_left"
	flexcontroller eye_right range 0 1 "eye_right"
	flexcontroller eye_up range 0 1 "eye_up"
	flexcontroller eye_down range 0 1 "eye_down"
	flexcontroller brow_up range 0 1 "brow_up"
	flexcontroller brow_down range 0 1 "brow_down"
	flexcontroller brow_front range 0 1 "brow_front"
	flexcontroller brow_sleepy range 0 1 "brow_sleepy"
	flexcontroller brow_curved range 0 1 "brow_curved"
	flexcontroller brow_angry range 0 1 "brow_angry"
	flexcontroller brow_serious range 0 1 "brow_serious"
	flexcontroller brow_sad range 0 1 "brow_sad"
	flexcontroller brow_doubt range 0 1 "brow_doubt"
	flexcontroller brow_parallel range 0 1 "brow_parallel"
	flexcontroller brow_thick range 0 1 "brow_thick"
	flexcontroller face_shadow range 0 1 "face_shadow"
	flexcontroller face_shadow2 range 0 1 "face_shadow2"
	flexcontroller face_red range 0 1 "face_red"
	flexcontroller face_red2 range 0 1 "face_red2"
	flexcontroller face_tear range 0 1 "face_tear"
	flexcontroller ear_nohuman range 0 1 "ear_nohuman"
	flexcontroller face_tear2 range 0 1 "face_tear2"
	flexcontroller face_tear2L range 0 1 "face_tear2L"
	flexcontroller face_tear2R range 0 1 "face_tear2R"
	flexcontroller face_tearmark range 0 1 "face_tearmark"
	flexcontroller face_glasses range 0 1 "face_glasses"

	%mouth_a = mouth_a
	%mouth_a = mouth_a
	%mouth_i = mouth_i
	%mouth_u = mouth_u
	%mouth_e = mouth_e
	%mouth_o = mouth_o
	%mouth_wa = mouth_wa
	%mouth_roar = mouth_roar
	%mouth_triangle = mouth_triangle
	%mouth_meow = mouth_meow
	%mouth_meow_a = mouth_meow_a
	%mouth_meow_i = mouth_meow_i
	%mouth_meow_u = mouth_meow_u
	%mouth_meow_e = mouth_meow_e
	%mouth_meow_o = mouth_meow_o
	%mouth_meow_wa = mouth_meow_wa
	%mouth_unhappy = mouth_unhappy
	%mouth_titter = mouth_titter
	%mouth_smile = mouth_smile
	%mouth_smileL = mouth_smileL
	%mouth_smileR = mouth_smileR
	%mouth_grin = mouth_grin
	%mouth_licking = mouth_licking
	%mouth_licking2 = mouth_licking2
	%mouth_licking3 = mouth_licking3
	%mouth_wider = mouth_wider
	%teeth_noUpper = teeth_noUpper
	%teeth_noLower = teeth_noLower
	%mouth_puku = mouth_puku
	%face_melon = face_melon
	%mouth_pointed = mouth_pointed
	%mouth_laugh = mouth_laugh
	%mouth_hen = mouth_hen
	%teeth_fang = teeth_fang
	%teeth_no = teeth_no
	%tongue_thin = tongue_thin
	%tongue_thick = tongue_thick
	%blink = blink
	%eye_happy = eye_happy
	%eye_happy2 = eye_happy2
	%eye_closeL = eye_closeL
	%eye_closeR = eye_closeR
	%eye_happyL = eye_happyL
	%eye_happyR = eye_happyR
	%eye_happy2L = eye_happy2L
	%eye_happy2R = eye_happy2R
	%eye_naughty = eye_naughty
	%eye_naughtyL = eye_naughtyL
	%eye_naughtyR = eye_naughtyR
	%eye_nagomi = eye_nagomi
	%eye_scared = eye_scared
	%eye_reflect_low = eye_reflect_low
	%eye_no_reflect = eye_no_reflect
	%eye_unknown = eye_unknown
	%eye_cat = eye_cat
	%eye_unknown2 = eye_unknown2
	%eye_surprise = eye_surprise
	%eyelid_down = eyelid_down
	%eyelid_up = eyelid_up
	%eye_spread = eye_spread
	%eye_taunt = eye_taunt
	%eye_tauntL = eye_tauntL
	%eye_tauntR = eye_tauntR
	%eye_sharp = eye_sharp
	%eye_comicwhite = eye_comicwhite
	%eye_comicangry = eye_comicangry
	%eye_comiccat = eye_comiccat
	%eye_star = eye_star
	%eye_left = eye_left
	%eye_right = eye_right
	%eye_up = eye_up
	%eye_down = eye_down
	%brow_up = brow_up
	%brow_down = brow_down
	%brow_front = brow_front
	%brow_sleepy = brow_sleepy
	%brow_curved = brow_curved
	%brow_angry = brow_angry
	%brow_serious = brow_serious
	%brow_sad = brow_sad
	%brow_doubt = brow_doubt
	%brow_parallel = brow_parallel
	%brow_thick = brow_thick
	%face_shadow = face_shadow
	%face_shadow2 = face_shadow2
	%face_red = face_red
	%face_red2 = face_red2
	%face_tear = face_tear
	%ear_nohuman = ear_nohuman
	%face_tear2 = face_tear2
	%face_tear2L = face_tear2L
	%face_tear2R = face_tear2R
	%face_tearmark = face_tearmark
	%face_glasses = face_glasses
} */
$bodygroup "orin face"
{
	studio "orin_emotions.smd"
}
$bodygroup "Hair"
{
	studio "orin_hair.smd"
}
$bodygroup "Cloth"
{
	studio "orin_cloth.smd"
}
$bodygroup "Tails"
{
	studio "orin_tails.smd"
}
$bodygroup "Pants"
{
	studio "orin_pants.smd"
}
$bodygroup "Legs"
{
	studio "orin_legs.smd"
}
$bodygroup "Shoes"
{
	studio "orin_shoes.smd"
}


$surfaceprop "flesh"

$contents "solid"

$illumposition -0.031 -1.243 37.674

$ambientboost

$mostlyopaque

$cdmaterials "models\orin\"

$attachment "eyes" "ValveBiped.Bip01_Head1" 2.04 -3.5 0 rotate 0 -80.1 -90
$attachment "mouth" "ValveBiped.Bip01_Head1" -0.3 -3.5 0 rotate 0 -80 -90
$attachment "chest" "ValveBiped.Bip01_Spine2" 5 4 0 rotate 0 90 90
$attachment "forward" "ValveBiped.Bip01_Head1" 0 0 0 rotate 0 -76 -90
$attachment "anim_attachment_RH" "ValveBiped.Bip01_R_Hand" 2.43 -1.55 -0.19 rotate 4.36 0.17 -179.99
$attachment "anim_attachment_LH" "ValveBiped.Bip01_L_Hand" 2.43 -1.55 0.19 rotate 4.36 -179.83 0.01
$attachment "anim_attachment_head" "ValveBiped.Bip01_Head1" 0 0 0 rotate -90 -90 0
$attachment "Head" "ValveBiped.Bip01_Head1" 0 0 0 rotate 0 0 0
$attachment "RArm" "ValveBiped.Bip01_R_UpperArm" 0 0 0 rotate 0 0 0
$attachment "LArm" "ValveBiped.Bip01_L_UpperArm" 0 0 0 rotate 0 0 0
$attachment "RLeg" "ValveBiped.Bip01_R_Thigh" 0 0 0 rotate 0 0 0
$attachment "LLeg" "ValveBiped.Bip01_L_Thigh" 0 0 0 rotate 0 0 0
$attachment "lfoot" "ValveBiped.Bip01_L_Calf" -3.09 -70.42 -5.56 rotate 16.55 0 0
$attachment "rfoot" "ValveBiped.Bip01_R_Calf" 16.55 0 0 rotate 3.09 -70.42 6.2
$attachment "severed_Head" "ValveBiped.Bip01_Head1" 0 0 0 rotate 0 -41.08 -90
$attachment "severed_RArm" "ValveBiped.Bip01_R_UpperArm" 11.1 -0.3 0.4 rotate 0 0 90
$attachment "severed_LArm" "ValveBiped.Bip01_L_UpperArm" 8.5 -0.2 -0.4 rotate 0 0 90
$attachment "severed_RLeg" "ValveBiped.Bip01_R_Thigh" 13.5 -0.8 0 rotate 0 0 90
$attachment "severed_LLeg" "ValveBiped.Bip01_L_Thigh" 14 -0.7 0 rotate 0 0 90

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

$definebone "ValveBiped.Bip01_Pelvis" "" -0.010216 -0.722168 37.53125 0.000172 -0.000172 89.99975 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine" "ValveBiped.Bip01_Pelvis" 0.000004 1.761753 -1.555851 -0.602866 90.000897 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine1" "ValveBiped.Bip01_Spine" 3.533043 0.000007 0.000054 -0.001031 -6.451906 0.000115 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine2" "ValveBiped.Bip01_Spine1" 3.330963 -0.000014 -0.00001 0.000172 -0.724448 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine4" "ValveBiped.Bip01_Spine2" 7.537796 0.068706 -0.000002 0.000115 8.927369 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Neck1" "ValveBiped.Bip01_Spine4" 2.3269 0.024652 0.000004 -0.000229 13.009349 179.999841 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Head1" "ValveBiped.Bip01_Neck1" 3.177223 0.000011 0.000007 0.000229 6.359777 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Clavicle" "ValveBiped.Bip01_Spine4" 1.863258 0.835509 1.88038 -76.440294 166.165361 93.870459 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_UpperArm" "ValveBiped.Bip01_L_Clavicle" 2.942321 0.045448 0.083363 5.026845 -26.744473 -82.332821 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_UpperArm" 8.615929 0 0.000008 -2.62678 -2.274759 0.169826 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Hand" "ValveBiped.Bip01_L_Forearm" 7.707872 0.000059 -0.000011 -2.21144 2.080007 86.253418 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Clavicle" "ValveBiped.Bip01_Spine4" 1.863243 0.835515 -1.906407 76.440294 166.163121 -97.98338 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_UpperArm" "ValveBiped.Bip01_R_Clavicle" 2.819201 0.005547 -0.083089 -3.004247 -23.763024 85.829714 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_UpperArm" 8.579309 -0.007269 0.391819 -0.496464 -2.391011 -0.040337 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped.Bip01_R_Forearm" 7.634524 0.000071 0.000011 2.236141 1.709877 -86.05843 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Thigh" "ValveBiped.Bip01_Pelvis" 3.668082 -0.000004 -0.000003 -3.356558 -92.308374 -89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Calf" "ValveBiped.Bip01_L_Thigh" 15.561377 -0.008395 0.010998 -0.990644 5.787046 -0.055806 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Foot" "ValveBiped.Bip01_L_Calf" 19.00745 -0.101996 0.046082 -1.737609 -70.474268 1.717842 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Thigh" "ValveBiped.Bip01_Pelvis" -3.66808 0.000008 0.000006 -3.367502 -87.560498 -90.02748 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Calf" "ValveBiped.Bip01_R_Thigh" 15.524685 -0.008571 -0.011739 1.024563 5.792832 0.058155 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Foot" "ValveBiped.Bip01_R_Calf" 18.963591 -0.102895 -0.049608 2.379951 -70.651607 -0.934723 0 0 0 0 0 0
$definebone "y_hair_fr_01" "ValveBiped.Bip01_Head1" 5.289349 -3.661155 3.68581 89.259262 2.570347 179.388047 0 0 0 0 0 0
$definebone "y_hair_fl_01" "ValveBiped.Bip01_Head1" 5.207664 -3.145226 -2.901474 89.259262 2.570347 179.388047 0 0 0 0 0 0
$definebone "y_ear_r_01" "ValveBiped.Bip01_Head1" 9.371277 1.136434 3.848694 55.582133 -58.319481 68.859044 0 0 0 0 0 0
$definebone "y_ear_l_01" "ValveBiped.Bip01_Head1" 9.371346 1.136446 -3.868011 -49.18815 -57.201356 108.100175 0 0 0 0 0 0
$definebone "y_hair_f_01" "ValveBiped.Bip01_Head1" 5.497177 -4.972577 0.176952 89.259262 2.570347 179.388047 0 0 0 0 0 0
$definebone "y_hair_br_01" "ValveBiped.Bip01_Head1" 5.453007 0.985941 4.067791 -59.671039 -82.656443 78.242488 0 0 0 0 0 0
$definebone "y_hair_br_02" "y_hair_br_01" -0.002943 0.216333 7.990704 -0.825749 0.049336 0.466274 0 0 0 0 0 0
$definebone "y_hair_br_03" "y_hair_br_02" -0.685873 -0.000006 6.069992 -0.000002 0.000005 0.000055 0 0 0 0 0 0
$definebone "y_hair_br_04" "y_hair_br_03" -0.433297 -0.300091 6.052818 -0.000002 0.000009 -0.000002 0 0 0 0 0 0
$definebone "y_hair_bl_01" "ValveBiped.Bip01_Head1" 5.506149 1.026246 -4.087021 61.200674 -83.56343 101.675774 0 0 0 0 0 0
$definebone "y_hair_bl_02" "y_hair_bl_01" 0.000002 0 8.001541 -0.000003 -0.00001 0.000058 0 0 0 0 0 0
$definebone "y_hair_bl_03" "y_hair_bl_02" -0.70279 -0.000006 6.069988 -0.000002 -0.000015 0.000057 0 0 0 0 0 0
$definebone "y_hair_bl_04" "y_hair_bl_03" -0.253699 0.306545 6.06683 -0.000003 -0.000014 -0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger3" "ValveBiped.Bip01_L_Hand" 3.015914 0.164658 -0.43846 -2.573556 -14.783523 3.947393 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger31" "ValveBiped.Bip01_L_Finger3" 1.187225 -0.05032 -0.073548 3.305504 7.195541 2.441658 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger32" "ValveBiped.Bip01_L_Finger31" 0.692485 -0.000011 -0.000005 -2.298024 -11.610195 8.962322 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger2" "ValveBiped.Bip01_L_Hand" 3.066758 0.081707 0.138879 -2.998518 -9.824057 8.155193 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger21" "ValveBiped.Bip01_L_Finger2" 1.391513 -0.049274 -0.069796 2.246796 3.074891 -2.069469 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger22" "ValveBiped.Bip01_L_Finger21" 0.76967 0.000015 -0.000005 -0.325212 -5.672055 -0.071507 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger1" "ValveBiped.Bip01_L_Hand" 3.077893 -0.04081 0.660534 -8.549331 -5.874374 17.353685 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger11" "ValveBiped.Bip01_L_Finger1" 1.087004 -0.052319 -0.054646 4.85564 -8.638212 -1.190837 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger12" "ValveBiped.Bip01_L_Finger11" 0.840656 0.022694 -0.03091 1.158574 4.25575 1.31757 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger4" "ValveBiped.Bip01_L_Hand" 2.812361 -0.118828 -1.128734 -5.39222 -6.059266 12.339618 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger41" "ValveBiped.Bip01_L_Finger4" 0.850278 -0.043564 -0.019354 4.456578 -4.937059 -23.448651 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger42" "ValveBiped.Bip01_L_Finger41" 0.490496 0 -0.000006 -0.735279 -3.248725 11.126096 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger0" "ValveBiped.Bip01_L_Hand" 1.023177 -0.324509 0.607333 -25.426482 -23.645971 -7.031338 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger01" "ValveBiped.Bip01_L_Finger0" 1.004847 0.000008 -0.000017 2.505839 5.982938 -9.684415 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger02" "ValveBiped.Bip01_L_Finger01" 0.793467 0.000008 0 6.207664 -0.850037 -18.319052 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Wrist" "ValveBiped.Bip01_L_Forearm" 7.70787 0.000061 -0.000015 -0.000053 0.0004 -3.297829 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Shoulder" "ValveBiped.Bip01_L_UpperArm" 1.029993 0.001333 0.056297 -3.128693 0.073852 -9.0085 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Elbow" "ValveBiped.Bip01_L_UpperArm" 8.615938 -0.000001 0.000004 -3.112935 -5.667299 0.313352 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Trapezius" "ValveBiped.Bip01_L_Clavicle" 2.286816 0.045483 0.083364 -0.000115 0.000115 -0.000056 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger2" "ValveBiped.Bip01_R_Hand" 3.01855 0.037022 -0.06841 3.229249 -6.880879 -5.36122 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger21" "ValveBiped.Bip01_R_Finger2" 1.265308 0.012604 -0.045645 0.10703 -16.749613 4.844989 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger22" "ValveBiped.Bip01_R_Finger21" 0.939938 0.039646 0.056123 -0.47693 14.46541 -0.449653 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger1" "ValveBiped.Bip01_R_Hand" 3.027467 -0.097397 -0.604041 9.464006 -6.848453 -17.170568 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger11" "ValveBiped.Bip01_R_Finger1" 1.270782 -0.016781 0.061933 -3.724508 -8.901992 0.073049 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger12" "ValveBiped.Bip01_R_Finger11" 0.741529 -0.000019 -0.00001 -5.769968 6.446061 2.365109 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger3" "ValveBiped.Bip01_R_Hand" 2.968135 0.130024 0.663551 4.600853 -10.262355 -10.043372 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger31" "ValveBiped.Bip01_R_Finger3" 1.149612 -0.001553 -0.000512 -2.621166 -4.270127 -0.253647 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger32" "ValveBiped.Bip01_R_Finger31" 0.738747 0.000008 0.000002 0.942631 -1.034405 -4.678257 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger4" "ValveBiped.Bip01_R_Hand" 2.852451 0.008175 1.155743 0.707489 -14.30956 -8.23741 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger41" "ValveBiped.Bip01_R_Finger4" 0.722635 -0.02013 0.021523 7.710467 3.155402 -15.765055 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger42" "ValveBiped.Bip01_R_Finger41" 0.592884 0.006638 -0.016769 -7.519158 -3.919134 -0.324652 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger0" "ValveBiped.Bip01_R_Hand" 1.054646 -0.399986 -0.652076 19.755023 -24.753946 104.571801 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger01" "ValveBiped.Bip01_R_Finger0" 1.0371 0.000011 0.000015 3.175337 5.135355 13.014954 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger02" "ValveBiped.Bip01_R_Finger01" 0.819962 0.00001 -0.000025 4.232271 -10.231315 1.169847 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Wrist" "ValveBiped.Bip01_R_Forearm" 7.634521 0.000071 0.000008 0.000002 0.000286 3.734423 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Shoulder" "ValveBiped.Bip01_R_UpperArm" 1.021736 0.000007 0.000019 0.000061 0.000287 0.000228 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Elbow" "ValveBiped.Bip01_R_UpperArm" 8.579315 -0.007269 0.39183 0.000061 -5.73273 -0.000517 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Trapezius" "ValveBiped.Bip01_R_Clavicle" 2.163692 0.005543 -0.083091 -0.000172 0.000345 0.000115 0 0 0 0 0 0
$definebone "z_skirt_sw_helper" "ValveBiped.Bip01_Pelvis" -4.086957 2.956184 3.846998 0.000172 0.000057 0.000172 0 0 0 0 0 0
$definebone "z_skirt_sw_01" "z_skirt_sw_helper" -1.285402 -3.12138 -0.531798 -34.643273 -9.027239 75.139116 0 0 0 0 0 0
$definebone "z_skirt_sw_02" "z_skirt_sw_01" -0.158534 -0.324366 5.858704 0.719578 0.495666 3.671456 0 0 0 0 0 0
$definebone "z_skirt_sw_03" "z_skirt_sw_02" -0.000001 0 6.013279 -0.000001 -0.000003 0.000004 0 0 0 0 0 0
$definebone "z_skirt_sw_12" "z_skirt_sw_helper" 1.19313 -4.812443 1.940006 -18.938837 -2.071415 77.092673 0 0 0 0 0 0
$definebone "z_skirt_sw_13" "z_skirt_sw_12" 0.036775 0.239867 5.280918 0 0.000002 -4.895809 0 0 0 0 0 0
$definebone "z_skirt_sw_14" "z_skirt_sw_13" 0.000003 -0.000004 5.148767 -0.000002 -0.000002 0.000001 0 0 0 0 0 0
$definebone "z_skirt_se_helper" "ValveBiped.Bip01_Pelvis" 4.106623 2.956165 3.846973 0.000172 0.000057 0.000172 0 0 0 0 0 0
$definebone "z_skirt_se_01" "z_skirt_se_helper" 1.579911 -3.021729 -0.932437 -47.430995 -163.558196 -76.957743 0 0 0 0 0 0
$definebone "z_skirt_se_02" "z_skirt_se_01" -0.000004 0.002155 5.953651 -0.000005 -0.000003 -2.702124 0 0 0 0 0 0
$definebone "z_skirt_se_03" "z_skirt_se_02" -0.000004 0.000006 5.988947 -0.000007 -0.000007 0.000002 0 0 0 0 0 0
$definebone "z_skirt_se_12" "z_skirt_se_helper" -1.532234 -4.798183 2.03793 -15.53512 -179.699791 -64.846274 0 0 0 0 0 0
$definebone "z_skirt_se_13" "z_skirt_se_12" -0.28606 0.659389 5.226978 -1.504071 0.472004 -6.499859 0 0 0 0 0 0
$definebone "z_skirt_se_14" "z_skirt_se_13" 0.000005 0.000004 5.139378 0.000058 0.000001 0.000003 0 0 0 0 0 0
$definebone "z_skirt_nw_helper" "ValveBiped.Bip01_Pelvis" -4.086968 2.956181 -2.142162 0.000172 0.000057 0.000172 0 0 0 0 0 0
$definebone "z_skirt_nw_01" "z_skirt_nw_helper" -0.908943 -2.608849 -0.495593 -53.57417 -177.715279 -117.355996 0 0 0 0 0 0
$definebone "z_skirt_nw_02" "z_skirt_nw_01" 0.117528 -0.359871 6.587814 4.94881 -2.197926 2.590173 0 0 0 0 0 0
$definebone "z_skirt_nw_03" "z_skirt_nw_02" -0.000003 0.000011 5.959805 0.000001 -0.000002 -0.000061 0 0 0 0 0 0
$definebone "z_skirt_nw_12" "z_skirt_nw_helper" 2.050313 -4.66552 -2.534485 -19.172978 -178.037897 -112.395059 0 0 0 0 0 0
$definebone "z_skirt_nw_13" "z_skirt_nw_12" 0.036264 -0.230862 5.142847 0 -0.000002 0.587858 0 0 0 0 0 0
$definebone "z_skirt_nw_14" "z_skirt_nw_13" -0.000001 0.000002 5.515692 0 0 0.000005 0 0 0 0 0 0
$definebone "z_skirt_ne_helper" "ValveBiped.Bip01_Pelvis" 4.106607 2.956169 -2.142174 0.000172 0.000057 0.000172 0 0 0 0 0 0
$definebone "z_skirt_ne_01" "z_skirt_ne_helper" 0.955132 -2.764797 -0.517164 -41.533305 4.256503 113.156755 0 0 0 0 0 0
$definebone "z_skirt_ne_02" "z_skirt_ne_01" 0.067097 0.350595 6.591652 -3.944985 2.89916 -1.87724 0 0 0 0 0 0
$definebone "z_skirt_ne_03" "z_skirt_ne_02" 0.094577 -0.151272 5.951447 2.877393 -0.246947 4.547105 0 0 0 0 0 0
$definebone "z_skirt_ne_12" "z_skirt_ne_helper" -2.012655 -4.615166 -2.675921 -19.064028 -2.090551 113.468963 0 0 0 0 0 0
$definebone "z_skirt_ne_13" "z_skirt_ne_12" 0.036267 0.236448 5.142773 0.000001 0.000003 -1.318607 0 0 0 0 0 0
$definebone "z_skirt_ne_14" "z_skirt_ne_13" 0 0.000006 5.515696 0.000001 0.000007 -0.000004 0 0 0 0 0 0
$definebone "z_skirt_w_helper" "ValveBiped.Bip01_Pelvis" -5.662958 2.125881 0.649193 -89.017384 -113.797591 171.179144 0 0 0 0 0 0
$definebone "z_skirt_w_01" "z_skirt_w_helper" 0.000562 -0.069164 4.349964 0 0 4.209761 0 0 0 0 0 0
$definebone "z_skirt_w_02" "z_skirt_w_01" 0.000001 -0.101276 5.486506 0 0 2.277346 0 0 0 0 0 0
$definebone "z_skirt_w_03" "z_skirt_w_02" 0 0.121325 5.825466 0 0 -3.418196 0 0 0 0 0 0
$definebone "z_skirt_e_helper" "ValveBiped.Bip01_Pelvis" 5.529521 2.031204 1.268112 87.503924 104.631654 170.477328 0 0 0 0 0 0
$definebone "z_skirt_e_01" "z_skirt_e_helper" -0.000593 0.166468 4.345978 0 0 -4.591046 0 0 0 0 0 0
$definebone "z_skirt_e_02" "z_skirt_e_01" -0.000001 -0.082373 5.487183 0 0 -0.414015 0 0 0 0 0 0
$definebone "z_skirt_e_03" "z_skirt_e_02" -0.000002 0.131084 5.824844 0 0 -3.693514 0 0 0 0 0 0
$definebone "z_tail_r_01" "ValveBiped.Bip01_Pelvis" -1.534528 3.520233 -5.75252 9.308501 -1.130159 65.091211 0 0 0 0 0 0
$definebone "z_tail_r_02" "z_tail_r_01" 0.220988 -7.102924 3.128906 -2.460912 -2.925866 -19.218897 0 0 0 0 0 0
$definebone "z_tail_r_03" "z_tail_r_02" 0.16329 -6.451637 2.841841 -1.465684 -2.658986 -14.453025 0 0 0 0 0 0
$definebone "z_tail_r_04" "z_tail_r_03" -0.062995 -7.370375 3.245842 -0.000114 -0.000116 0.000054 0 0 0 0 0 0
$definebone "z_tail_l_01" "ValveBiped.Bip01_Pelvis" 0.59188 3.520226 -5.945685 -8.347193 0.1606 65.119119 0 0 0 0 0 0
$definebone "z_tail_l_02" "z_tail_l_01" -0.066005 -6.878703 3.029243 1.889559 3.608717 -18.96771 0 0 0 0 0 0
$definebone "z_tail_l_03" "z_tail_l_02" 0.150038 -6.494524 2.860821 1.323016 2.65669 -13.972541 0 0 0 0 0 0
$definebone "z_tail_l_04" "z_tail_l_03" 0.128091 -7.390401 3.255213 0 -0.000172 0.000018 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Toe0" "ValveBiped.Bip01_L_Foot" 5.890891 -0.000036 -0.000001 0.053457 -28.678772 -0.638734 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Toe0" "ValveBiped.Bip01_R_Foot" 5.935231 -0.000033 0.000001 -0.354489 -28.588197 -4.50637 0 0 0 0 0 0

$bonemerge "ValveBiped.Bip01_Pelvis"
$bonemerge "ValveBiped.Bip01_Spine"
$bonemerge "ValveBiped.Bip01_Spine1"
$bonemerge "ValveBiped.Bip01_Spine2"
$bonemerge "ValveBiped.Bip01_Spine4"
$bonemerge "ValveBiped.Bip01_R_Clavicle"
$bonemerge "ValveBiped.Bip01_R_UpperArm"
$bonemerge "ValveBiped.Bip01_R_Forearm"
$bonemerge "ValveBiped.Bip01_R_Hand"

$proceduralbones "common_male_roadcrew.vrd"

$jigglebone "y_hair_fr_01"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 8
		yaw_stiffness 50
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 50
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 50
	}
}
$jigglebone "y_hair_fl_01"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 8
		yaw_stiffness 50
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 50
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 50
	}
}
$jigglebone "y_ear_r_01"
{
	is_flexible
	{
		length 10
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 3
		yaw_stiffness 100
		yaw_damping 3
		along_stiffness 100
		along_damping 0
		angle_constraint 60.000002
	}
}
$jigglebone "y_ear_l_01"
{
	is_flexible
	{
		length 10
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 3
		yaw_stiffness 100
		yaw_damping 3
		along_stiffness 100
		along_damping 0
		angle_constraint 60.000002
	}
}
$jigglebone "y_hair_f_01"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 8
		yaw_stiffness 50
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 50
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 50
	}
}
$jigglebone "y_hair_br_01"
{
	is_flexible
	{
		length 35
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		pitch_constraint -45.000001 90.000003
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 50
	}
}
$jigglebone "y_hair_br_02"
{
	is_flexible
	{
		length 40
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		pitch_constraint -45.000001 90.000003
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 54.999999
	}
}
$jigglebone "y_hair_br_03"
{
	is_flexible
	{
		length 45
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		pitch_constraint -45.000001 90.000003
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 60.000002
	}
}
$jigglebone "y_hair_br_04"
{
	is_flexible
	{
		length 45
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		pitch_constraint -45.000001 90.000003
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 60.000002
	}
}
$jigglebone "y_hair_bl_01"
{
	is_flexible
	{
		length 35
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		pitch_constraint -90.000003 45.000001
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 50
	}
}
$jigglebone "y_hair_bl_02"
{
	is_flexible
	{
		length 40
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		pitch_constraint -90.000003 45.000001
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 54.999999
	}
}
$jigglebone "y_hair_bl_03"
{
	is_flexible
	{
		length 45
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		pitch_constraint -90.000003 45.000001
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 60.000002
	}
}
$jigglebone "y_hair_bl_04"
{
	is_flexible
	{
		length 45
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		pitch_constraint -90.000003 45.000001
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 60.000002
	}
}
$jigglebone "z_skirt_sw_01"
{
	is_flexible
	{
		length 15
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 10
		yaw_stiffness 100
		yaw_damping 10
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 70
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 30.000001
	}
}
$jigglebone "z_skirt_sw_02"
{
	is_flexible
	{
		length 20
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 9
		yaw_stiffness 100
		yaw_damping 9
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 79.999998
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 35
	}
}
$jigglebone "z_skirt_sw_03"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 8
		yaw_stiffness 100
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 90.000003
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 39.999999
	}
}
$jigglebone "z_skirt_sw_12"
{
	is_flexible
	{
		length 20
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 9
		yaw_stiffness 100
		yaw_damping 9
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 79.999998
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 35
	}
}
$jigglebone "z_skirt_sw_13"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 9
		yaw_stiffness 100
		yaw_damping 9
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 90.000003
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 39.999999
	}
}
$jigglebone "z_skirt_sw_14"
{
	is_flexible
	{
		length 30
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 8
		yaw_stiffness 100
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 90.000003
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 39.999999
	}
}
$jigglebone "z_skirt_se_01"
{
	is_flexible
	{
		length 15
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 10
		yaw_stiffness 100
		yaw_damping 10
		along_stiffness 100
		along_damping 0
		pitch_constraint -70 0
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 30.000001
	}
}
$jigglebone "z_skirt_se_02"
{
	is_flexible
	{
		length 20
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 9
		yaw_stiffness 100
		yaw_damping 9
		along_stiffness 100
		along_damping 0
		pitch_constraint -79.999998 0
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 35
	}
}
$jigglebone "z_skirt_se_03"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 8
		yaw_stiffness 100
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 90.000003
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 39.999999
	}
}
$jigglebone "z_skirt_se_12"
{
	is_flexible
	{
		length 20
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 9
		yaw_stiffness 100
		yaw_damping 9
		along_stiffness 100
		along_damping 0
		pitch_constraint -79.999998 0
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 35
	}
}
$jigglebone "z_skirt_se_13"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 9
		yaw_stiffness 100
		yaw_damping 9
		along_stiffness 100
		along_damping 0
		pitch_constraint -90.000003 0
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 39.999999
	}
}
$jigglebone "z_skirt_se_14"
{
	is_flexible
	{
		length 30
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 8
		yaw_stiffness 100
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 90.000003
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 39.999999
	}
}
$jigglebone "z_skirt_nw_01"
{
	is_flexible
	{
		length 15
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 10
		yaw_stiffness 100
		yaw_damping 10
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 70
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 30.000001
	}
}
$jigglebone "z_skirt_nw_02"
{
	is_flexible
	{
		length 20
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 9
		yaw_stiffness 100
		yaw_damping 9
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 79.999998
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 35
	}
}
$jigglebone "z_skirt_nw_03"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 8
		yaw_stiffness 100
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 90.000003
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 39.999999
	}
}
$jigglebone "z_skirt_nw_12"
{
	is_flexible
	{
		length 20
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 9
		yaw_stiffness 100
		yaw_damping 9
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 79.999998
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 35
	}
}
$jigglebone "z_skirt_nw_13"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 9
		yaw_stiffness 100
		yaw_damping 9
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 90.000003
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 39.999999
	}
}
$jigglebone "z_skirt_nw_14"
{
	is_flexible
	{
		length 30
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 8
		yaw_stiffness 100
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 90.000003
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 39.999999
	}
}
$jigglebone "z_skirt_ne_01"
{
	is_flexible
	{
		length 15
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 10
		yaw_stiffness 100
		yaw_damping 10
		along_stiffness 100
		along_damping 0
		pitch_constraint -70 0
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 30.000001
	}
}
$jigglebone "z_skirt_ne_02"
{
	is_flexible
	{
		length 20
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 9
		yaw_stiffness 100
		yaw_damping 9
		along_stiffness 100
		along_damping 0
		pitch_constraint -79.999998 0
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 35
	}
}
$jigglebone "z_skirt_ne_03"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 8
		yaw_stiffness 100
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 90.000003
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 39.999999
	}
}
$jigglebone "z_skirt_ne_12"
{
	is_flexible
	{
		length 20
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 9
		yaw_stiffness 100
		yaw_damping 9
		along_stiffness 100
		along_damping 0
		pitch_constraint -79.999998 0
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 35
	}
}
$jigglebone "z_skirt_ne_13"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 9
		yaw_stiffness 100
		yaw_damping 9
		along_stiffness 100
		along_damping 0
		pitch_constraint -90.000003 0
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 39.999999
	}
}
$jigglebone "z_skirt_ne_14"
{
	is_flexible
	{
		length 30
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 8
		yaw_stiffness 100
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 90.000003
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 39.999999
	}
}
$jigglebone "z_skirt_w_helper"
{
	is_flexible
	{
		length 15
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 10
		yaw_stiffness 100
		yaw_damping 10
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 70
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 30.000001
	}
}
$jigglebone "z_skirt_w_01"
{
	is_flexible
	{
		length 20
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 9
		yaw_stiffness 100
		yaw_damping 9
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 79.999998
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 35
	}
}
$jigglebone "z_skirt_w_02"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 9
		yaw_stiffness 100
		yaw_damping 9
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 90.000003
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 39.999999
	}
}
$jigglebone "z_skirt_w_03"
{
	is_flexible
	{
		length 30
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 8
		yaw_stiffness 100
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 90.000003
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 39.999999
	}
}
$jigglebone "z_skirt_e_helper"
{
	is_flexible
	{
		length 15
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 10
		yaw_stiffness 100
		yaw_damping 10
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 70
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 30.000001
	}
}
$jigglebone "z_skirt_e_01"
{
	is_flexible
	{
		length 20
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 9
		yaw_stiffness 100
		yaw_damping 9
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 79.999998
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 35
	}
}
$jigglebone "z_skirt_e_02"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 9
		yaw_stiffness 100
		yaw_damping 9
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 90.000003
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 39.999999
	}
}
$jigglebone "z_skirt_e_03"
{
	is_flexible
	{
		length 30
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 8
		yaw_stiffness 100
		yaw_damping 8
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 90.000003
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 39.999999
	}
}
$jigglebone "z_tail_r_01"
{
	is_flexible
	{
		length 35
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		pitch_constraint -45.000001 90.000003
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 50
	}
}
$jigglebone "z_tail_r_02"
{
	is_flexible
	{
		length 35
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		pitch_constraint -45.000001 90.000003
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 50
	}
}
$jigglebone "z_tail_r_03"
{
	is_flexible
	{
		length 35
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		pitch_constraint -45.000001 90.000003
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 50
	}
}
$jigglebone "z_tail_r_04"
{
	is_flexible
	{
		length 35
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		pitch_constraint -45.000001 90.000003
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 50
	}
}
$jigglebone "z_tail_l_01"
{
	is_flexible
	{
		length 35
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		pitch_constraint -90.000003 45.000001
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 50
	}
}
$jigglebone "z_tail_l_02"
{
	is_flexible
	{
		length 35
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		pitch_constraint -90.000003 45.000001
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 50
	}
}
$jigglebone "z_tail_l_03"
{
	is_flexible
	{
		length 35
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		pitch_constraint -90.000003 45.000001
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 50
	}
}
$jigglebone "z_tail_l_04"
{
	is_flexible
	{
		length 35
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		pitch_constraint -90.000003 45.000001
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 50
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
	 "ValveBiped.Bip01_L_Clavicle" 0
	 "ValveBiped.Bip01_L_UpperArm" 0
	 "ValveBiped.Bip01_L_Forearm" 0
	 "ValveBiped.Bip01_L_Hand" 0
	 "ValveBiped.Bip01_R_Clavicle" 0
	 "ValveBiped.Bip01_R_UpperArm" 0
	 "ValveBiped.Bip01_R_Forearm" 0
	 "ValveBiped.Bip01_R_Hand" 0
	 "ValveBiped.Bip01_L_Thigh" 0
	 "ValveBiped.Bip01_L_Calf" 0
	 "ValveBiped.Bip01_L_Foot" 0
	 "ValveBiped.Bip01_R_Thigh" 0
	 "ValveBiped.Bip01_R_Calf" 0
	 "ValveBiped.Bip01_R_Foot" 0
	 "y_hair_fr_01" 0
	 "y_hair_fl_01" 0
	 "y_ear_r_01" 0
	 "y_ear_l_01" 0
	 "y_hair_f_01" 0
	 "y_hair_br_01" 0
	 "y_hair_br_02" 0
	 "y_hair_br_03" 0
	 "y_hair_br_04" 0
	 "y_hair_bl_01" 0
	 "y_hair_bl_02" 0
	 "y_hair_bl_03" 0
	 "y_hair_bl_04" 0
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
	 "ValveBiped.Bip01_L_Wrist" 0
	 "ValveBiped.Bip01_L_Shoulder" 0
	 "ValveBiped.Bip01_L_Elbow" 0
	 "ValveBiped.Bip01_L_Trapezius" 0
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
	 "ValveBiped.Bip01_R_Shoulder" 0
	 "ValveBiped.Bip01_R_Elbow" 0
	 "ValveBiped.Bip01_R_Trapezius" 0
	 "z_skirt_sw_helper" 0
	 "z_skirt_sw_01" 0
	 "z_skirt_sw_02" 0
	 "z_skirt_sw_03" 0
	 "z_skirt_sw_12" 0
	 "z_skirt_sw_13" 0
	 "z_skirt_sw_14" 0
	 "z_skirt_se_helper" 0
	 "z_skirt_se_01" 0
	 "z_skirt_se_02" 0
	 "z_skirt_se_03" 0
	 "z_skirt_se_12" 0
	 "z_skirt_se_13" 0
	 "z_skirt_se_14" 0
	 "z_skirt_nw_helper" 0
	 "z_skirt_nw_01" 0
	 "z_skirt_nw_02" 0
	 "z_skirt_nw_03" 0
	 "z_skirt_nw_12" 0
	 "z_skirt_nw_13" 0
	 "z_skirt_nw_14" 0
	 "z_skirt_ne_helper" 0
	 "z_skirt_ne_01" 0
	 "z_skirt_ne_02" 0
	 "z_skirt_ne_03" 0
	 "z_skirt_ne_12" 0
	 "z_skirt_ne_13" 0
	 "z_skirt_ne_14" 0
	 "z_skirt_w_helper" 0
	 "z_skirt_w_01" 0
	 "z_skirt_w_02" 0
	 "z_skirt_w_03" 0
	 "z_skirt_e_helper" 0
	 "z_skirt_e_01" 0
	 "z_skirt_e_02" 0
	 "z_skirt_e_03" 0
	 "z_tail_r_01" 0
	 "z_tail_r_02" 0
	 "z_tail_r_03" 0
	 "z_tail_r_04" 0
	 "z_tail_l_01" 0
	 "z_tail_l_02" 0
	 "z_tail_l_03" 0
	 "z_tail_l_04" 0
	 "ValveBiped.Bip01_L_Toe0" 0
	 "ValveBiped.Bip01_R_Toe0" 0
}

// $animation "a_proportions_corrective_animation" "common_male_roadcrew_anims\a_proportions_corrective_animation.smd" {
// }

/* $animation "a_proportions_corrective_animation" "common_male_roadcrew_anims\a_proportions_corrective_animation.smd" {
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 3
}

$animation "a_proportions" "common_male_roadcrew_anims\a_proportions.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_proportions_corrective_animation" 0
} */

$sequence "ragdoll" {
	"common_male_roadcrew_anims\ragdoll.smd"
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
	"common_male_roadcrew_anims\ragdoll_01.smd"
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
	"common_male_roadcrew_anims\ragdoll_02.smd"
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
	"common_male_roadcrew_anims\ragdoll_03.smd"
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
	"common_male_roadcrew_anims\ragdoll_04.smd"
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
	"common_male_roadcrew_anims\ragdoll_05.smd"
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
	"common_male_roadcrew_anims\ragdoll_06.smd"
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
	"common_male_roadcrew_anims\reference.smd"
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

$collisionjoints "common_male_roadcrew_physics.smd"
{
	$mass 100
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
}
