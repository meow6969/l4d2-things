// Created by Crowbar 0.74

$modelname "infected/common_male_mud.mdl"

$bodygroup "body"
{
	studio "aya_shameimaru.smd"
}
$bodygroup "hands"
{
	studio "arms.smd"
}
$bodygroup "Tokin Hat"
{
	studio "tokin_hat.smd"
	blank
}
$bodygroup "Ribbon"
{
	studio "ribbon.smd"
	blank
}
$bodygroup "Arm Band"
{
	studio "arm_band.smd"
	blank
}
$bodygroup "Right Stocking"
{
	studio "r_stock.smd"
	blank
}
$bodygroup "Left Stocking"
{
	studio "l_stock.smd"
	blank
}
$bodygroup "Right Shoe"
{
	studio "r_shoe.smd"
	blank
}
$bodygroup "Left Shoe"
{
	studio "l_shoe.smd"
	blank
}
$bodygroup "clamped1"
{
	studio "body22_model0.smd"
}


$surfaceprop "flesh"

$contents "solid"

$illumposition 0 -0.63 37.179

$ambientboost

$mostlyopaque

$cdmaterials "pacagma\touhou\aya_shameimaru\"

$attachment "Head" "ValveBiped.Bip01_Head1" 0 0 0 rotate 0 0 0
$attachment "RArm" "ValveBiped.Bip01_R_UpperArm" 0 0 0 rotate 0 0 0
$attachment "LArm" "ValveBiped.Bip01_L_UpperArm" 0 0 0 rotate 0 0 0
$attachment "RLeg" "ValveBiped.Bip01_R_Thigh" 0 0 0 rotate 0 0 0
$attachment "LLeg" "ValveBiped.Bip01_L_Thigh" 0 0 0 rotate 0 0 0
$attachment "lfoot" "ValveBiped.Bip01_L_Calf" -3.09 -70.42 -5.56 rotate 16.55 0 0
$attachment "rfoot" "ValveBiped.Bip01_R_Calf" 16.55 0 0 rotate 3.09 -70.42 6.2
$attachment "Mouth" "ValveBiped.Bip01_Head1" 0.55 -3.5 0 rotate 0 -86 -90
$attachment "forward" "ValveBiped.Bip01_Head1" 2 -3 0 rotate 0 0 0

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

$definebone "ValveBiped.Bip01_Pelvis" "" 0 -2.073153 34.977371 0 0 90.000009 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine" "ValveBiped.Bip01_Pelvis" 0.000003 3.931816 -1.370257 -4.245821 89.999941 90.000016 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine1" "ValveBiped.Bip01_Spine" 3.520096 0.000027 -0.000005 0.000347 -6.452352 -0.000009 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine2" "ValveBiped.Bip01_Spine1" 3.318691 0.000028 0.000015 -0.000109 -0.723747 0.000003 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine4" "ValveBiped.Bip01_Spine2" 6.916325 0.000036 0.000018 -0.000256 8.928174 -0.000025 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Neck1" "ValveBiped.Bip01_Spine4" 2.915459 -0.000236 -0.000006 0.000011 12.837242 -179.999978 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Head1" "ValveBiped.Bip01_Neck1" 2.229736 -0.081753 0.000003 -0.000213 3.384271 -0.000005 0 0 0 0 0 0
$definebone "Eye_L" "ValveBiped.Bip01_Head1" 2.253914 -0.073982 -1.091766 -3.119357 -1.909964 -162.639317 0 0 0 0 0 0
$definebone "Eye_R" "ValveBiped.Bip01_Head1" 2.253929 -0.073982 1.091756 -3.118332 178.091022 17.361117 0 0 0 0 0 0
$definebone "Teeth" "ValveBiped.Bip01_Head1" 0.003014 -1.393598 0 89.996157 176.944793 0 0 0 0 0 0 0
$definebone "Tongue1" "ValveBiped.Bip01_Head1" -0.067036 -1.009804 0 89.998179 175.053924 0 0 0 0 0 0 0
$definebone "Tongue2" "Tongue1" 0 0.622602 0.000011 0 0 0.282008 0 0 0 0 0 0
$definebone "Tongue3" "Tongue2" 0 0.466433 -0.000004 -0.000001 0 -0.276627 0 0 0 0 0 0
$definebone "FrontHair1" "ValveBiped.Bip01_Head1" 5.801979 -2.705345 -0.000013 -89.999873 15.328092 0 0 0 0 0 0 0
$definebone "FrontHair2" "FrontHair1" 0 -0.004396 2.049244 0.000001 0.000001 -0.838852 0 0 0 0 0 0
$definebone "FrontHair_L" "ValveBiped.Bip01_Head1" 5.801975 -2.705348 -2.008743 -89.999859 15.328089 0 0 0 0 0 0 0
$definebone "FrontHair_R" "ValveBiped.Bip01_Head1" 5.801975 -2.705345 2.008718 -89.999859 15.328089 0 0 0 0 0 0 0
$definebone "SideHair1_L" "ValveBiped.Bip01_Head1" 5.111847 0.669872 -4.276173 -89.999873 15.904866 0 0 0 0 0 0 0
$definebone "SideHair2_L" "SideHair1_L" 0 0.023473 2.963116 0 -0.000006 -0.473285 0 0 0 0 0 0
$definebone "SideHair3_L" "SideHair2_L" 0 -0.000668 1.968708 0 0 -0.007619 0 0 0 0 0 0
$definebone "SideHair1_R" "ValveBiped.Bip01_Head1" 5.111874 0.669869 4.276145 -89.999873 15.904872 0 0 0 0 0 0 0
$definebone "SideHair2_R" "SideHair1_R" 0 0.023472 2.963123 0 -0.000006 -0.473285 0 0 0 0 0 0
$definebone "SideHair3_R" "SideHair2_R" 0 -0.000668 1.968708 0 0 -0.007629 0 0 0 0 0 0
$definebone "BackSideHair1_L" "ValveBiped.Bip01_Head1" 4.253975 3.716858 -4.986283 -89.999873 16.268303 0 0 0 0 0 0 0
$definebone "BackSideHair2_L" "BackSideHair1_L" 0 0.070142 4.916977 0.000905 0.071541 -0.636873 0 0 0 0 0 0
$definebone "BackSideHair1_R" "ValveBiped.Bip01_Head1" 4.253998 3.716867 4.986264 -89.999873 16.268303 0 0 0 0 0 0 0
$definebone "BackSideHair2_R" "BackSideHair1_R" 0 0.070142 4.916988 -0.00091 -0.071496 -0.636896 0 0 0 0 0 0
$definebone "BackInsideHair" "ValveBiped.Bip01_Head1" 0.355644 4.58769 -0.000001 -89.999873 12.890103 0 0 0 0 0 0 0
$definebone "BackHair" "ValveBiped.Bip01_Head1" 0.052959 5.68924 0 -89.999873 13.378689 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Clavicle" "ValveBiped.Bip01_Spine4" 1.634998 0.559465 0.920084 -70.869613 175.902219 78.691777 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_UpperArm" "ValveBiped.Bip01_L_Clavicle" 4.017212 -0.185452 -0.915112 2.000706 -15.767925 -80.677129 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_UpperArm" 9.517359 0 -0.000004 0.088688 0.000002 -0.000106 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Hand" "ValveBiped.Bip01_L_Forearm" 9.6366 -0.000001 0.014904 -2.435096 0.000054 90.000016 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Clavicle" "ValveBiped.Bip01_Spine4" 1.635006 0.559482 -0.920062 70.837422 176.390714 -82.341557 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_UpperArm" "ValveBiped.Bip01_R_Clavicle" 4.019835 -0.249798 0.888049 -0.722851 -15.855837 84.589564 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_UpperArm" 9.517378 0 -0.000004 -0.088791 -0.00002 -0.000101 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped.Bip01_R_Forearm" 9.636602 0.000004 -0.014938 2.452282 0.000086 -89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Thigh" "ValveBiped.Bip01_Pelvis" 2.962398 0.000004 0.000002 0 -90.000003 -90.000009 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Calf" "ValveBiped.Bip01_L_Thigh" 13.3507 -0.115647 -0.316234 0.000015 7.046938 0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Foot" "ValveBiped.Bip01_L_Calf" 17.841209 0 0 -0.000038 -62.078517 0.000008 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Thigh" "ValveBiped.Bip01_Pelvis" -2.962397 0.000004 0.000002 0 -90.000003 -90.000009 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Calf" "ValveBiped.Bip01_R_Thigh" 13.350698 -0.115647 0.316232 0.000015 7.046942 0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Foot" "ValveBiped.Bip01_R_Calf" 17.841198 0 0 -0.000024 -62.252673 0.000003 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger0" "ValveBiped.Bip01_L_Hand" 0.253429 -0.278511 0.781435 -22.511755 -18.961216 -93.263679 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger01" "ValveBiped.Bip01_L_Finger0" 1.285004 0.000002 0 0.072957 -2.505232 -3.217674 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger02" "ValveBiped.Bip01_L_Finger01" 1.026857 0.026588 0.085735 -4.474439 -15.009716 -0.088679 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger1" "ValveBiped.Bip01_L_Hand" 2.461349 -0.223816 0.797772 -0.000073 -5.195609 0.000012 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger11" "ValveBiped.Bip01_L_Finger1" 1.156635 -0.027145 0.00882 0.000091 -1.344492 -0.000003 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger12" "ValveBiped.Bip01_L_Finger11" 0.787781 0.009266 -0.01568 -0.000046 0.673822 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger2" "ValveBiped.Bip01_L_Hand" 2.591993 -0.171638 0.166286 -0.000005 -3.788246 0.000006 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger21" "ValveBiped.Bip01_L_Finger2" 1.195826 0.021294 0.008495 -0.000047 1.020339 0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger22" "ValveBiped.Bip01_L_Finger21" 0.804493 -0.023163 0 -0.000043 -1.649175 0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger3" "ValveBiped.Bip01_L_Hand" 2.478436 -0.285652 -0.441678 -0.000011 -6.574546 0.00001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger31" "ValveBiped.Bip01_L_Finger3" 1.017635 0.059517 0.017642 -0.000058 3.347055 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger32" "ValveBiped.Bip01_L_Finger31" 0.747765 -0.013676 0.027115 0.000039 -1.047676 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger4" "ValveBiped.Bip01_L_Hand" 2.338886 -0.459423 -1.015994 -0.000084 -11.112988 0.000015 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger41" "ValveBiped.Bip01_L_Finger4" 0.801729 0.074051 0.035608 0.000013 5.276607 0.000003 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger42" "ValveBiped.Bip01_L_Finger41" 0.58687 0.010258 0.022868 0.000067 1.001302 0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger0" "ValveBiped.Bip01_R_Hand" 0.253342 -0.278572 -0.781435 22.511761 -18.978195 93.263679 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger01" "ValveBiped.Bip01_R_Finger0" 1.285004 0.000003 0.000004 -0.220597 -2.516839 3.638854 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger02" "ValveBiped.Bip01_R_Finger01" 1.026642 0.026 -0.088577 4.394753 -15.045822 0.04848 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger1" "ValveBiped.Bip01_R_Hand" 2.461283 -0.224545 -0.797772 0.000092 -5.212575 -0.000015 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger11" "ValveBiped.Bip01_R_Finger1" 1.156639 -0.027157 -0.00882 -0.000088 -1.344472 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger12" "ValveBiped.Bip01_R_Finger11" 0.787779 0.009262 0.01568 0.000036 0.673843 -0.000004 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger2" "ValveBiped.Bip01_R_Hand" 2.59194 -0.172401 -0.166286 0.000019 -3.805193 -0.000009 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger21" "ValveBiped.Bip01_R_Finger2" 1.195829 0.021294 -0.008495 0.000032 1.020335 -0.000004 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger22" "ValveBiped.Bip01_R_Finger21" 0.804493 -0.023163 0 0.000069 -1.649149 -0.000005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger3" "ValveBiped.Bip01_R_Hand" 2.478354 -0.286381 0.441678 0.000026 -6.591512 -0.000013 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger31" "ValveBiped.Bip01_R_Finger3" 1.017632 0.059509 -0.017642 0.000055 3.347068 -0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger32" "ValveBiped.Bip01_R_Finger31" 0.747766 -0.01368 -0.027115 -0.000049 -1.047656 -0.000004 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger4" "ValveBiped.Bip01_R_Hand" 2.338751 -0.46011 1.015994 0.000109 -11.129948 -0.000011 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger41" "ValveBiped.Bip01_R_Finger4" 0.801731 0.074047 -0.035608 -0.000016 5.276616 -0.000015 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger42" "ValveBiped.Bip01_R_Finger41" 0.58687 0.010258 -0.022868 -0.000089 1.001319 -0.000005 0 0 0 0 0 0
$definebone "Side_L1" "ValveBiped.Bip01_Head1" 6.417381 2.459604 -3.59118 -62.645143 -163.829669 179.783147 0 0 0 0 0 0
$definebone "Side_L2" "Side_L1" 0.022156 0.019206 2.589825 17.722174 -1.588052 -1.754078 0 0 0 0 0 0
$definebone "Side_L3" "Side_L2" 0.145278 -0.028349 2.43729 9.540067 4.813341 1.084599 0 0 0 0 0 0
$definebone "Side_L4" "Side_L3" -0.109299 -0.002376 2.414471 0.005153 -2.900774 -0.600408 0 0 0 0 0 0
$definebone "Side_R1" "ValveBiped.Bip01_Head1" 6.417397 2.45961 3.591151 -62.645115 16.170311 -0.216844 0 0 0 0 0 0
$definebone "Side_R2" "Side_R1" -0.022137 0.019204 2.589817 -17.721959 1.587885 -1.753959 0 0 0 0 0 0
$definebone "Side_R3" "Side_R2" -0.14528 -0.028348 2.437271 -9.540093 -4.813113 1.084548 0 0 0 0 0 0
$definebone "Side_R4" "Side_R3" 0.109295 -0.002376 2.414501 -0.005151 2.900579 -0.600432 0 0 0 0 0 0
$definebone "RibbonL" "ValveBiped.Bip01_Spine4" 1.526993 2.709389 0.406722 -61.553706 -79.1341 47.162647 0 0 0 0 0 0
$definebone "RibbonR" "ValveBiped.Bip01_Spine4" 1.526993 2.709392 -0.406728 -61.55374 100.865597 -132.837016 0 0 0 0 0 0

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
$jigglebone "Side_L1"
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
$jigglebone "Side_L2"
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
$jigglebone "Side_L3"
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
$jigglebone "Side_L4"
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
$jigglebone "Side_R1"
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
$jigglebone "Side_R2"
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
$jigglebone "Side_R3"
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
$jigglebone "Side_R4"
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
$jigglebone "RibbonL"
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
$jigglebone "RibbonR"
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
	 "Side_L1" 0
	 "Side_L2" 0
	 "Side_L3" 0
	 "Side_L4" 0
	 "Side_R1" 0
	 "Side_R2" 0
	 "Side_R3" 0
	 "Side_R4" 0
	 "RibbonL" 0
	 "RibbonR" 0
}

$animation "a_proportions_corrective_animation" "common_male_mud_anims\a_proportions_corrective_animation.smd" {
}

$animation "a_proportions_corrective_animation" "common_male_mud_anims\a_proportions_corrective_animation.smd" {
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 3
}

$animation "a_proportions" "common_male_mud_anims\a_proportions.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_proportions_corrective_animation" 0
}

$sequence "ragdoll" {
	"common_male_mud_anims\ragdoll.smd"
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
	"common_male_mud_anims\ragdoll_01.smd"
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
	"common_male_mud_anims\ragdoll_02.smd"
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
	"common_male_mud_anims\ragdoll_03.smd"
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
	"common_male_mud_anims\ragdoll_04.smd"
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
	"common_male_mud_anims\ragdoll_05.smd"
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
	"common_male_mud_anims\ragdoll_06.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 1
	ikrule "rfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 2
	ikrule "lfoot" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 3
}

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
	"common_male_mud_anims\reference.smd"
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

$collisionjoints "common_male_mud_physics.smd"
{
	$mass 30
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
}
