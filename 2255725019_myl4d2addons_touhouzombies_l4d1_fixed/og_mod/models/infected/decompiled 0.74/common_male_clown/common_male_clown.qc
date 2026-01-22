// Created by Crowbar 0.74

$modelname "infected/common_male_clown.mdl"

$bodygroup "body"
{
	studio "seiga_kaku.smd"
}
$bodygroup "Ribbon Hair"
{
	studio "ribbon_hair.smd"
	blank
}
$bodygroup "Hair Stick"
{
	studio "hair_stick.smd"
	blank
}
$bodygroup "Glasses"
{
	blank
	studio "glasses.smd"
}
$bodygroup "Line"
{
	studio "line.smd"
	blank
}
$bodygroup "Flower"
{
	studio "flower.smd"
	blank
}
$bodygroup "Pants Under"
{
	studio "pants_under.smd"
}
$bodygroup "Skirt Under"
{
	studio "skirt_under2.smd"
	blank
}
$bodygroup "Ticket Knee Right"
{
	studio "paper_knee_r.smd"
	blank
}
$bodygroup "Ticket Knee Left"
{
	studio "paper_knee_l.smd"
	blank
}


$surfaceprop "flesh"

$contents "solid"

$illumposition 0 -1.155 37.45

$ambientboost

$mostlyopaque

$cdmaterials "pacagma\touhou\seiga_kaku\"

$attachment "Head" "ValveBiped.Bip01_Head1" 0 0 0 rotate 0 0 0
$attachment "RArm" "ValveBiped.Bip01_R_UpperArm" 0 0 0 rotate 0 0 0
$attachment "LArm" "ValveBiped.Bip01_L_UpperArm" 0 0 0 rotate 0 0 0
$attachment "RLeg" "ValveBiped.Bip01_R_Thigh" 0 0 0 rotate 0 0 0
$attachment "LLeg" "ValveBiped.Bip01_L_Thigh" 0 0 0 rotate 0 0 0
$attachment "lfoot" "ValveBiped.Bip01_L_Calf" -3.09 -70.42 -5.56 rotate 16.55 0 0
$attachment "rfoot" "ValveBiped.Bip01_R_Calf" 16.55 0 0 rotate 3.09 -70.42 6.2
$attachment "Mouth" "ValveBiped.Bip01_Head1" 0.55 -3.5 0 rotate 0 -86 -90
$attachment "severed_Head" "ValveBiped.Bip01_Head1" 0 0 0 rotate 0 -41.08 -90
$attachment "severed_RArm" "ValveBiped.Bip01_R_UpperArm" 11.1 -0.3 0.4 rotate 0 0 90
$attachment "severed_LArm" "ValveBiped.Bip01_L_UpperArm" 8.5 -0.2 -0.4 rotate 0 0 90
$attachment "severed_RLeg" "ValveBiped.Bip01_R_Thigh" 13.5 -0.8 0 rotate 0 0 90
$attachment "severed_LLeg" "ValveBiped.Bip01_L_Thigh" 14 -0.7 0 rotate 0 0 90
$attachment "forward" "ValveBiped.Bip01_Head1" 2 -3 0 rotate 0 0 0
$attachment "flower" "ValveBiped.Bip01_Spine2" 0 6.4 4.9 rotate -10 90 0

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
$hbox 2 "ValveBiped.Bip01_Spine2" -4 -2.3 -4.5 9 5.7 4.5
$skipboneinbbox

$definebone "ValveBiped.Bip01_Pelvis" "" 0 -0.49236 35.174164 0 0 90.000009 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine" "ValveBiped.Bip01_Pelvis" 0.000002 3.69648 -1.136777 -1.049621 90.00003 90.000009 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine1" "ValveBiped.Bip01_Spine" 3.255432 0.302921 0 -0.000014 -1.136604 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine2" "ValveBiped.Bip01_Spine1" 3.082455 0.000022 0 0 -0.72391 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine4" "ValveBiped.Bip01_Spine2" 6.423965 0.000044 0 0.000001 8.928475 0 0 0 0 0 0 0
$definebone "BreastUpper2_L" "ValveBiped.Bip01_Spine4" -0.648911 4.497382 2.867939 0.617115 171.265272 89.99337 0 0 0 0 0 0
$definebone "BreastUpper2_R" "ValveBiped.Bip01_Spine4" -0.648911 4.49738 -2.86794 0.617129 -8.734777 -90.006655 0 0 0 0 0 0
$definebone "BeAA1" "ValveBiped.Bip01_Spine4" -4.043316 -1.713767 -0.000001 89.99906 173.795024 0 0 0 0 0 0 0
$definebone "BeAA2_L" "ValveBiped.Bip01_Spine4" -4.209068 0.16757 4.656291 9.357083 -97.539896 91.73763 0 0 0 0 0 0
$definebone "BeAA3_L" "ValveBiped.Bip01_Spine4" -5.028244 4.782017 4.635705 -0.427705 -96.744104 88.897644 0 0 0 0 0 0
$definebone "BeAA2_R" "ValveBiped.Bip01_Spine4" -4.209072 0.16757 -4.656292 9.357094 82.460334 -88.262341 0 0 0 0 0 0
$definebone "BeAA3_R" "ValveBiped.Bip01_Spine4" -5.028248 4.782018 -4.635706 -0.427714 83.255566 -91.102409 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Clavicle" "ValveBiped.Bip01_Spine4" 1.768345 0.346586 -0.819416 74.864365 171.085679 -80.714019 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_UpperArm" "ValveBiped.Bip01_R_Clavicle" 3.420089 0.756577 1.219547 -2.985876 -19.984201 80.627542 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_UpperArm" 8.884674 0 -0.000004 -6.327412 -0.099902 0.084937 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped.Bip01_R_Forearm" 8.509779 0 0 2.30758 0.765915 -90.000023 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger0" "ValveBiped.Bip01_R_Hand" 2.616555 -0.421555 -1.302933 17.004704 -23.953702 88.135716 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger01" "ValveBiped.Bip01_R_Finger0" 1.41988 0.000001 0.000004 -0.289031 -2.50989 2.081272 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger1" "ValveBiped.Bip01_R_Hand" 4.438509 -0.068119 -0.750376 0.000021 -0.879275 0.000005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger11" "ValveBiped.Bip01_R_Finger1" 0.663845 0.062096 -0.084954 -0.000033 5.343943 -0.000006 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger12" "ValveBiped.Bip01_R_Finger11" 0.969561 -0.021038 0.000001 -0.000026 -1.242986 0.000006 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger2" "ValveBiped.Bip01_R_Hand" 4.455383 0.039261 -0.13498 -0.000078 0.504862 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger21" "ValveBiped.Bip01_R_Finger2" 1.052469 0.057579 0.004971 0.000094 3.131288 0.000006 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger22" "ValveBiped.Bip01_R_Finger21" 0.969765 -0.007011 0.000001 -0.000127 -0.414203 0.000005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger3" "ValveBiped.Bip01_R_Hand" 4.21767 -0.008194 0.542873 -0.000029 -0.11137 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger31" "ValveBiped.Bip01_R_Finger3" 0.983795 -0.013123 0.019439 -0.000045 -0.763657 0.000004 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger32" "ValveBiped.Bip01_R_Finger31" 0.919048 0.070984 0 0.000019 4.416826 0.000007 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger4" "ValveBiped.Bip01_R_Hand" 4.006802 -0.152481 1.137269 -0.000011 -2.179401 -0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger41" "ValveBiped.Bip01_R_Finger4" 1.082683 0.054264 0.036105 -0.000065 2.869247 0.000006 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger42" "ValveBiped.Bip01_R_Finger41" 0.829247 0.056049 0 0.000083 3.866565 0.000006 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Clavicle" "ValveBiped.Bip01_Spine4" 1.768349 0.346567 0.81944 -74.90107 170.474008 77.193336 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_UpperArm" "ValveBiped.Bip01_L_Clavicle" 3.416723 0.842072 -1.171919 4.537098 -19.738985 -76.808394 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_UpperArm" 8.884674 0 0 6.327388 -0.099905 -0.084941 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Hand" "ValveBiped.Bip01_L_Forearm" 8.509784 0 0 -2.297024 0.766095 90.000016 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger0" "ValveBiped.Bip01_L_Hand" 2.616635 -0.421082 1.302942 -17.004849 -23.943196 -88.135668 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger01" "ValveBiped.Bip01_L_Finger0" 1.419891 0.000001 -0.000004 0.140741 -2.502468 -1.667596 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger1" "ValveBiped.Bip01_L_Hand" 4.438519 -0.067307 0.750389 -0.000183 -0.868722 0.00001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger11" "ValveBiped.Bip01_L_Finger1" 0.663845 0.062099 0.084954 0.000024 5.34394 0.00001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger12" "ValveBiped.Bip01_L_Finger11" 0.969561 -0.021042 -0.000001 0.000036 -1.242977 0.000003 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger2" "ValveBiped.Bip01_L_Hand" 4.455378 0.040077 0.134994 -0.000093 0.515393 0.000008 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger21" "ValveBiped.Bip01_L_Finger2" 1.052471 0.057575 -0.004971 -0.000084 3.131315 0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger22" "ValveBiped.Bip01_L_Finger21" 0.969763 -0.007004 -0.000001 0.000125 -0.414193 0.000003 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger3" "ValveBiped.Bip01_L_Hand" 4.21768 -0.007423 -0.54286 -0.000137 -0.100844 0.000007 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger31" "ValveBiped.Bip01_L_Finger3" 0.983791 -0.013115 -0.019438 0.000043 -0.763629 0.000006 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger32" "ValveBiped.Bip01_L_Finger31" 0.919048 0.070984 0 -0.000009 4.416825 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger4" "ValveBiped.Bip01_L_Hand" 4.006838 -0.151752 -1.137257 -0.000159 -2.168857 0.00001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger41" "ValveBiped.Bip01_L_Finger4" 1.082675 0.054268 -0.036105 0.000071 2.869269 0.000009 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger42" "ValveBiped.Bip01_L_Finger41" 0.829247 0.056046 0 -0.000076 3.866587 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Neck1" "ValveBiped.Bip01_Spine4" 2.707935 0.000007 0 0.000002 12.841485 180.000005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Head1" "ValveBiped.Bip01_Neck1" 3.023521 0.594992 0 -0.000039 12.015239 0.000001 0 0 0 0 0 0
$definebone "Eye_R" "ValveBiped.Bip01_Head1" 2.685654 -0.523826 0.930485 -60.564346 98.944067 89.999722 0 0 0 0 0 0
$definebone "Eye_L" "ValveBiped.Bip01_Head1" 2.685658 -0.523826 -0.930489 -60.564435 -81.055979 -90.000405 0 0 0 0 0 0
$definebone "Tongue" "ValveBiped.Bip01_Head1" 0.200581 -1.131062 0 -89.999156 -171.056473 0 0 0 0 0 0 0
$definebone "TeethLower" "ValveBiped.Bip01_Head1" 0.339642 -1.646533 0 -89.998903 -171.058358 0 0 0 0 0 0 0
$definebone "TeethUpper" "ValveBiped.Bip01_Head1" 0.63195 -1.600529 0 -89.999456 -171.055053 0 0 0 0 0 0 0
$definebone "OutsideHair5A_R" "ValveBiped.Bip01_Head1" 3.417385 3.368795 2.323852 10.039412 -170.386691 0.449813 0 0 0 0 0 0
$definebone "OutsideHair6_R" "ValveBiped.Bip01_Head1" 2.940769 4.449759 1.086405 4.825605 -173.801854 179.298162 0 0 0 0 0 0
$definebone "OutsideHair4A_R" "ValveBiped.Bip01_Head1" 4.476883 1.030538 3.864545 76.848077 -169.636545 -179.705214 0 0 0 0 0 0
$definebone "OutsideHair4B_R" "OutsideHair4A_R" 0.081324 0.487088 -2.822746 -50.791356 2.508771 0.785831 0 0 0 0 0 0
$definebone "OutsideHair3A_R" "ValveBiped.Bip01_Head1" 4.438885 1.99472 3.926556 72.493135 -178.22141 172.912987 0 0 0 0 0 0
$definebone "OutsideHair3B_R" "OutsideHair3A_R" -0.357891 1.239716 -2.634289 -9.125876 -0.681262 1.957517 0 0 0 0 0 0
$definebone "OutsideHair2A_R" "ValveBiped.Bip01_Head1" 3.606319 3.578274 3.261864 79.784881 179.455311 171.341388 0 0 0 0 0 0
$definebone "OutsideHair2B_R" "OutsideHair2A_R" -0.071815 1.105649 -2.386044 -15.675803 2.954537 -0.565808 0 0 0 0 0 0
$definebone "LowerLe1_R" "ValveBiped.Bip01_Head1" 6.191956 -0.038257 3.550536 82.996764 165.042751 156.45234 0 0 0 0 0 0
$definebone "LowerLe2_R" "LowerLe1_R" 0.140751 0.362261 -2.375797 -29.541378 2.093001 -2.273259 0 0 0 0 0 0
$definebone "LowerLe3_R" "LowerLe2_R" -0.448891 -0.690934 -1.389339 1.116064 -4.645619 0.99982 0 0 0 0 0 0
$definebone "LowerLe4_R" "LowerLe3_R" -0.305315 -0.406434 -1.731853 -9.197863 1.963747 -0.172426 0 0 0 0 0 0
$definebone "FrontHair1_R" "ValveBiped.Bip01_Head1" 7.526562 -1.705317 1.828083 74.07905 -165.67132 -173.991747 0 0 0 0 0 0
$definebone "OutsideHair5A_L" "ValveBiped.Bip01_Head1" 3.417377 3.368793 -2.323858 10.039511 9.613274 -179.550114 0 0 0 0 0 0
$definebone "OutsideHair6_L" "ValveBiped.Bip01_Head1" 2.940773 4.449759 -1.08641 4.82569 6.198144 -0.701821 0 0 0 0 0 0
$definebone "OutsideHair4A_L" "ValveBiped.Bip01_Head1" 4.476875 1.030536 -3.864552 76.848173 10.36347 0.2948 0 0 0 0 0 0
$definebone "OutsideHair4B_L" "OutsideHair4A_L" -0.081326 0.487088 -2.82275 50.79136 -2.508718 0.785879 0 0 0 0 0 0
$definebone "OutsideHair3A_L" "ValveBiped.Bip01_Head1" 4.438877 1.99472 -3.926564 72.49323 1.778524 -7.087058 0 0 0 0 0 0
$definebone "OutsideHair3B_L" "OutsideHair3A_L" 0.357897 1.239714 -2.634289 9.125876 0.681269 1.957484 0 0 0 0 0 0
$definebone "OutsideHair2A_L" "ValveBiped.Bip01_Head1" 3.606308 3.578273 -3.26187 79.78499 -0.544775 -8.658691 0 0 0 0 0 0
$definebone "OutsideHair2B_L" "OutsideHair2A_L" 0.071815 1.105649 -2.386032 15.675807 -2.954519 -0.565829 0 0 0 0 0 0
$definebone "OutsideHair1A" "ValveBiped.Bip01_Head1" 3.987167 4.611635 -0.000003 89.999955 8.534075 0 0 0 0 0 0 0
$definebone "OutsideHair1B" "OutsideHair1A" 0 1.048001 -2.093582 0.000001 0 -0.792908 0 0 0 0 0 0
$definebone "OutsideHair1C" "OutsideHair1B" 0 1.102415 -2.362724 0 0 0.195559 0 0 0 0 0 0
$definebone "LowerLe1_L" "ValveBiped.Bip01_Head1" 6.191952 -0.038255 -3.550546 82.996866 -14.957559 -23.54797 0 0 0 0 0 0
$definebone "LowerLe2_L" "LowerLe1_L" -0.140752 0.362261 -2.375797 29.541371 -2.092983 -2.273264 0 0 0 0 0 0
$definebone "LowerLe3_L" "LowerLe2_L" 0.448889 -0.690934 -1.389339 -1.11605 4.645619 0.999816 0 0 0 0 0 0
$definebone "LowerLe4_L" "LowerLe3_L" 0.305313 -0.406434 -1.731853 2.54513 0.803755 -1.944919 0 0 0 0 0 0
$definebone "FrontHair1_L" "ValveBiped.Bip01_Head1" 7.526569 -1.705315 -1.828094 74.079125 14.328818 6.008347 0 0 0 0 0 0
$definebone "FrontHair2" "ValveBiped.Bip01_Head1" 7.312023 -2.808115 0.083643 88.768588 143.060921 133.558366 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Thigh" "ValveBiped.Bip01_Pelvis" -3.08431 0.000004 0.000002 -0.812832 -87.16042 -90.000009 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Calf" "ValveBiped.Bip01_R_Thigh" 15.61166 0 0 2.835943 3.768673 0.146374 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Foot" "ValveBiped.Bip01_R_Calf" 15.879448 0 0 -0.000051 -62.252284 0.000095 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Thigh" "ValveBiped.Bip01_Pelvis" 3.084311 0.000004 0.000002 -0.812833 -92.839613 -90.000009 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Calf" "ValveBiped.Bip01_L_Thigh" 15.61166 0 0 -2.859151 3.768731 -0.147574 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Foot" "ValveBiped.Bip01_L_Calf" 15.879447 0 0 0.011982 -62.077527 -0.020018 0 0 0 0 0 0
$definebone "HairConnectionEye" "ValveBiped.Bip01_Head1" 7.331951 5.389594 -0.000006 -89.999955 -82.072919 0 0 0 0 0 0 0
$definebone "UpKicking1_R" "ValveBiped.Bip01_Head1" 6.849758 5.620837 0.546273 24.130742 10.857799 5.015244 0 0 0 0 0 0
$definebone "UpKicking2_R" "UpKicking1_R" 0.052246 1.011392 3.116848 8.557171 -0.802327 -6.094488 0 0 0 0 0 0
$definebone "UpKicking1_L" "ValveBiped.Bip01_Head1" 6.849766 5.620838 -0.546284 25.126794 -169.045666 -174.944545 0 0 0 0 0 0
$definebone "UpKicking2_L" "UpKicking1_L" 0.002151 1.011392 3.117283 -7.557259 0.800394 -6.080335 0 0 0 0 0 0
$definebone "WingClothes" "ValveBiped.Bip01_Spine1" -5.434696 -4.764359 -0.000002 -89.994292 177.81276 0 0 0 0 0 0 0
$definebone "WaistWingClothes1_R" "WingClothes" -0.325001 2.656087 0.000004 -10.73289 95.995228 7.396525 0 0 0 0 0 0
$definebone "WaistWingClothes2_R" "WaistWingClothes1_R" 0.000001 5.967076 -0.000008 -33.714729 -4.596538 33.405024 0 0 0 0 0 0
$definebone "WaistWingClothes3_R" "WaistWingClothes2_R" 0.000004 4.506813 0.000005 -43.030216 -76.387579 76.712361 0 0 0 0 0 0
$definebone "WaistWingClothes4_R" "WaistWingClothes3_R" 0.000004 5.988791 0.000004 -27.535325 -13.492189 -2.813393 0 0 0 0 0 0
$definebone "WaistWingClothes5_R" "WaistWingClothes4_R" -0.000006 9.535488 0.000008 71.73454 6.284773 -70.613255 0 0 0 0 0 0
$definebone "WaistWingClothes6_R" "WaistWingClothes5_R" -0.000003 7.945229 -0.000015 -9.580691 -30.139719 -18.871034 0 0 0 0 0 0
$definebone "WaistWingClothes7_R" "WaistWingClothes6_R" 0 6.310169 -0.000011 -15.728483 -64.930852 3.023797 0 0 0 0 0 0
$definebone "WaistWingClothes8_R" "WaistWingClothes7_R" 0 4.818149 0.000008 -1.563198 -16.445702 3.314958 0 0 0 0 0 0
$definebone "WaistWingClothes9_R" "WaistWingClothes8_R" -0.000008 4.725517 -0.000004 -15.646184 123.046213 63.061026 0 0 0 0 0 0
$definebone "WaistWingClothes10_R" "WaistWingClothes9_R" 0.000008 4.47543 0.000004 62.93559 8.169338 -36.486618 0 0 0 0 0 0
$definebone "WaistWingClothes11_R" "WaistWingClothes10_R" 0.000001 7.508235 0.000023 36.453495 -19.822304 -33.424709 0 0 0 0 0 0
$definebone "WaistWingClothes1_L" "WingClothes" 0.325001 2.656085 -0.000011 10.732881 -95.995679 7.396513 0 0 0 0 0 0
$definebone "WaistWingClothes2_L" "WaistWingClothes1_L" 0 5.967082 -0.000008 33.714743 4.596521 33.404884 0 0 0 0 0 0
$definebone "WaistWingClothes3_L" "WaistWingClothes2_L" -0.000004 4.506824 0.000004 43.030356 76.387524 76.712313 0 0 0 0 0 0
$definebone "WaistWingClothes4_L" "WaistWingClothes3_L" -0.000004 5.988802 0.000002 27.535655 13.492213 -2.813395 0 0 0 0 0 0
$definebone "WaistWingClothes5_L" "WaistWingClothes4_L" 0.000008 9.53548 0 -71.734738 -6.284919 -70.612927 0 0 0 0 0 0
$definebone "WaistWingClothes6_L" "WaistWingClothes5_L" 0.000003 7.945229 0 9.580797 30.139883 -18.871068 0 0 0 0 0 0
$definebone "WaistWingClothes7_L" "WaistWingClothes6_L" 0.000003 6.310158 -0.000011 15.728582 64.930681 3.023593 0 0 0 0 0 0
$definebone "WaistWingClothes8_L" "WaistWingClothes7_L" -0.000004 4.818168 0.000004 1.56308 16.445576 3.314862 0 0 0 0 0 0
$definebone "WaistWingClothes9_L" "WaistWingClothes8_L" -0.000004 4.725527 -0.000015 15.646396 -123.046199 63.061033 0 0 0 0 0 0
$definebone "WaistWingClothes10_L" "WaistWingClothes9_L" 0 4.475433 -0.000002 -62.935747 -8.169251 -36.48669 0 0 0 0 0 0
$definebone "WaistWingClothes11_L" "WaistWingClothes10_L" -0.000005 7.508256 0.000015 -36.453427 19.822247 -33.424555 0 0 0 0 0 0
$definebone "ValveBiped.Exp_Jaw" "ValveBiped.Bip01_Head1" 1.548061 0.004415 0 89.9999 -98.792771 0 0 0 0 0 0 0
$definebone "ValveBiped.Exp_Eyebrows" "ValveBiped.Bip01_Head1" 3.806156 0.2136 0 89.9999 -172.488477 0 0 0 0 0 0 0
$definebone "ValveBiped.Exp_Eyelids_Upper" "ValveBiped.Bip01_Head1" 3.561836 -3.655074 -0.015467 89.999921 170.232233 0 0 0 0 0 0 0
$definebone "ValveBiped.Exp_LipsUpper" "ValveBiped.Bip01_Head1" 1.108356 -0.293481 0 89.9999 172.054077 0 0 0 0 0 0 0

$bonemerge "ValveBiped.Bip01_Pelvis"
$bonemerge "ValveBiped.Bip01_Spine"
$bonemerge "ValveBiped.Bip01_Spine1"
$bonemerge "ValveBiped.Bip01_Spine2"
$bonemerge "ValveBiped.Bip01_Spine4"
$bonemerge "ValveBiped.Bip01_R_Clavicle"
$bonemerge "ValveBiped.Bip01_R_UpperArm"
$bonemerge "ValveBiped.Bip01_R_Forearm"
$bonemerge "ValveBiped.Bip01_L_Clavicle"
$bonemerge "ValveBiped.Bip01_L_UpperArm"
$bonemerge "ValveBiped.Bip01_L_Forearm"
$bonemerge "ValveBiped.Bip01_Neck1"
$bonemerge "ValveBiped.Bip01_Head1"
$bonemerge "ValveBiped.Bip01_R_Thigh"
$bonemerge "ValveBiped.Bip01_R_Calf"
$bonemerge "ValveBiped.Bip01_L_Thigh"
$bonemerge "ValveBiped.Bip01_L_Calf"
$bonemerge "ValveBiped.Exp_Jaw"
$bonemerge "ValveBiped.Exp_LipsUpper"

$jigglebone "BreastUpper2_L"
{
	is_flexible
	{
		length 20
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 5
		yaw_stiffness 100
		yaw_damping 5
		along_stiffness 100
		along_damping 0
		angle_constraint 8
	}
	has_base_spring
	{
		base_mass 20
		stiffness 130
		damping 7
		left_constraint -0.55 0.65
		left_friction 0
		up_constraint -0.35 0.35
		up_friction 0
		forward_constraint -0.1 0.1
		forward_friction 0
	}
}
$jigglebone "BreastUpper2_R"
{
	is_flexible
	{
		length 20
		tip_mass 0
		pitch_stiffness 100
		pitch_damping 5
		yaw_stiffness 100
		yaw_damping 5
		along_stiffness 100
		along_damping 0
		angle_constraint 8
	}
	has_base_spring
	{
		base_mass 20
		stiffness 130
		damping 7
		left_constraint -0.55 0.65
		left_friction 0
		up_constraint -0.35 0.35
		up_friction 0
		forward_constraint -0.1 0.1
		forward_friction 0
	}
}
$jigglebone "BeAA1"
{
	is_flexible
	{
		length 8
		tip_mass 0
		pitch_stiffness 65
		pitch_damping 5
		yaw_stiffness 65
		yaw_damping 5
		allow_length_flex
		along_stiffness 65
		along_damping 5
		angle_constraint 35
	}
}
$jigglebone "BeAA3_L"
{
	is_flexible
	{
		length 8
		tip_mass 0
		pitch_stiffness 65
		pitch_damping 5
		yaw_stiffness 65
		yaw_damping 5
		allow_length_flex
		along_stiffness 65
		along_damping 5
		angle_constraint 35
	}
}
$jigglebone "BeAA3_R"
{
	is_flexible
	{
		length 8
		tip_mass 0
		pitch_stiffness 65
		pitch_damping 5
		yaw_stiffness 65
		yaw_damping 5
		allow_length_flex
		along_stiffness 65
		along_damping 5
		angle_constraint 35
	}
}
$jigglebone "OutsideHair5A_R"
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
		pitch_constraint -5 5
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -5 5
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "OutsideHair6_R"
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
		pitch_constraint -5 5
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -5 5
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "OutsideHair4A_R"
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
		pitch_constraint -5 5
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -5 5
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "OutsideHair4B_R"
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
		pitch_constraint -5 5
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -5 5
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "OutsideHair3A_R"
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
		pitch_constraint -5 5
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -5 5
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "OutsideHair3B_R"
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
		pitch_constraint -5 5
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -5 5
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "OutsideHair2A_R"
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
		pitch_constraint -5 5
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -5 5
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "OutsideHair2B_R"
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
		pitch_constraint -5 5
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -5 5
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "LowerLe1_R"
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
		pitch_constraint -5 5
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -5 5
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "LowerLe2_R"
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
		pitch_constraint -5 5
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -5 5
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "LowerLe3_R"
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
		pitch_constraint -5 5
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -5 5
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "LowerLe4_R"
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
		pitch_constraint -5 5
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -5 5
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "FrontHair1_R"
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
		pitch_constraint -5 5
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -5 5
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "OutsideHair5A_L"
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
		pitch_constraint -5 5
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -5 5
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "OutsideHair6_L"
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
		pitch_constraint -5 5
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -5 5
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "OutsideHair4A_L"
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
		pitch_constraint -5 5
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -5 5
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "OutsideHair4B_L"
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
		pitch_constraint -5 5
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -5 5
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "OutsideHair3A_L"
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
		pitch_constraint -5 5
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -5 5
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "OutsideHair3B_L"
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
		pitch_constraint -5 5
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -5 5
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "OutsideHair2A_L"
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
		pitch_constraint -5 5
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -5 5
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "OutsideHair2B_L"
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
		pitch_constraint -5 5
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -5 5
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "OutsideHair1A"
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
		pitch_constraint -5 5
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -5 5
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "OutsideHair1B"
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
		pitch_constraint -5 5
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -5 5
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "OutsideHair1C"
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
		pitch_constraint -5 5
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -5 5
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "LowerLe1_L"
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
		pitch_constraint -5 5
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -5 5
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "LowerLe2_L"
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
		pitch_constraint -5 5
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -5 5
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "LowerLe3_L"
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
		pitch_constraint -5 5
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -5 5
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "LowerLe4_L"
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
		pitch_constraint -5 5
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -5 5
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "FrontHair1_L"
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
		pitch_constraint -5 5
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -5 5
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "FrontHair2"
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
		pitch_constraint -5 5
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -5 5
		yaw_friction 0
		yaw_bounce 0
	}
}
$jigglebone "HairConnectionEye"
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
$jigglebone "UpKicking1_R"
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
$jigglebone "UpKicking2_R"
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
$jigglebone "UpKicking1_L"
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
$jigglebone "UpKicking2_L"
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

$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0

$ikautoplaylock "rhand" 0.1 0
$ikautoplaylock "lhand" 0.1 0
$ikautoplaylock "rfoot" 1 0.1
$ikautoplaylock "lfoot" 1 0.1

$weightlist "weights_ragdoll" {
	 "ValveBiped.Bip01_Pelvis" 0
	 "ValveBiped.Bip01_Spine" 0
	 "ValveBiped.Bip01_Spine1" 0
	 "ValveBiped.Bip01_Spine2" 0
	 "ValveBiped.Bip01_Spine4" 0
	 "BreastUpper2_L" 0
	 "BreastUpper2_R" 0
	 "BeAA1" 0
	 "BeAA2_L" 0
	 "BeAA3_L" 0
	 "BeAA2_R" 0
	 "BeAA3_R" 0
	 "ValveBiped.Bip01_R_Clavicle" 0
	 "ValveBiped.Bip01_R_UpperArm" 0
	 "ValveBiped.Bip01_R_Forearm" 0
	 "ValveBiped.Bip01_R_Hand" 0
	 "ValveBiped.Bip01_R_Finger0" 0
	 "ValveBiped.Bip01_R_Finger01" 0
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
	 "ValveBiped.Bip01_L_Clavicle" 0
	 "ValveBiped.Bip01_L_UpperArm" 0
	 "ValveBiped.Bip01_L_Forearm" 0
	 "ValveBiped.Bip01_L_Hand" 0
	 "ValveBiped.Bip01_L_Finger0" 0
	 "ValveBiped.Bip01_L_Finger01" 0
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
	 "ValveBiped.Bip01_Neck1" 0
	 "ValveBiped.Bip01_Head1" 0
	 "Eye_R" 0
	 "Eye_L" 0
	 "Tongue" 0
	 "TeethLower" 0
	 "TeethUpper" 0
	 "OutsideHair5A_R" 0
	 "OutsideHair6_R" 0
	 "OutsideHair4A_R" 0
	 "OutsideHair4B_R" 0
	 "OutsideHair3A_R" 0
	 "OutsideHair3B_R" 0
	 "OutsideHair2A_R" 0
	 "OutsideHair2B_R" 0
	 "LowerLe1_R" 0
	 "LowerLe2_R" 0
	 "LowerLe3_R" 0
	 "LowerLe4_R" 0
	 "FrontHair1_R" 0
	 "OutsideHair5A_L" 0
	 "OutsideHair6_L" 0
	 "OutsideHair4A_L" 0
	 "OutsideHair4B_L" 0
	 "OutsideHair3A_L" 0
	 "OutsideHair3B_L" 0
	 "OutsideHair2A_L" 0
	 "OutsideHair2B_L" 0
	 "OutsideHair1A" 0
	 "OutsideHair1B" 0
	 "OutsideHair1C" 0
	 "LowerLe1_L" 0
	 "LowerLe2_L" 0
	 "LowerLe3_L" 0
	 "LowerLe4_L" 0
	 "FrontHair1_L" 0
	 "FrontHair2" 0
	 "ValveBiped.Bip01_R_Thigh" 0
	 "ValveBiped.Bip01_R_Calf" 0
	 "ValveBiped.Bip01_R_Foot" 0
	 "ValveBiped.Bip01_L_Thigh" 0
	 "ValveBiped.Bip01_L_Calf" 0
	 "ValveBiped.Bip01_L_Foot" 0
	 "HairConnectionEye" 0
	 "UpKicking1_R" 0
	 "UpKicking2_R" 0
	 "UpKicking1_L" 0
	 "UpKicking2_L" 0
	 "WingClothes" 0
	 "WaistWingClothes1_R" 0
	 "WaistWingClothes2_R" 0
	 "WaistWingClothes3_R" 0
	 "WaistWingClothes4_R" 0
	 "WaistWingClothes5_R" 0
	 "WaistWingClothes6_R" 0
	 "WaistWingClothes7_R" 0
	 "WaistWingClothes8_R" 0
	 "WaistWingClothes9_R" 0
	 "WaistWingClothes10_R" 0
	 "WaistWingClothes11_R" 0
	 "WaistWingClothes1_L" 0
	 "WaistWingClothes2_L" 0
	 "WaistWingClothes3_L" 0
	 "WaistWingClothes4_L" 0
	 "WaistWingClothes5_L" 0
	 "WaistWingClothes6_L" 0
	 "WaistWingClothes7_L" 0
	 "WaistWingClothes8_L" 0
	 "WaistWingClothes9_L" 0
	 "WaistWingClothes10_L" 0
	 "WaistWingClothes11_L" 0
	 "ValveBiped.Exp_Jaw" 0
	 "ValveBiped.Exp_Eyebrows" 0
	 "ValveBiped.Exp_Eyelids_Upper" 0
	 "ValveBiped.Exp_LipsUpper" 0
}

$animation "a_proportions_corrective_animation" "common_male_clown_anims\a_proportions_corrective_animation.smd" {
}

$animation "a_proportions_corrective_animation" "common_male_clown_anims\a_proportions_corrective_animation.smd" {
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 3
}

$animation "a_proportions" "common_male_clown_anims\a_proportions.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_proportions_corrective_animation" 0
}

$declaresequence "ragdoll"

$declaresequence "ragdoll_01"

$declaresequence "ragdoll_02"

$declaresequence "ragdoll_03"

$declaresequence "ragdoll_04"

$declaresequence "ragdoll_05"

$declaresequence "ragdoll_06"

$declaresequence "common_male_aim_matrix_run"

$declaresequence "common_male_aimmatrix_Standing_Alert"

$declaresequence "common_male_AimMatrix_Standing"

$declaresequence "common_male_aimmatrix_Standing_Acquiring"

$declaresequence "Idlenoise"

$declaresequence "Idle"

$declaresequence "Idle_Alert_01a"

$declaresequence "Idle_Alert_01b"

$declaresequence "Idle_Alert_01c"

$declaresequence "Idle_Alert_02a"

$declaresequence "Idle_Alert_02b"

$declaresequence "Idle_Alert_02c"

$declaresequence "Idle_Alert_03"

$declaresequence "Idle_Alert_Behind_02"

$declaresequence "Idle_Alert_Behind_03"

$declaresequence "Idle_Alert_Left_04"

$declaresequence "Idle_Alert_Left_01"

$declaresequence "Idle_Alert_Right_02a"

$declaresequence "Idle_Alert_Right_02d"

$declaresequence "Idle_Alert_Straight_05"

$declaresequence "Idle_Alert_Straight_08"

$declaresequence "violent_alert01_Common_a"

$declaresequence "violent_alert01_Common_D"

$declaresequence "violent_alert01_Common_E"

$declaresequence "violent_alert01_Common_B"

$declaresequence "violent_alert01_Common_C"

$declaresequence "Idle_Alert_Injured_Behind_01"

$declaresequence "Idle_Alert_Injured_Left_02"

$declaresequence "Idle_Alert_Injured_Right_02"

$declaresequence "Idle_Alert_Injured_Straight_02"

$declaresequence "Idle_Acquire_05"

$declaresequence "Idle_Acquire_06"

$declaresequence "Idle_Acquire_11"

$declaresequence "Idle_UnableToReachTarget_01a"

$declaresequence "Idle_UnableToReachTarget_01b"

$declaresequence "Idle_UnableToReachTarget_01c"

$declaresequence "Idle_UnableToReachTarget_01d"

$declaresequence "Idle_Neutral_01"

$declaresequence "Idle_Neutral_02"

$declaresequence "Idle_Neutral_03"

$declaresequence "Idle_Neutral_06"

$declaresequence "Idle_Neutral_07"

$declaresequence "Idle_Neutral_08"

$declaresequence "Idle_Neutral_10"

$declaresequence "Idle_Neutral_11"

$declaresequence "Idle_Neutral_12"

$declaresequence "Idle_Neutral_13"

$declaresequence "Idle_Neutral_14"

$declaresequence "Idle_Neutral_15"

$declaresequence "Idle_Neutral_16"

$declaresequence "Idle_Neutral_17"

$declaresequence "Idle_Crouching_Neutral_01"

$declaresequence "Idle_Crouching_Neutral_02"

$declaresequence "Idle_Neutral_Turn_Right"

$declaresequence "Idle_Neutral_Turn_Left"

$declaresequence "Idle_Neutral_Turn_Around_01a"

$declaresequence "Idle_Neutral_Turn_Around_01b"

$declaresequence "Idle_Neutral_Turn_Around_01c"

$declaresequence "Crouch_Idle_Upper_KNIFE"

$declaresequence "Idle_Neutral_to_Alert_01"

$declaresequence "Idle_Alert_to_Neutral_01"

$declaresequence "Running_to_Standing"

$declaresequence "Running_to_Standing_02"

$declaresequence "Walk_Neutral_01"

$declaresequence "Walk_Neutral_02"

$declaresequence "Walk_Neutral_02b"

$declaresequence "Walk_Neutral_03"

$declaresequence "Walk_Neutral_04a"

$declaresequence "Walk_Neutral_04b"

$declaresequence "Walk_Neutral_South"

$declaresequence "Shamble_01"

$declaresequence "Shamble_02"

$declaresequence "Shamble_03"

$declaresequence "Walk"

$declaresequence "CrouchWalk_01"

$declaresequence "CrouchWalk_03"

$declaresequence "MeleeAlign"

$declaresequence "Run_01"

$declaresequence "Run_01b"

$declaresequence "Run_02"

$declaresequence "Run_02b"

$declaresequence "Run_03"

$declaresequence "Run_03b"

$declaresequence "Run_04"

$declaresequence "Run_05"

$declaresequence "Run_OnFire"

$declaresequence "Run_OnFire_01"

$declaresequence "Standing_OnFire"

$declaresequence "Run_Stumble_01"

$declaresequence "Melee_01"

$declaresequence "Melee_02"

$declaresequence "Melee_03"

$declaresequence "Melee_04"

$declaresequence "Melee_Moving01_Delta"

$declaresequence "Melee_Moving01_Layer"

$declaresequence "Melee_Moving01"

$declaresequence "Melee_Moving02_Delta"

$declaresequence "Melee_Moving02_Layer"

$declaresequence "Melee_Moving02"

$declaresequence "Melee_Moving03_Delta"

$declaresequence "Melee_Moving03_Layer"

$declaresequence "Melee_Moving03"

$declaresequence "Melee_Moving04_Delta"

$declaresequence "Melee_Moving04_Layer"

$declaresequence "Melee_Moving04"

$declaresequence "Melee_Moving05_Delta"

$declaresequence "Melee_Moving05_Layer"

$declaresequence "Melee_Moving05"

$declaresequence "Melee_Moving06_Delta"

$declaresequence "Melee_Moving06_Layer"

$declaresequence "Melee_Moving06"

$declaresequence "AttackIncap_01"

$declaresequence "AttackIncap_03"

$declaresequence "AttackDoor_01"

$declaresequence "AttackDoor_ReachThrough"

$declaresequence "Shoved_Backward_01"

$declaresequence "Shoved_Backward_02"

$declaresequence "Shoved_Backward_03"

$declaresequence "Shoved_Backward_03a"

$declaresequence "Shoved_Backward_04e"

$declaresequence "Shoved_Backward_04g"

$declaresequence "Shoved_Backward_04i"

$declaresequence "Shoved_Backward_04j"

$declaresequence "Shoved_Backward_04m"

$declaresequence "Shoved_Backward_04o"

$declaresequence "Shoved_Forward_01"

$declaresequence "Shoved_Leftward_01"

$declaresequence "Shoved_Rightward_01"

$declaresequence "Shoved_Backward_IntoWall_01"

$declaresequence "Shoved_Backward_IntoWall_02"

$declaresequence "Shoved_Backward_IntoWall_03"

$declaresequence "Shoved_Backward_IntoWall_04"

$declaresequence "Shoved_Forward_IntoWall_02"

$declaresequence "Shoved_Leftward_IntoWall_02"

$declaresequence "Shoved_Rightward_IntoWall_01"

$declaresequence "Jump_01"

$declaresequence "Jump_02"

$declaresequence "Jump_Across_01"

$declaresequence "Jump_Across_02"

$declaresequence "Jump_Up_To_Ledge_01"

$declaresequence "Jump_Up_To_Ledge_04"

$declaresequence "Jump_Up_To_Ledge_02"

$declaresequence "Jump_Up_To_Ledge_03_Tall"

$declaresequence "Jump_Down_From_Ledge_Extraction"

$declaresequence "Jump_Down_From_Ledge_NoMotion"

$declaresequence "Jump_Down_From_Ledge_Walkframe"

$declaresequence "Ledge_Climb"

$declaresequence "Fall_01"

$declaresequence "Fall_02"

$declaresequence "Fall_03"

$declaresequence "Fall_04"

$declaresequence "Fall_05"

$declaresequence "Fall_06"

$declaresequence "Fall_07"

$declaresequence "Fall_08"

$declaresequence "Fall_09"

$declaresequence "Landing01_Neutral"

$declaresequence "Landing_Hard01_Neutral"

$declaresequence "Landing01"

$declaresequence "Landing02"

$declaresequence "Landing03"

$declaresequence "Landing04"

$declaresequence "Landing_Hard01"

$declaresequence "Landing_Hard02"

$declaresequence "Landing_Hard03"

$declaresequence "Landing_Hard04"

$declaresequence "Landing_Hard05"

$declaresequence "Landing_Hard06"

$declaresequence "Climb24_01_InPlace"

$declaresequence "Climb24_02_InPlace"

$declaresequence "Climb24_03_InPlace"

$declaresequence "Climb36_01_InPlace"

$declaresequence "Climb36_02_InPlace"

$declaresequence "Climb36_03_InPlace"

$declaresequence "Climb36_04_InPlace"

$declaresequence "Climb48_01_InPlace"

$declaresequence "Climb48_02_InPlace"

$declaresequence "Climb48_03_InPlace"

$declaresequence "Climb48_04_InPlace"

$declaresequence "Climb60_01_InPlace"

$declaresequence "Climb60_02_InPlace"

$declaresequence "Climb60_03_InPlace"

$declaresequence "Climb60_04_InPlace"

$declaresequence "Climb72_03_InPlace"

$declaresequence "Climb72_04_InPlace"

$declaresequence "Climb72_05_InPlace"

$declaresequence "Climb72_06_InPlace"

$declaresequence "Climb72_07_InPlace"

$declaresequence "Climb84_01_InPlace"

$declaresequence "Climb84_03_InPlace"

$declaresequence "Climb84_04_InPlace"

$declaresequence "Climb84_05_InPlace"

$declaresequence "Climb84_06_InPlace"

$declaresequence "Climb96_05_InPlace"

$declaresequence "Climb96_00_InPlace"

$declaresequence "Climb96_00a_InPlace"

$declaresequence "Climb96_03_InPlace"

$declaresequence "Climb96_03a_InPlace"

$declaresequence "Climb96_04a_InPlace"

$declaresequence "Climb108_01_InPlace"

$declaresequence "Climb108_00_InPlace"

$declaresequence "Climb108_00a_InPlace"

$declaresequence "Climb108_03_InPlace"

$declaresequence "Climb108_03a_InPlace"

$declaresequence "Climb108_04_InPlace"

$declaresequence "Climb120_01_InPlace"

$declaresequence "Climb120_00_InPlace"

$declaresequence "Climb120_00a_InPlace"

$declaresequence "Climb120_03_InPlace"

$declaresequence "Climb120_03a_InPlace"

$declaresequence "Climb120_04_InPlace"

$declaresequence "Climb132_01_InPlace"

$declaresequence "Climb132_00_InPlace"

$declaresequence "Climb132_00a_InPlace"

$declaresequence "Climb132_03_InPlace"

$declaresequence "Climb132_03a_InPlace"

$declaresequence "Climb132_04_InPlace"

$declaresequence "Climb144_01_InPlace"

$declaresequence "Climb144_00_InPlace"

$declaresequence "Climb144_00a_InPlace"

$declaresequence "Climb144_03_InPlace"

$declaresequence "Climb144_03a_InPlace"

$declaresequence "Climb144_04_InPlace"

$declaresequence "Climb156_01_InPlace"

$declaresequence "Climb156_00_InPlace"

$declaresequence "Climb156_00a_InPlace"

$declaresequence "Climb156_03_InPlace"

$declaresequence "Climb156_03a_InPlace"

$declaresequence "Climb156_04_InPlace"

$declaresequence "Climb168_01_InPlace"

$declaresequence "Climb168_00_InPlace"

$declaresequence "Climb168_00a_InPlace"

$declaresequence "Climb168_03_InPlace"

$declaresequence "Climb168_03a_InPlace"

$declaresequence "Climb168_04_InPlace"

$declaresequence "Climb36_Hurdle_04_InPlace"

$declaresequence "Ladder_Ascend"

$declaresequence "Ladder_Descend"

$declaresequence "Ladder_Dismount_01"

$declaresequence "Ladder_Dismount_02"

$declaresequence "Ladder_Dismount_03"

$declaresequence "LyingIdlenoise"

$declaresequence "SittingIdlenoise"

$declaresequence "Standing_to_Sitting03"

$declaresequence "Sitting01"

$declaresequence "Sitting02"

$declaresequence "Sitting03"

$declaresequence "Sitting04"

$declaresequence "Sitting05"

$declaresequence "Sitting06"

$declaresequence "Sitting07"

$declaresequence "Sitting08"

$declaresequence "Sitting09"

$declaresequence "Sitting03_to_Standing"

$declaresequence "Sitting_to_Standing_Alert"

$declaresequence "Shoved_Backward_Sit_04i"

$declaresequence "Shoved_Backward_Sit_04o"

$declaresequence "Shoved_Sitting_Leftward"

$declaresequence "Shoved_Sitting_Rightward"

$declaresequence "Standing_to_Sitting_in_Chair"

$declaresequence "Sitting_in_Chair01"

$declaresequence "Sitting_in_Chair_to_Standing"

$declaresequence "Sitting_in_Chair_to_Standing_Alert"

$declaresequence "Standing_to_Lying03"

$declaresequence "Lying01"

$declaresequence "Lying02"

$declaresequence "Lying03"

$declaresequence "Lying04"

$declaresequence "Lying05"

$declaresequence "Lying06"

$declaresequence "Lying07"

$declaresequence "Lying08"

$declaresequence "Lying03_to_Standing"

$declaresequence "Lying_to_Standing_Alert"

$declaresequence "Lying_to_Standing_Alert03c"

$declaresequence "Lying_to_Standing_Alert03d"

$declaresequence "Lying03_to_Sitting03"

$declaresequence "Sitting03_to_Lying03"

$declaresequence "LeaningIdlenoise"

$declaresequence "LeaningIdlenoise_RT"

$declaresequence "LeaningIdlenoise_LT"

$declaresequence "LeaningIdlenoise_Both"

$declaresequence "LeaningRightward01"

$declaresequence "LeaningRightward02"

$declaresequence "LeaningRightward03"

$declaresequence "LeaningRightward04"

$declaresequence "LeaningBackward01"

$declaresequence "LeaningBackward02"

$declaresequence "LeaningBackward03"

$declaresequence "LeaningBackward04"

$declaresequence "LeaningLeftward01"

$declaresequence "LeaningLeftward02"

$declaresequence "LeaningLeftward03"

$declaresequence "LeaningLeftward04"

$declaresequence "LeaningForward01"

$declaresequence "LeaningForward02"

$declaresequence "LeaningForward03"

$declaresequence "LeaningForward04"

$declaresequence "common_male_body_leans"

$declaresequence "Death_01"

$declaresequence "Death_02a"

$declaresequence "Death_02c"

$declaresequence "Death_03"

$declaresequence "Death_05"

$declaresequence "Death_06"

$declaresequence "Death_07"

$declaresequence "Death_08"

$declaresequence "Death_08b"

$declaresequence "Death_09"

$declaresequence "Death_10ab"

$declaresequence "Death_10b"

$declaresequence "Death_10c"

$declaresequence "Death_11_01a"

$declaresequence "Death_11_01b"

$declaresequence "Death_11_02a"

$declaresequence "Death_11_02b"

$declaresequence "Death_11_02c"

$declaresequence "Death_11_02d"

$declaresequence "Death_11_03a"

$declaresequence "Death_11_03b"

$declaresequence "Death_11_03c"

$declaresequence "HeadshotFront"

$declaresequence "HeadshotBack"

$declaresequence "DeathRunning_01"

$declaresequence "DeathRunning_03"

$declaresequence "DeathRunning_04"

$declaresequence "DeathRunning_05"

$declaresequence "DeathRunning_06"

$declaresequence "DeathRunning_07"

$declaresequence "DeathRunning_08"

$declaresequence "DeathRunning_09"

$declaresequence "DeathRunning_10"

$declaresequence "DeathRunning_11a"

$declaresequence "DeathRunning_11b"

$declaresequence "DeathRunning_11c"

$declaresequence "DeathRunning_11d"

$declaresequence "DeathRunning_11e"

$declaresequence "DeathRunning_11f"

$declaresequence "DeathRunning_11g"

$declaresequence "Death_Shotgun_Backward_05"

$declaresequence "Death_Shotgun_Backward_03"

$declaresequence "Death_Shotgun_Backward_04"

$declaresequence "Death_Shotgun_Backward_06"

$declaresequence "Death_Shotgun_Backward_07"

$declaresequence "Death_Shotgun_Backward_08"

$declaresequence "Death_Shotgun_Backward_09"

$declaresequence "Death_Shotgun_Backward_collapse"

$declaresequence "Death_shotgun_Forward"

$declaresequence "Death_Shotgun_Rightward"

$declaresequence "Death_Shotgun_Rightward01"

$declaresequence "Death_Shotgun_Rightward02"

$declaresequence "Death_Shotgun_Leftward"

$declaresequence "deathpose_front"

$declaresequence "deathpose_back"

$declaresequence "deathpose_right"

$declaresequence "deathpose_left"

$declaresequence "deathpose_crouch_front"

$declaresequence "deathpose_crouch_back"

$declaresequence "deathpose_crouch_right"

$declaresequence "deathpose_crouch_left"

$declaresequence "Flinch_01"

$declaresequence "Flinch_02"

$declaresequence "Startled_delta_01"

$declaresequence "Startled_01"

$declaresequence "Charger_Shove_Leftward"

$declaresequence "Charger_Shove_Rightward"

$declaresequence "mudguy_run"

$declaresequence "Chainsaw_Rshldr"

$declaresequence "Chainsaw_Head_Down"

$declaresequence "Chainsaw_Back_Up"

$declaresequence "Chainsaw_Chest_Up"

$declaresequence "Chainsaw_Shldrs_Down"

$declaresequence "Chainsaw_Back_Forward"

$declaresequence "Chainsaw_Lshldr_Down"

$declaresequence "Chainsaw_Rshldr_Behind"

$declaresequence "Chainsaw_Rshldr_Down"

$declaresequence "Chainsaw_Chest_Up2"

$declaresequence "Chainsaw_Head_Down2"

$declaresequence "Chainsaw_Chest_Down"

$declaresequence "Chainsaw_Lside"

$declaresequence "Chainsaw_Rhip"

$declaresequence "Chainsaw_Rside"

$declaresequence "melee_death_right_01"

$declaresequence "melee_death_right_02"

$declaresequence "melee_death_left_01"

$declaresequence "melee_death_left_02"

$declaresequence "melee_death_back_01"

$declaresequence "melee_death_back_02"

$declaresequence "melee_death_back_03"

$declaresequence "melee_death_back_04"

$declaresequence "melee_death_back_05"

$declaresequence "melee_death_right_01_SLASH"

$declaresequence "melee_death_right_02_SLASH"

$declaresequence "melee_death_left_01_SLASH"

$declaresequence "melee_death_left_02_SLASH"

$declaresequence "melee_death_back_01_SLASH"

$declaresequence "melee_death_back_02_SLASH"

$declaresequence "melee_death_back_03_SLASH"

$declaresequence "melee_death_back_04_SLASH"

$declaresequence "melee_death_back_05_SLASH"

$declaresequence "Idle_Neutral_04"

$declaresequence "Idle_Neutral_05"

$declaresequence "exp_idle_01"

$declaresequence "exp_idle_02"

$declaresequence "exp_idle_03"

$declaresequence "exp_idle_04"

$declaresequence "exp_idle_05"

$declaresequence "exp_idle_06"

$declaresequence "exp_angry_01"

$declaresequence "exp_angry_02"

$declaresequence "exp_angry_03"

$declaresequence "exp_angry_04"

$declaresequence "exp_angry_05"

$declaresequence "exp_angry_06"

$sequence "reference" {
	"common_male_clown_anims\reference.smd"
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
}

$includemodel "anime_zombie_anims.mdl"
$includemodel "infected/anim_common_vomit.mdl"
$includemodel "infected/anim_common_male_exp.mdl"

$collisionjoints "common_male_clown_physics.smd"
{
	$mass 0
	$inertia 5
	$damping 0.01
	$rotdamping 1.5
	$rootbone " "

	$jointrotdamping "ValveBiped.Bip01_Pelvis" 3

	$jointmassbias "ValveBiped.Bip01_L_Thigh" 7
	$jointrotdamping "ValveBiped.Bip01_L_Thigh" 7
	$jointconstrain "ValveBiped.Bip01_L_Thigh" x limit -25 25 0
	$jointconstrain "ValveBiped.Bip01_L_Thigh" y limit -10 30 0
	$jointconstrain "ValveBiped.Bip01_L_Thigh" z limit -55 59 0

	$jointmassbias "ValveBiped.Bip01_L_Calf" 4
	$jointconstrain "ValveBiped.Bip01_L_Calf" x limit -25 10 0
	$jointconstrain "ValveBiped.Bip01_L_Calf" y limit -5 5 0
	$jointconstrain "ValveBiped.Bip01_L_Calf" z limit -10 140 0

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
	$jointconstrain "ValveBiped.Bip01_R_Foot" z limit -20 30 0

	$jointconstrain "ValveBiped.Bip01_Spine" x limit -10 10 0
	$jointconstrain "ValveBiped.Bip01_Spine" y limit -16 16 0
	$jointconstrain "ValveBiped.Bip01_Spine" z limit -20 30 0

	$jointmassbias "ValveBiped.Bip01_Spine2" 9
	$jointconstrain "ValveBiped.Bip01_Spine2" x limit -10 10 0
	$jointconstrain "ValveBiped.Bip01_Spine2" y limit -10 10 0
	$jointconstrain "ValveBiped.Bip01_Spine2" z limit -20 20 0

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

	$jointconstrain "ValveBiped.Bip01_L_Hand" x limit -50 50 0
	$jointconstrain "ValveBiped.Bip01_L_Hand" y limit -35 35 0
	$jointconstrain "ValveBiped.Bip01_L_Hand" z limit -50 50 0

	$jointrotdamping "ValveBiped.Bip01_L_Foot" 2
	$jointconstrain "ValveBiped.Bip01_L_Foot" x limit -20 30 0
	$jointconstrain "ValveBiped.Bip01_L_Foot" y limit -30 30 0
	$jointconstrain "ValveBiped.Bip01_L_Foot" z limit -20 30 0
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
		"totalmass" "100.000000"
	}
}
