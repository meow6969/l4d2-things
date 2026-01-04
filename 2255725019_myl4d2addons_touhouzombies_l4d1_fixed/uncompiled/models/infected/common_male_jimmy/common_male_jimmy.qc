// Created by Crowbar 0.74

$modelname "infected/common_male_jimmy.mdl"

$bodygroup "Reimu"
{
	studio "head.smd"
}
$bodygroup "Body"
{
	studio "body.smd"
}
$bodygroup "Sleeve"
{
	studio "sleeve.smd"
	/* studio "sleeveR.smd"
	studio "sleeveL.smd" */
	blank
}
$bodygroup "Sock"
{
	studio "sock.smd"
	/* studio "sockR.smd"
	studio "sockL.smd" */
	blank
}
$bodygroup "Shoes"
{
	studio "shoes.smd"
	/* studio "shoesR.smd"
	studio "shoesL.smd" */
	blank
}
$bodygroup "Panty"
{
	studio "panty.smd"
	blank
}
/* $bodygroup "Pants"
{
	studio "pants.smd"
} */
$bodygroup "Saratsu"
{
	studio "saratsu.smd"
}
$bodygroup "Cloth"
{
	studio "cloth.smd"
	blank
}
$bodygroup "Skirt"
{
	studio "skirt.smd"
	blank
}
$bodygroup "Ribbon"
{
	studio "ribbon.smd"
	blank
}
$bodygroup "Tie"
{
	studio "tie.smd"
	blank
}
$bodygroup "Hair"
{
	studio "hair.smd"
	/* studio "hair1.smd"
	studio "hair2.smd"
	studio "hair3.smd" */
}


$surfaceprop "flesh"

$contents "solid"

$illumposition 0.242 1.231 37.227

$eyeposition 0 0 59.3

$forcephonemecrossfade

$ambientboost

$mostlyopaque

$cdmaterials "IKanadeA\Reimu\"

$attachment "eyes" "ValveBiped.Bip01_Head1" 2.72 -3.33 -0.01 rotate 0 -80.1 -90
$attachment "lefteye" "ValveBiped.Bip01_Head1" 2.72 -3.33 -1.3 rotate 0 -80.1 -90
$attachment "righteye" "ValveBiped.Bip01_Head1" 2.72 -3.33 1.31 rotate 0 -80.1 -90
$attachment "nose" "ValveBiped.Bip01_Head1" 1.7 -5.3 0 rotate 0 -80 -90
$attachment "mouth" "ValveBiped.Bip01_Head1" 0.2 -4.9 0 rotate 0 -80 -90
$attachment "amulet" "ValveBiped.Bip01_Spine4" 0.3 5 0 rotate 0 90 90
$attachment "chest" "ValveBiped.Bip01_Spine4" -4 4 0 rotate 0 83 90
$attachment "hips" "ValveBiped.Bip01_Pelvis" 0 0 0 rotate -90 -90 0
$attachment "lefthand" "ValveBiped.Bip01_L_Hand" 3.5 -0.5 0 rotate 0 0 0
$attachment "righthand" "ValveBiped.Bip01_R_Hand" 3.5 -0.5 0 rotate 0 0 0
$attachment "pouch1" "ValveBiped.Bip01_Pelvis" 5.5 1 2 rotate -90 -90 0
$attachment "pouch2" "ValveBiped.Bip01_Pelvis" 6.5 0.5 -2 rotate -90 -90 0
$attachment "physgun_attachment" "ValveBiped.Bip01_R_Hand" 2.33 -1.88 0.1 rotate 16.28 17.42 -167.58
$attachment "Emp_Holster" "ValveBiped.Bip01_Pelvis" -6.44 2.22 -1.95 rotate -1.37 -103.07 90.28
$attachment "R_shoulderBladeAim" "ValveBiped.Bip01_Spine" 2.62 -2 -3.22 rotate 0 0 0
$attachment "L_shoulderBladeAim" "ValveBiped.Bip01_Spine" 2.62 -2 3.15 rotate 0 0 0
$attachment "forward" "ValveBiped.forward" 0 0 0 rotate 0 0 0
$attachment "anim_attachment_head" "ValveBiped.Bip01_Head1" 0 0 0 rotate -90 -90 0

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 72

$hboxset "default"
$hbox 3 "ValveBiped.Bip01_Pelvis" -6 -4.5 -4.5 6 4.5 4.5
$hbox 6 "ValveBiped.Bip01_L_Thigh" 3 -3.4 -2.55 17 2.6 2.45
$hbox 6 "ValveBiped.Bip01_L_Calf" 0 -2 -2.5 20 3 2.5
$hbox 6 "ValveBiped.Bip01_L_Toe0" -7.5 -1.5 -1.35 2.5 1.5 2.45
$hbox 7 "ValveBiped.Bip01_R_Thigh" 5 -3.4 -2.85 19 2.6 2.15
$hbox 7 "ValveBiped.Bip01_R_Calf" 0 -2 -2.5 20 3 2.5
$hbox 7 "ValveBiped.Bip01_R_Toe0" -7.5 -1.5 -1.9 2.5 1.5 1.9
$hbox 3 "ValveBiped.Bip01_Spine1" -5 -5 -5 5 5 5
$hbox 2 "ValveBiped.Bip01_Spine2" 1.25 -2.55 -5 10.75 5.45 5
$hbox 1 "ValveBiped.Bip01_Neck1" -0.5 -2.5 -2.25 2.5 2.5 2.25
$hbox 1 "ValveBiped.Bip01_Head1" -1 -4 -4.25 8 4 4.25
$hbox 4 "ValveBiped.Bip01_L_UpperArm" 0 -2.1 -2 11 1.9 2
$hbox 4 "ValveBiped.Bip01_L_Forearm" 0.5 -1.75 -1.75 8.5 1.75 1.75
$hbox 4 "ValveBiped.Bip01_L_Hand" 0.06 -1.9 -1.85 6.56 1.1 1.85
$hbox 5 "ValveBiped.Bip01_R_UpperArm" 0 -2.1 -2 11 1.9 2
$hbox 5 "ValveBiped.Bip01_R_Forearm" 0.5 -1.75 -1.75 11.5 1.75 1.75
$hbox 5 "ValveBiped.Bip01_R_Hand" 1.06 -1.44 -2.4 5.56 0.56 1.3
$skipboneinbbox

$definebone "ValveBiped.Bip01_Pelvis" "" 0 -0.814058 36.832977 0 0 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Thigh" "ValveBiped.Bip01_Pelvis" 2.927098 0 0 0.474409 -91.792135 -89.954431 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Calf" "ValveBiped.Bip01_L_Thigh" 15.037291 -0.012395 0.055023 -1.47783 3.634789 -0.132984 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Foot" "ValveBiped.Bip01_L_Calf" 18.084864 0.000107 -0.000002 -0.416426 -60.175927 0.117743 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Thigh" "ValveBiped.Bip01_Pelvis" -2.927098 0 0 0.705941 -88.26661 -90.024619 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Calf" "ValveBiped.Bip01_R_Thigh" 15.03652 -0.01044 -0.053129 1.413028 3.263853 0.157621 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Foot" "ValveBiped.Bip01_R_Calf" 18.084902 0.000112 0 -1.170209 -59.817185 1.71217 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine" "ValveBiped.Bip01_Pelvis" 0 3.137291 0.24835 0.745705 89.999982 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine1" "ValveBiped.Bip01_Spine" 2.801945 -0.00002 -0.000001 0 -8.256211 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine2" "ValveBiped.Bip01_Spine1" 2.793583 -0.000014 -0.000001 0 -7.685947 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine4" "ValveBiped.Bip01_Spine2" 5.1171 -0.000061 0 0 18.685589 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Neck1" "ValveBiped.Bip01_Spine4" 4.291016 0.000054 0 0 18.767232 179.999841 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Head1" "ValveBiped.Bip01_Neck1" 2.05249 -0.000021 0 -0.000057 20.137008 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Clavicle" "ValveBiped.Bip01_Spine4" 3.150833 1.164207 1.317461 -71.367451 -113.858625 15.379677 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_UpperArm" "ValveBiped.Bip01_L_Clavicle" 2.376375 0 -0.000006 -9.255276 -31.187808 -78.274111 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_UpperArm" 8.345259 0.000034 0 0.306586 -3.117522 -0.339138 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Hand" "ValveBiped.Bip01_L_Forearm" 7.671072 -0.000029 -0.000027 -0.681771 0.098949 72.229285 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Clavicle" "ValveBiped.Bip01_Spine4" 3.150833 1.164207 -1.311068 71.587418 -116.670942 -22.660939 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_UpperArm" "ValveBiped.Bip01_R_Clavicle" 2.376386 -0.000008 -0.000002 12.049307 -28.552419 83.419388 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_UpperArm" 8.345268 0.000021 -0.000004 -3.126442 -1.907889 1.753249 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped.Bip01_R_Forearm" 7.671049 -0.00008 0.000004 0.376626 3.333986 -72.977129 0 0 0 0 0 0
$definebone "ValveBiped.forward" "ValveBiped.Bip01_Head1" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Toe0" "ValveBiped.Bip01_L_Foot" 4.739561 0.000015 0.000002 0.189305 -29.066768 -1.647253 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Toe0" "ValveBiped.Bip01_R_Foot" 4.739573 0.000013 0 0.506609 -29.908377 -0.55978 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger4" "ValveBiped.Bip01_L_Hand" 2.71112 0.353554 -1.055033 2.726815 -3.415677 21.239614 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger41" "ValveBiped.Bip01_L_Finger4" 0.88905 0 -0.000003 -1.873571 2.982144 -1.729525 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger42" "ValveBiped.Bip01_L_Finger41" 0.597713 -0.000008 -0.000003 1.962266 -1.991881 0.403998 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger3" "ValveBiped.Bip01_L_Hand" 2.906734 0.220963 -0.413929 2.413466 -2.390884 21.178583 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger31" "ValveBiped.Bip01_L_Finger3" 1.10732 0.000004 -0.000002 -0.034091 -0.20362 -1.894132 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger32" "ValveBiped.Bip01_L_Finger31" 0.805333 0 -0.000002 -0.862073 4.950248 0.485075 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger2" "ValveBiped.Bip01_L_Hand" 2.892799 -0.069725 0.173092 -0.678616 3.113343 21.582918 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger21" "ValveBiped.Bip01_L_Finger2" 1.335582 0.000004 -0.000003 -2.584327 -5.319392 -8.068389 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger22" "ValveBiped.Bip01_L_Finger21" 0.860883 0 0.000001 2.06935 1.871566 0.94687 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger1" "ValveBiped.Bip01_L_Hand" 2.911537 -0.329731 0.785534 -0.874452 2.140868 17.18415 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger11" "ValveBiped.Bip01_L_Finger1" 1.127885 0 0.000002 -0.059245 -2.547426 -0.692019 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger12" "ValveBiped.Bip01_L_Finger11" 0.809896 -0.000004 -0.000003 0.221103 -3.395356 2.628557 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger0" "ValveBiped.Bip01_L_Hand" 1.047379 -0.739429 0.515881 -30.905687 -25.037848 123.053344 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger01" "ValveBiped.Bip01_L_Finger0" 1.149368 -0.00001 -0.000004 -6.981258 -11.830836 5.742298 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger02" "ValveBiped.Bip01_L_Finger01" 1.065289 0.000001 0.000015 3.036103 -4.63392 -0.14748 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Ulna" "ValveBiped.Bip01_L_Forearm" 4.359096 -0.000011 0 0.000051 0.000171 -29.3865 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger4" "ValveBiped.Bip01_R_Hand" 2.845345 0.553013 0.859371 1.225218 -3.757557 -21.811582 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger41" "ValveBiped.Bip01_R_Finger4" 0.83452 -0.000004 0.000004 -1.671547 1.322341 -2.000304 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger42" "ValveBiped.Bip01_R_Finger41" 0.63161 -0.000004 0 0.79194 3.764068 2.729463 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger3" "ValveBiped.Bip01_R_Hand" 2.986405 0.396011 0.231329 1.334649 -0.421172 -16.885131 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger31" "ValveBiped.Bip01_R_Finger3" 1.102688 -0.000004 -0.000002 0.758883 -1.479772 -0.320272 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger32" "ValveBiped.Bip01_R_Finger31" 0.764538 -0.000004 0.000001 1.035679 8.063712 1.373792 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger2" "ValveBiped.Bip01_R_Hand" 2.994102 0.287048 -0.409327 2.156443 -0.055509 -17.887632 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger21" "ValveBiped.Bip01_R_Finger2" 1.319735 0.000019 0.000007 0.048301 -3.055695 8.301759 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger22" "ValveBiped.Bip01_R_Finger21" 0.959333 -0.000004 -0.000001 -0.904984 2.522166 -1.201378 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger1" "ValveBiped.Bip01_R_Hand" 2.939399 -0.086571 -1.04867 -0.257827 -3.698199 -12.960421 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger11" "ValveBiped.Bip01_R_Finger1" 1.194924 0.000011 0.000007 1.346223 5.056024 -4.703059 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger12" "ValveBiped.Bip01_R_Finger11" 0.830587 -0.000008 0.000003 0.54133 -2.291637 -2.091861 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger0" "ValveBiped.Bip01_R_Hand" 0.949157 -0.693619 -0.507692 31.00715 -24.817544 -116.578707 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger01" "ValveBiped.Bip01_R_Finger0" 1.150742 -0.00001 0 2.984989 -10.440329 4.053955 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger02" "ValveBiped.Bip01_R_Finger01" 1.06657 -0.000003 0.000031 -0.317372 -3.258534 7.534161 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Ulna" "ValveBiped.Bip01_R_Forearm" 4.359089 -0.000042 -0.000011 0.00019 -0.001029 29.381674 0 0 0 0 0 0
$definebone "sleeveR" "ValveBiped.Bip01_R_Forearm" 4.570335 1.230423 1.7976 -4.093653 2.363225 -33.23528 0 0 0 0 0 0
$definebone "ValveBiped.SkirtFL_Helper" "ValveBiped.Bip01_Pelvis" 4.277519 3.645744 2.245929 0 -0.000115 0 0 0 0 0 0 0
$definebone "SkirtFL01" "ValveBiped.SkirtFL_Helper" -1.235546 -1.007114 0.823418 -17.498588 -179.729816 -66.448329 0 0 0 0 0 0
$definebone "SkirtFL02" "SkirtFL01" -0.066744 -0.033091 6.296062 -0.000059 0.000002 6.076779 0 0 0 0 0 0
$definebone "SkirtFL03" "SkirtFL02" -0.233299 0.797945 6.712662 0.000056 0.000003 -2.226812 0 0 0 0 0 0
$definebone "SkirtLF01" "ValveBiped.SkirtFL_Helper" 2.803624 -3.834927 0.288095 -41.553997 168.80844 -52.001823 0 0 0 0 0 0
$definebone "SkirtLF02" "SkirtLF01" -2.040664 0.030758 5.862432 -18.578726 4.846597 0.987774 0 0 0 0 0 0
$definebone "ValveBiped.SkirtBL_Helper" "ValveBiped.Bip01_Pelvis" 4.277521 3.645733 -4.011556 0 -0.000115 0 0 0 0 0 0 0
$definebone "SkirtLB01" "ValveBiped.SkirtBL_Helper" 2.089627 -3.37014 -0.613847 -48.661946 8.788201 118.482458 0 0 0 0 0 0
$definebone "SkirtLB02" "SkirtLB01" -0.060705 0.00544 6.549997 -3.318459 2.510414 4.873232 0 0 0 0 0 0
$definebone "SkirtBL01" "ValveBiped.SkirtBL_Helper" -2.07663 -0.522385 -0.616947 -15.151468 -3.205069 124.607376 0 0 0 0 0 0
$definebone "SkirtBL02" "SkirtBL01" 0.053788 -0.017923 6.004162 0.000005 -0.00005 2.360816 0 0 0 0 0 0
$definebone "SkirtBL03" "SkirtBL02" 0.031788 0.6506 7.095337 0.000006 0.000004 -4.722491 0 0 0 0 0 0
$definebone "ValveBiped.SkirtBR_Helper" "ValveBiped.Bip01_Pelvis" -4.283147 3.645767 -4.011562 0 -0.000115 0 0 0 0 0 0 0
$definebone "SkirtBR01" "ValveBiped.SkirtBR_Helper" 2.087362 -0.465443 -0.607979 -16.433676 -178.895222 -122.565791 0 0 0 0 0 0
$definebone "SkirtBR02" "SkirtBR01" 0.053783 0.192394 6.160192 0.000001 0 -2.253844 0 0 0 0 0 0
$definebone "SkirtBR03" "SkirtBR02" 0.031784 -0.518745 6.994171 0.000003 0.000001 4.722488 0 0 0 0 0 0
$definebone "SkirtRB01" "ValveBiped.SkirtBR_Helper" -1.952573 -3.255466 -0.613313 -48.817486 173.296106 -119.34354 0 0 0 0 0 0
$definebone "SkirtRB02" "SkirtRB01" -0.160635 -0.077957 6.599901 -3.106799 -2.224407 -1.865609 0 0 0 0 0 0
$definebone "ValveBiped.SkirtFR_Helper" "ValveBiped.Bip01_Pelvis" -4.283151 3.645763 2.245916 0 -0.000115 0 0 0 0 0 0 0
$definebone "SkirtRF01" "ValveBiped.SkirtFR_Helper" -2.280477 -2.980415 0.203456 -47.617149 -15.740582 67.326261 0 0 0 0 0 0
$definebone "SkirtRF02" "SkirtRF01" -0.062221 -0.645021 7.496574 0.719578 0.495664 3.273651 0 0 0 0 0 0
$definebone "SkirtFR01" "ValveBiped.SkirtFR_Helper" 1.100758 -0.903439 0.711817 -17.777335 -1.411883 61.420503 0 0 0 0 0 0
$definebone "SkirtFR02" "SkirtFR01" -0.066733 -0.536026 6.383455 0 0.000006 3.656502 0 0 0 0 0 0
$definebone "SkirtFR03" "SkirtFR02" 0.03223 -0.142296 6.866489 0 0.000005 2.226746 0 0 0 0 0 0
$definebone "SkirtR01" "ValveBiped.Bip01_Pelvis" -5.3748 3.421856 -1.292935 -89.965722 50.744573 0 0 0 0 0 0 0
$definebone "SkirtR02" "SkirtR01" 0.000496 -0.43487 6.885414 0 0 4.510784 0 0 0 0 0 0
$definebone "SkirtR03" "SkirtR02" -0.000005 -0.165535 6.972929 0 0 1.707132 0 0 0 0 0 0
$definebone "SkirtL01" "ValveBiped.Bip01_Pelvis" 5.469971 3.343349 -0.719049 89.972012 -62.135091 0 0 0 0 0 0 0
$definebone "SkirtL02" "SkirtL01" -0.000519 0.973736 6.95969 0 0 -7.024576 0 0 0 0 0 0
$definebone "SkirtL03" "SkirtL02" 0.000001 -0.223904 6.820126 0 0 1.707125 0 0 0 0 0 0
$definebone "ribbon" "ValveBiped.Bip01_Spine" 2.00671 -5.194386 -0.017843 -89.265627 0.746048 20.216185 0 0 0 0 0 0
$definebone "ribbonL" "ribbon" 2.984217 -0.653542 2.448051 37.656803 -16.509556 11.430854 0 0 0 0 0 0
$definebone "ribbonR" "ribbon" -3.781753 -0.683516 2.366665 39.169117 -162.541823 63.781311 0 0 0 0 0 0
$definebone "tie" "ValveBiped.Bip01_Spine4" 1.517975 4.585085 0.141492 -89.265108 -1.997503 -34.843568 0 0 0 0 0 0
$definebone "hair01" "ValveBiped.Bip01_Head1" 7.51403 5.809536 0.017856 89.265395 0.63816 -179.989364 0 0 0 0 0 0
$definebone "hair02" "hair01" -0.070803 -2.388322 5.522484 0 0 0 0 0 0 0 0 0
$definebone "miterLF" "ValveBiped.Bip01_Head1" 1.415661 -2.044655 -3.621219 89.265627 0.638103 168.954961 0 0 0 0 0 0
$definebone "miterLB" "ValveBiped.Bip01_Head1" 5.299858 4.644312 -3.248577 46.817023 -5.575912 -171.05896 0 0 0 0 0 0
$definebone "miterRB" "ValveBiped.Bip01_Head1" 5.34502 4.701498 3.299809 -45.868378 -9.250575 -7.763406 0 0 0 0 0 0
$definebone "miterRF" "ValveBiped.Bip01_Head1" 1.415676 -2.044674 3.542303 -88.971902 -122.826035 134.514702 0 0 0 0 0 0
$definebone "hairB" "ValveBiped.Bip01_Head1" 1.90696 3.979175 0.017852 89.265395 0.638103 -179.989364 0 0 0 0 0 0
$definebone "miterL" "ValveBiped.Bip01_Head1" 8.304138 3.999334 -2.460399 -1.209228 0.627904 -179.99939 0 0 0 0 0 0
$definebone "miterR" "ValveBiped.Bip01_Head1" 8.304161 4.00103 2.569059 -1.209212 -179.372037 -179.999582 0 0 0 0 0 0
$definebone "hairF" "ValveBiped.Bip01_Head1" 4.578972 -4.663102 0.155579 89.259835 0.638103 -166.068536 0 0 0 0 0 0
$definebone "hairFL" "ValveBiped.Bip01_Head1" 4.678978 -4.162806 3.006114 89.260061 0.637989 -166.068536 0 0 0 0 0 0
$definebone "hairFR" "ValveBiped.Bip01_Head1" 4.678978 -4.162789 -2.328863 89.260061 0.637989 -166.068536 0 0 0 0 0 0

$proceduralbones "common_male_jimmy.vrd"

$jigglebone "sleeveR"
{
	is_flexible
	{
		length 30
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		allow_length_flex
		along_stiffness 100
		along_damping 0
		angle_constraint 60.000002
	}
}
$jigglebone "SkirtFL01"
{
	is_flexible
	{
		length 15
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 10
		yaw_stiffness 100
		yaw_damping 10
		allow_length_flex
		along_stiffness 100
		along_damping 0
		pitch_constraint -70 0
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "SkirtFL02"
{
	is_flexible
	{
		length 20
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 9
		yaw_stiffness 100
		yaw_damping 9
		allow_length_flex
		along_stiffness 100
		along_damping 0
		pitch_constraint -79.999998 0
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 30.000001
	}
}
$jigglebone "SkirtFL03"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 9
		yaw_stiffness 100
		yaw_damping 9
		allow_length_flex
		along_stiffness 100
		along_damping 0
		pitch_constraint -90.000003 0
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 39.999999
	}
}
$jigglebone "SkirtLF01"
{
	is_flexible
	{
		length 15
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 10
		yaw_stiffness 100
		yaw_damping 10
		allow_length_flex
		along_stiffness 100
		along_damping 0
		pitch_constraint -70 0
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "SkirtLF02"
{
	is_flexible
	{
		length 20
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 9
		yaw_stiffness 100
		yaw_damping 9
		allow_length_flex
		along_stiffness 100
		along_damping 0
		pitch_constraint -79.999998 0
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 30.000001
	}
}
$jigglebone "SkirtLB01"
{
	is_flexible
	{
		length 15
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 10
		yaw_stiffness 100
		yaw_damping 10
		allow_length_flex
		along_stiffness 100
		along_damping 0
		pitch_constraint -70 0
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "SkirtLB02"
{
	is_flexible
	{
		length 20
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 9
		yaw_stiffness 100
		yaw_damping 9
		allow_length_flex
		along_stiffness 100
		along_damping 0
		pitch_constraint -79.999998 0
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 30.000001
	}
}
$jigglebone "SkirtBL01"
{
	is_flexible
	{
		length 15
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 10
		yaw_stiffness 100
		yaw_damping 10
		allow_length_flex
		along_stiffness 100
		along_damping 0
		pitch_constraint -70 0
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "SkirtBL02"
{
	is_flexible
	{
		length 20
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 9
		yaw_stiffness 100
		yaw_damping 9
		allow_length_flex
		along_stiffness 100
		along_damping 0
		pitch_constraint -79.999998 0
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 30.000001
	}
}
$jigglebone "SkirtBL03"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 9
		yaw_stiffness 100
		yaw_damping 9
		allow_length_flex
		along_stiffness 100
		along_damping 0
		pitch_constraint -90.000003 0
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 39.999999
	}
}
$jigglebone "SkirtBR01"
{
	is_flexible
	{
		length 15
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 10
		yaw_stiffness 100
		yaw_damping 10
		allow_length_flex
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 70
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "SkirtBR02"
{
	is_flexible
	{
		length 20
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 9
		yaw_stiffness 100
		yaw_damping 9
		allow_length_flex
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 79.999998
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 30.000001
	}
}
$jigglebone "SkirtBR03"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 9
		yaw_stiffness 100
		yaw_damping 9
		allow_length_flex
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 90.000003
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 39.999999
	}
}
$jigglebone "SkirtRB01"
{
	is_flexible
	{
		length 15
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 10
		yaw_stiffness 100
		yaw_damping 10
		allow_length_flex
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 70
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "SkirtRB02"
{
	is_flexible
	{
		length 20
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 9
		yaw_stiffness 100
		yaw_damping 9
		allow_length_flex
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 79.999998
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 30.000001
	}
}
$jigglebone "SkirtRF01"
{
	is_flexible
	{
		length 15
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 10
		yaw_stiffness 100
		yaw_damping 10
		allow_length_flex
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 70
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "SkirtRF02"
{
	is_flexible
	{
		length 20
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 9
		yaw_stiffness 100
		yaw_damping 9
		allow_length_flex
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 79.999998
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 30.000001
	}
}
$jigglebone "SkirtFR01"
{
	is_flexible
	{
		length 15
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 10
		yaw_stiffness 100
		yaw_damping 10
		allow_length_flex
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 70
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "SkirtFR02"
{
	is_flexible
	{
		length 20
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 9
		yaw_stiffness 100
		yaw_damping 9
		allow_length_flex
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 79.999998
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 30.000001
	}
}
$jigglebone "SkirtFR03"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 9
		yaw_stiffness 100
		yaw_damping 9
		allow_length_flex
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 90.000003
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 39.999999
	}
}
$jigglebone "SkirtR01"
{
	is_flexible
	{
		length 15
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 10
		yaw_stiffness 100
		yaw_damping 10
		allow_length_flex
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 70
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "SkirtR02"
{
	is_flexible
	{
		length 20
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 9
		yaw_stiffness 100
		yaw_damping 9
		allow_length_flex
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 79.999998
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 30.000001
	}
}
$jigglebone "SkirtR03"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 9
		yaw_stiffness 100
		yaw_damping 9
		allow_length_flex
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 90.000003
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 39.999999
	}
}
$jigglebone "SkirtL01"
{
	is_flexible
	{
		length 15
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 10
		yaw_stiffness 100
		yaw_damping 10
		allow_length_flex
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 70
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 19.999999
	}
}
$jigglebone "SkirtL02"
{
	is_flexible
	{
		length 20
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 9
		yaw_stiffness 100
		yaw_damping 9
		allow_length_flex
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 79.999998
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 30.000001
	}
}
$jigglebone "SkirtL03"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 9
		yaw_stiffness 100
		yaw_damping 9
		allow_length_flex
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 90.000003
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 39.999999
	}
}
$jigglebone "ribbon"
{
	is_flexible
	{
		length 30
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		allow_length_flex
		along_stiffness 100
		along_damping 0
		angle_constraint 50
	}
}
$jigglebone "ribbonL"
{
	is_flexible
	{
		length 30
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		allow_length_flex
		along_stiffness 100
		along_damping 0
		angle_constraint 50
	}
}
$jigglebone "ribbonR"
{
	is_flexible
	{
		length 30
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		allow_length_flex
		along_stiffness 100
		along_damping 0
		angle_constraint 50
	}
}
$jigglebone "tie"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		allow_length_flex
		along_stiffness 100
		along_damping 0
		pitch_constraint 0 90.000003
		pitch_friction 0
		pitch_bounce 0
		angle_constraint 60.999996
	}
}
$jigglebone "hair01"
{
	is_flexible
	{
		length 30
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		allow_length_flex
		along_stiffness 100
		along_damping 0
		angle_constraint 50
	}
}
$jigglebone "hair02"
{
	is_flexible
	{
		length 30
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		allow_length_flex
		along_stiffness 100
		along_damping 0
		angle_constraint 50
	}
}
$jigglebone "miterLF"
{
	is_flexible
	{
		length 30
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		allow_length_flex
		along_stiffness 100
		along_damping 0
		angle_constraint 50
	}
}
$jigglebone "miterLB"
{
	is_flexible
	{
		length 30
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		allow_length_flex
		along_stiffness 100
		along_damping 0
		angle_constraint 50
	}
}
$jigglebone "miterRB"
{
	is_flexible
	{
		length 30
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		allow_length_flex
		along_stiffness 100
		along_damping 0
		angle_constraint 50
	}
}
$jigglebone "miterRF"
{
	is_flexible
	{
		length 30
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		allow_length_flex
		along_stiffness 100
		along_damping 0
		angle_constraint 50
	}
}
$jigglebone "hairB"
{
	is_flexible
	{
		length 30
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		allow_length_flex
		along_stiffness 100
		along_damping 0
		angle_constraint 50
	}
}
$jigglebone "miterL"
{
	is_flexible
	{
		length 30
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		allow_length_flex
		along_stiffness 100
		along_damping 0
		angle_constraint 50
	}
}
$jigglebone "miterR"
{
	is_flexible
	{
		length 30
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		allow_length_flex
		along_stiffness 100
		along_damping 0
		angle_constraint 50
	}
}
$jigglebone "hairF"
{
	is_flexible
	{
		length 30
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		allow_length_flex
		along_stiffness 100
		along_damping 0
		angle_constraint 50
	}
}
$jigglebone "hairFL"
{
	is_flexible
	{
		length 30
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		allow_length_flex
		along_stiffness 100
		along_damping 0
		angle_constraint 50
	}
}
$jigglebone "hairFR"
{
	is_flexible
	{
		length 30
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		allow_length_flex
		along_stiffness 100
		along_damping 0
		angle_constraint 50
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

$ikautoplaylock "rhand" 0 0
$ikautoplaylock "lhand" 0 0
$ikautoplaylock "rfoot" 0.5 0.1
$ikautoplaylock "lfoot" 0.5 0.1

$weightlist "weights_common_male_aim_matrix_run" {
	 "ValveBiped.Bip01_Pelvis" 0
	 "ValveBiped.Bip01_L_Thigh" 0
	 "ValveBiped.Bip01_L_Calf" 0
	 "ValveBiped.Bip01_L_Foot" 0
	 "ValveBiped.Bip01_R_Thigh" 0
	 "ValveBiped.Bip01_R_Calf" 0
	 "ValveBiped.Bip01_R_Foot" 0
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
	 "ValveBiped.forward" 0
	 "ValveBiped.Bip01_L_Toe0" 0
	 "ValveBiped.Bip01_R_Toe0" 0
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
	 "ValveBiped.Bip01_L_Ulna" 0
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
	 "ValveBiped.Bip01_R_Ulna" 0
	 "sleeveR" 0
	 "ValveBiped.SkirtFL_Helper" 0
	 "SkirtFL01" 0
	 "SkirtFL02" 0
	 "SkirtFL03" 0
	 "SkirtLF01" 0
	 "SkirtLF02" 0
	 "ValveBiped.SkirtBL_Helper" 0
	 "SkirtLB01" 0
	 "SkirtLB02" 0
	 "SkirtBL01" 0
	 "SkirtBL02" 0
	 "SkirtBL03" 0
	 "ValveBiped.SkirtBR_Helper" 0
	 "SkirtBR01" 0
	 "SkirtBR02" 0
	 "SkirtBR03" 0
	 "SkirtRB01" 0
	 "SkirtRB02" 0
	 "ValveBiped.SkirtFR_Helper" 0
	 "SkirtRF01" 0
	 "SkirtRF02" 0
	 "SkirtFR01" 0
	 "SkirtFR02" 0
	 "SkirtFR03" 0
	 "SkirtR01" 0
	 "SkirtR02" 0
	 "SkirtR03" 0
	 "SkirtL01" 0
	 "SkirtL02" 0
	 "SkirtL03" 0
	 "ribbon" 0
	 "ribbonL" 0
	 "ribbonR" 0
	 "tie" 0
	 "hair01" 0
	 "hair02" 0
	 "miterLF" 0
	 "miterLB" 0
	 "miterRB" 0
	 "miterRF" 0
	 "hairB" 0
	 "miterL" 0
	 "miterR" 0
	 "hairF" 0
	 "hairFL" 0
	 "hairFR" 0
}

// $animation "a_proportions_corrective_animation" "common_male_jimmy_anims\a_proportions_corrective_animation.smd" {
// }

/* $animation "a_proportions_corrective_animation" "common_male_jimmy_anims\a_proportions_corrective_animation.smd" {
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 3
}

$animation "a_proportions" "common_male_jimmy_anims\a_proportions.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_proportions_corrective_animation" 0
} */

$sequence "ragdoll" {
	"common_male_jimmy_anims\ragdoll.smd"
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
	"common_male_jimmy_anims\ragdoll_01.smd"
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
	"common_male_jimmy_anims\ragdoll_02.smd"
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
	"common_male_jimmy_anims\ragdoll_03.smd"
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
	"common_male_jimmy_anims\ragdoll_04.smd"
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
	"common_male_jimmy_anims\ragdoll_05.smd"
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
	"common_male_jimmy_anims\ragdoll_06.smd"
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
	"common_male_jimmy_anims\reference.smd"
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

$collisionjoints "common_male_jimmy_physics.smd"
{
	$mass 100
	$inertia 10
	$damping 0.05
	$rotdamping 0.01
	$rootbone " "

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
	$jointconstrain "ValveBiped.Bip01_R_Clavicle" x limit -12 12 0
	$jointconstrain "ValveBiped.Bip01_R_Clavicle" y limit -8 8 0
	$jointconstrain "ValveBiped.Bip01_R_Clavicle" z limit 0 15 0

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

	$jointmassbias "ValveBiped.Bip01_R_UpperArm" 5
	$jointrotdamping "ValveBiped.Bip01_R_UpperArm" 5
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" x limit -50 80 0
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" y limit -45 70 0
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" z limit -100 60 0

	$jointmassbias "ValveBiped.Bip01_R_Forearm" 4
	$jointrotdamping "ValveBiped.Bip01_R_Forearm" 4
	$jointconstrain "ValveBiped.Bip01_R_Forearm" x limit -40 30 0
	$jointconstrain "ValveBiped.Bip01_R_Forearm" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Forearm" z limit -120 10 0

	$jointconstrain "ValveBiped.Bip01_R_Hand" x limit -50 50 0
	$jointconstrain "ValveBiped.Bip01_R_Hand" y limit -35 35 0
	$jointconstrain "ValveBiped.Bip01_R_Hand" z limit -50 50 0

	$jointmassbias "ValveBiped.Bip01_R_Thigh" 7
	$jointrotdamping "ValveBiped.Bip01_R_Thigh" 7
	$jointconstrain "ValveBiped.Bip01_R_Thigh" x limit -25 25 0
	$jointconstrain "ValveBiped.Bip01_R_Thigh" y limit -10 30 0
	$jointconstrain "ValveBiped.Bip01_R_Thigh" z limit -55 50 0

	$jointmassbias "ValveBiped.Bip01_R_Calf" 4
	$jointconstrain "ValveBiped.Bip01_R_Calf" x limit -10 25 0
	$jointconstrain "ValveBiped.Bip01_R_Calf" y limit -5 5 0
	$jointconstrain "ValveBiped.Bip01_R_Calf" z limit -10 140 0

	$jointrotdamping "ValveBiped.Bip01_R_Foot" 2
	$jointconstrain "ValveBiped.Bip01_R_Foot" x limit -20 30 0
	$jointconstrain "ValveBiped.Bip01_R_Foot" y limit -30 30 0
	$jointconstrain "ValveBiped.Bip01_R_Foot" z limit -30 50 0

	$jointmassbias "ValveBiped.Bip01_L_Thigh" 7
	$jointrotdamping "ValveBiped.Bip01_L_Thigh" 7
	$jointconstrain "ValveBiped.Bip01_L_Thigh" x limit -25 25 0
	$jointconstrain "ValveBiped.Bip01_L_Thigh" y limit -10 30 0
	$jointconstrain "ValveBiped.Bip01_L_Thigh" z limit -55 59 0

	$jointmassbias "ValveBiped.Bip01_L_Calf" 4
	$jointconstrain "ValveBiped.Bip01_L_Calf" x limit -10 25 0
	$jointconstrain "ValveBiped.Bip01_L_Calf" y limit -5 5 0
	$jointconstrain "ValveBiped.Bip01_L_Calf" z limit -10 140 0

	$jointrotdamping "ValveBiped.Bip01_L_Foot" 2
	$jointconstrain "ValveBiped.Bip01_L_Foot" x limit -20 30 0
	$jointconstrain "ValveBiped.Bip01_L_Foot" y limit -30 30 0
	$jointconstrain "ValveBiped.Bip01_L_Foot" z limit -30 50 0

	$jointmassbias "ValveBiped.Bip01_Head1" 2
	$jointrotdamping "ValveBiped.Bip01_Head1" 3
	$jointconstrain "ValveBiped.Bip01_Head1" x limit -50 50 0
	$jointconstrain "ValveBiped.Bip01_Head1" y limit -20 20 0
	$jointconstrain "ValveBiped.Bip01_Head1" z limit -26 30 0
}

$collisiontext
{
	animatedfriction 
	{
		"animfrictionmin" "100.000000"
		"animfrictionmax" "500.000000"
		"animfrictiontimein" "0.100000"
		"animfrictiontimeout" "0.200000"
		"animfrictiontimehold" "1.000000"
	}
	editparams 
	{
		"rootname" "valvebiped.bip01_pelvis"
		"totalmass" "50.000000"
	}
}
