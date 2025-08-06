// Created by Crowbar 0.74

$modelname "deadbodies/dead_hunter.mdl"

$bodygroup "LTD_UnderlingHunter"
{
	studio "ltd_underlinghunter.smd"
}

$surfaceprop "flesh"

$contents "solid"

$illumposition -0.108 1.097 36.162

$eyeposition 0 0 73

$ambientboost

$opaque

// $origin 0 -16.25 0 

$cdmaterials "models\meowmeow\d_u_hunt\"
$cdmaterials ""

// $texturegroup "skinfamilies"
// {
// 	{ "ltd_underlinghunter_body"        "ltd_underlinghunter_face"        "ltd_underlinghunter_hair"        }
// 	{ "ltd_underlinghunter_body_burned" "ltd_underlinghunter_face_burned" "ltd_underlinghunter_hair_burned" }
// }

$attachment "attach_blur" "ValveBiped.Bip01_Spine2" 0 0 4 rotate -90 0 0
$attachment "lfoot" "ValveBiped.Bip01_L_Foot" 1 3 0 rotate 0 -23 -180
$attachment "rfoot" "ValveBiped.Bip01_R_Foot" 1 3 0 rotate 0 -23 180
$attachment "lhand" "ValveBiped.Bip01_L_Hand" 5 -2 0 rotate 0 0 0
$attachment "rhand" "ValveBiped.Bip01_R_Hand" 5 -2 0 rotate 0 0 0
$attachment "forward" "ValveBiped.Bip01_Head1" 3 -4 0 rotate 0 -90 -90

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 72

$hboxset "default"
$hbox 3 "ValveBiped.Bip01_Pelvis" -7.5 -7.2 -6 7.5 1.8 6
$hbox 6 "ValveBiped.Bip01_L_Thigh" 6 -4.5 -3.5 20 2.5 3.5
$hbox 6 "ValveBiped.Bip01_L_Calf" 1.75 -3 -3 20.25 3 3
$hbox 6 "ValveBiped.Bip01_L_Toe0" -3.5 -1.5 -2.5 3.5 1.5 2.5
$hbox 7 "ValveBiped.Bip01_R_Thigh" 6 -4.5 -3.5 20 2.5 3.5
$hbox 7 "ValveBiped.Bip01_R_Calf" 1.75 -3 -3 20.25 3 3
$hbox 7 "ValveBiped.Bip01_R_Toe0" -3.5 -1.5 -2.5 3.5 1.5 2.5
$hbox 3 "ValveBiped.Bip01_Spine1" -8.5 -7 -7.5 4.5 5 7.5
$hbox 2 "ValveBiped.Bip01_Spine2" -0.95 -5.5 -7.5 11.05 6.5 7.5
$hbox 1 "ValveBiped.Bip01_Neck1" -0.1 -2.5 -2.75 5.3 3.5 2.75
$hbox 1 "ValveBiped.Bip01_Head1" -1.7 -5.05 -3.7 7.7 4.45 3.7
$hbox 4 "ValveBiped.Bip01_L_UpperArm" -1.5 -2.48 -2.2 11.5 2.48 2.2
$hbox 4 "ValveBiped.Bip01_L_Forearm" 0 -2.3 -2.25 12 2.3 2.25
$hbox 4 "ValveBiped.Bip01_L_Hand" 0.28 -2.37 -2.75 6.33 1.49 1.65
$hbox 5 "ValveBiped.Bip01_R_UpperArm" -1.5 -2.48 -2.2 11.5 2.48 2.2
$hbox 5 "ValveBiped.Bip01_R_Forearm" 0 -2.3 -2.25 12 2.3 2.25
$hbox 5 "ValveBiped.Bip01_R_Hand" 0.28 -2.37 -2.75 6.33 1.49 1.65
$skipboneinbbox

$definebone "ValveBiped" "" 0 0 0 0 0 89.999982 0 0 0 0 0 0

$definebone "ValveBiped.Bip01" "ValveBiped" 0 38.034397 -0.258115 0 0 0 0 0 0 0 0 0
 
$definebone "ValveBiped.Bip01_Pelvis" "ValveBiped.Bip01" 0 0 0 0 0 -0.000004 0 0 0 0 0 0

$definebone "ValveBiped.Bip01_L_Thigh" "ValveBiped.Bip01_Pelvis" 0 0 0 1.099678 -85.926191 -89.999982 0 0 0 0 0 0

$definebone "ValveBiped.Bip01_L_Calf" "ValveBiped.Bip01_L_Thigh" 17.934227 0 0 0 3.974493 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Foot" "ValveBiped.Bip01_L_Calf" 16.55213 0 -0.000002 -3.093972 -70.417317 -5.561759 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Toe0" "ValveBiped.Bip01_L_Foot" 5.708388 0 0 2.12069 -24.321998 -2.886218 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Thigh" "ValveBiped.Bip01_Pelvis" -3.625659 0 0 1.099678 -94.073828 -89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Calf" "ValveBiped.Bip01_R_Thigh" 17.934233 0 0 0 3.974493 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Foot" "ValveBiped.Bip01_R_Calf" 16.552134 0 0 3.093972 -70.417317 6.2029 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Toe0" "ValveBiped.Bip01_R_Foot" 5.708388 0 0 -2.38465 -24.298967 -2.306153 0 0 0 0 0 0

// $definebone "ValveBiped.Bip01_Spine" "ValveBiped.Bip01" 0 3.859306 0.127612 4.288131 89.999982 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine" "ValveBiped.Bip01" 0 3.859306 0.127612 4.288256 89.999968 89.999975 0 0 0 0 0 0

$definebone "ValveBiped.Bip01_Spine1" "ValveBiped.Bip01_Spine" 4.399113 0 0 0 -12.684886 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine2" "ValveBiped.Bip01_Spine1" 3.741474 0 0 0 2.684592 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine4" "ValveBiped.Bip01_Spine2" 5.66819 -0.000001 0 0 21.463629 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Neck1" "ValveBiped.Bip01_Spine4" 5.245049 0 0 0 21.234676 179.999841 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Head1" "ValveBiped.Bip01_Neck1" 3.843636 0.000002 0 -0.000057 30.073238 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Clavicle" "ValveBiped.Bip01_Spine4" 3.976498 2.450276 1.5 -70.185897 -125.072676 26.56496 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_UpperArm" "ValveBiped.Bip01_L_Clavicle" 5.894067 0 0 -7.158182 -37.804732 -77.211792 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_UpperArm" 11.240316 0.000001 -0.000008 0.00001 -7.370125 -0.00001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Hand" "ValveBiped.Bip01_L_Forearm" 11.527793 -0.000008 -0.000034 3.451277 4.40416 76.629723 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger4" "ValveBiped.Bip01_L_Hand" 3.137453 -0.206963 -1.415379 12.019348 -14.640157 -5.05338 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger41" "ValveBiped.Bip01_L_Finger4" 1.448772 0 0 2.546516 -29.416549 1.435073 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger42" "ValveBiped.Bip01_L_Finger41" 0.782463 0 -0.000002 -10.313079 -22.386999 -4.217503 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger3" "ValveBiped.Bip01_L_Hand" 3.470782 0.123871 -0.568987 6.93463 -20.463291 1.181318 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger31" "ValveBiped.Bip01_L_Finger3" 1.738281 -0.000004 -0.000002 -5.353945 -29.766169 -3.054673 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger32" "ValveBiped.Bip01_L_Finger31" 0.995113 0.000002 0 0.652424 -11.62123 0.134179 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger2" "ValveBiped.Bip01_L_Hand" 3.670965 0.088829 0.454203 6.000653 -15.151468 -0.788053 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger21" "ValveBiped.Bip01_L_Finger2" 2.115631 -0.000004 0 -0.860007 -37.318941 -0.655531 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger22" "ValveBiped.Bip01_L_Finger21" 1.143822 -0.000002 0 4.228718 -12.152118 0.909676 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger1" "ValveBiped.Bip01_L_Hand" 3.73246 -0.072464 1.41247 0.224433 -15.516948 2.918815 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger11" "ValveBiped.Bip01_L_Finger1" 1.797998 0.000004 0 4.156413 -33.270029 2.722691 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger12" "ValveBiped.Bip01_L_Finger11" 1.040627 -0.000002 0 3.398735 -10.872374 0.652364 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger0" "ValveBiped.Bip01_L_Hand" 1.076412 -1.012966 1.199774 -22.836551 -13.094091 105.036787 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger01" "ValveBiped.Bip01_L_Finger0" 1.974703 0.000001 0 -7.643191 -17.428918 -0.000014 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger02" "ValveBiped.Bip01_L_Finger01" 1.349831 0 0.000004 0.044763 15.106553 -0.00001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Clavicle" "ValveBiped.Bip01_Spine4" 3.976501 2.450275 -1.5 70.185897 -125.072676 -30.87142 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_UpperArm" "ValveBiped.Bip01_R_Clavicle" 5.894066 0 0.000001 9.783595 -37.296005 80.663462 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_UpperArm" 11.240314 0.000001 -0.000008 -0.000002 -7.370122 0.000005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped.Bip01_R_Forearm" 11.527766 -0.000003 0.000015 -3.451495 4.404045 -76.798674 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger4" "ValveBiped.Bip01_R_Hand" 3.137478 -0.21114 1.414762 -12.01934 -14.639913 5.222391 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger41" "ValveBiped.Bip01_R_Finger4" 1.448772 0 0 -2.54652 -29.416559 -1.435089 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger42" "ValveBiped.Bip01_R_Finger41" 0.782467 0.000002 0 10.313062 -22.387014 4.217485 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger3" "ValveBiped.Bip01_R_Hand" 3.470799 0.122189 0.56935 -6.934684 -20.46305 -1.0123 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger31" "ValveBiped.Bip01_R_Finger3" 1.738285 0.000004 0 5.353947 -29.76618 3.054668 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger32" "ValveBiped.Bip01_R_Finger31" 0.995125 0 0 -0.652428 -11.621236 -0.134183 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger2" "ValveBiped.Bip01_R_Hand" 3.670982 0.090168 -0.453939 -6.000705 -15.151212 0.957067 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger21" "ValveBiped.Bip01_R_Finger2" 2.115625 0.000004 0 0.860006 -37.318948 0.655521 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger22" "ValveBiped.Bip01_R_Finger21" 1.143826 0.000002 0 -4.228719 -12.152127 -0.909683 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger1" "ValveBiped.Bip01_R_Hand" 3.732479 -0.068302 -1.412675 -0.22449 -15.516713 -2.749854 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger11" "ValveBiped.Bip01_R_Finger1" 1.797997 -0.000004 0 -4.156413 -33.270029 -2.722695 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger12" "ValveBiped.Bip01_R_Finger11" 1.040615 0 0 -3.398738 -10.872369 -0.652371 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger0" "ValveBiped.Bip01_R_Hand" 1.076435 -1.009438 -1.202756 22.874705 -13.024464 -104.858205 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger01" "ValveBiped.Bip01_R_Finger0" 1.974703 0 0 7.64319 -17.428927 0.000006 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger02" "ValveBiped.Bip01_R_Finger01" 1.349829 0 0.000004 -0.044757 15.106545 0 0 0 0 0 0 0


// $poseparameter "move_yaw" -180 180 loop 360
// $poseparameter "body_pitch" -90 90 loop 360
// $poseparameter "body_yaw" -90 90 loop 360

$sequence "idle" {
	"dead_hunter_anims\idle.smd"
	activity "act_idle" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "ragdoll" {
	"dead_hunter_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionjoints "dead_hunter_physics.smd"
{
	$mass 100
	$inertia 2
	$damping 0.01
	$rotdamping 0.4
	$rootbone "valvebiped.bip01_pelvis"


	$jointmassbias "ValveBiped.Bip01_Spine1" 0.75
	$jointconstrain "ValveBiped.Bip01_Spine1" x limit -10 10 0
	$jointconstrain "ValveBiped.Bip01_Spine1" y limit -16 16 0
	$jointconstrain "ValveBiped.Bip01_Spine1" z limit -20 30 0

	$jointmassbias "ValveBiped.Bip01_Spine2" 0.75
	$jointconstrain "ValveBiped.Bip01_Spine2" x limit -10 10 0
	$jointconstrain "ValveBiped.Bip01_Spine2" y limit -10 10 0
	$jointconstrain "ValveBiped.Bip01_Spine2" z limit -20 20 0

	$jointmassbias "ValveBiped.Bip01_R_Clavicle" 3
	$jointconstrain "ValveBiped.Bip01_R_Clavicle" x limit -15 15 0
	$jointconstrain "ValveBiped.Bip01_R_Clavicle" y limit -10 10 0
	$jointconstrain "ValveBiped.Bip01_R_Clavicle" z limit 0 45 0

	$jointmassbias "ValveBiped.Bip01_L_Clavicle" 3
	$jointconstrain "ValveBiped.Bip01_L_Clavicle" x limit -15 15 0
	$jointconstrain "ValveBiped.Bip01_L_Clavicle" y limit -10 10 0
	$jointconstrain "ValveBiped.Bip01_L_Clavicle" z limit 0 45 0

	$jointconstrain "ValveBiped.Bip01_L_UpperArm" x limit -15 20 0
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" y limit -40 32 0
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" z limit -80 25 0

	$jointmassbias "ValveBiped.Bip01_L_Forearm" 2
	$jointconstrain "ValveBiped.Bip01_L_Forearm" x limit -40 15 0
	$jointconstrain "ValveBiped.Bip01_L_Forearm" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Forearm" z limit -120 10 0

	$jointmassbias "ValveBiped.Bip01_L_Hand" 4
	$jointconstrain "ValveBiped.Bip01_L_Hand" x limit -25 25 0
	$jointconstrain "ValveBiped.Bip01_L_Hand" y limit -35 35 0
	$jointconstrain "ValveBiped.Bip01_L_Hand" z limit -50 50 0

	$jointconstrain "ValveBiped.Bip01_R_UpperArm" x limit -15 20 0
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" y limit -40 32 0
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" z limit -80 25 0

	$jointmassbias "ValveBiped.Bip01_R_Forearm" 2
	$jointconstrain "ValveBiped.Bip01_R_Forearm" x limit -40 15 0
	$jointconstrain "ValveBiped.Bip01_R_Forearm" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Forearm" z limit -120 10 0

	$jointmassbias "ValveBiped.Bip01_R_Hand" 4
	$jointconstrain "ValveBiped.Bip01_R_Hand" x limit -25 25 0
	$jointconstrain "ValveBiped.Bip01_R_Hand" y limit -35 35 0
	$jointconstrain "ValveBiped.Bip01_R_Hand" z limit -50 50 0

	$jointconstrain "ValveBiped.Bip01_R_Thigh" x limit -25 25 0
	$jointconstrain "ValveBiped.Bip01_R_Thigh" y limit -10 15 0
	$jointconstrain "ValveBiped.Bip01_R_Thigh" z limit -55 25 0

	$jointmassbias "ValveBiped.Bip01_R_Calf" 2
	$jointconstrain "ValveBiped.Bip01_R_Calf" x limit -10 25 0
	$jointconstrain "ValveBiped.Bip01_R_Calf" y limit -5 5 0
	$jointconstrain "ValveBiped.Bip01_R_Calf" z limit -10 115 0

	$jointmassbias "ValveBiped.Bip01_R_Foot" 4
	$jointconstrain "ValveBiped.Bip01_R_Foot" x limit -20 30 0
	$jointconstrain "ValveBiped.Bip01_R_Foot" y limit -30 20 0
	$jointconstrain "ValveBiped.Bip01_R_Foot" z limit -30 50 0

	$jointconstrain "ValveBiped.Bip01_L_Thigh" x limit -25 25 0
	$jointconstrain "ValveBiped.Bip01_L_Thigh" y limit -10 15 0
	$jointconstrain "ValveBiped.Bip01_L_Thigh" z limit -55 25 0

	$jointmassbias "ValveBiped.Bip01_L_Calf" 2
	$jointconstrain "ValveBiped.Bip01_L_Calf" x limit -10 25 0
	$jointconstrain "ValveBiped.Bip01_L_Calf" y limit -5 5 0
	$jointconstrain "ValveBiped.Bip01_L_Calf" z limit -10 115 0

	$jointmassbias "ValveBiped.Bip01_L_Foot" 4
	$jointconstrain "ValveBiped.Bip01_L_Foot" x limit -20 30 0
	$jointconstrain "ValveBiped.Bip01_L_Foot" y limit -30 20 0
	$jointconstrain "ValveBiped.Bip01_L_Foot" z limit -30 50 0

	$jointmassbias "ValveBiped.Bip01_Head1" 2
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
	$jointcollide "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_Spine2"
	$jointcollide "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_Spine1"
	$jointcollide "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_Thigh"
	$jointcollide "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_L_Thigh"
	$jointcollide "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_Head1"
	$jointcollide "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_Spine2"
	$jointcollide "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_Spine1"
	$jointcollide "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_R_Thigh"
	$jointcollide "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_Thigh"
}
