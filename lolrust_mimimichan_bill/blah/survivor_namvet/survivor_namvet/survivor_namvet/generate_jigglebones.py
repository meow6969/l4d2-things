
long_hair_jiggle = """
$jigglebone "{{JIGGLE_BONE}}"
{
	is_flexible
	{
		length 20
		tip_mass 0
		pitch_constraint -5 5
		pitch_stiffness 75
		pitch_damping 10
		yaw_stiffness 35
		yaw_damping 20
		along_stiffness 100
		yaw_constraint -10 10
		along_damping 0
		angle_constraint 20
	}
    has_base_spring
	{
		base_mass -1
		stiffness 100
		damping 2
		left_constraint -0.10 0.10
        up_constraint -0.1 0.1
		left_friction 0.1
		up_constraint -.2 .2
		up_friction 0.1
		forward_constraint -0.1 0.1
		forward_friction 0.1
	}
}
"""

breast_jiggle = """
$jigglebone "{{JIGGLE_BONE}}"
{
	is_flexible
	{
		length 15
		tip_mass 2
		pitch_stiffness 240
		pitch_damping 7
		yaw_stiffness 240
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 14
	}
	has_base_spring
	{
		base_mass 1
		stiffness 250
		damping 8
		left_constraint -0.15 0.15
		left_friction 0.01
		up_constraint -0.15 0.15
		up_friction 0.01
		forward_constraint -0.01 0.01
		forward_friction 0.05
	}
}
"""

dress_jiggle_r = """
$jigglebone "{{JIGGLE_BONE}}"
{
	is_flexible
	{
		length 20
		tip_mass 200
		pitch_constraint -50 50
		pitch_friction 10
        pitch_damping 0
		pitch_bounce 0
		yaw_constraint 40 90
		yaw_friction 10
		yaw_bounce 0
        along_stiffness 20
	}
}
"""

dress_jiggle_l = """
$jigglebone "{{JIGGLE_BONE}}"
{
	is_flexible
	{
		length 20
		tip_mass 200
		pitch_constraint -50 50
		pitch_friction 10
        pitch_damping 0
		pitch_bounce 0
		yaw_constraint -40 -90
		yaw_friction 10
		yaw_bounce 0
        along_stiffness 20
	}
}
"""

dress_jiggle_new = """
$jigglebone "{{JIGGLE_BONE}}"
{
	is_flexible
	{
		length 35
		tip_mass 5
		pitch_stiffness 200
		pitch_damping 7
		yaw_stiffness 30
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 15.000011
	}
}
"""


ponytail_jiggle = """
$jigglebone "{{JIGGLE_BONE}}"
{
	is_flexible
	{
		length 1
		tip_mass 0
		pitch_constraint -5 5
		pitch_stiffness 120
		pitch_damping 1
		yaw_stiffness 120
		yaw_damping 1
		along_stiffness 120
		yaw_constraint -5 5
		along_damping 1
		angle_constraint 100
	}
}
"""

out_file = "jigglebones.qci"

bones = [
    ("HairJoint-Bow{{SIDE}}", 5, ponytail_jiggle),
    ("HairJoint-HairBack", 3, ponytail_jiggle),
    ("HairJoint-Ribbon{{SIDE}}", 4, long_hair_jiggle),
    ("J_Sec_{{S}}_SkirtFront", 2, dress_jiggle_new),
    ("J_Sec_{{S}}_SkirtSide", 2, dress_jiggle_new),
    ("J_Sec_{{S}}_SkirtBack", 2, dress_jiggle_new),
    #("J_Sec_R_SkirtFront", 2, dress_jiggle_r),
    #("J_Sec_L_SkirtFront", 2, dress_jiggle_l),
    #("J_Sec_R_SkirtSide", 2, dress_jiggle_r),
    #("J_Sec_L_SkirtSide", 2, dress_jiggle_l),
    #("J_Sec_R_SkirtBack", 2, dress_jiggle_r),
    #("J_Sec_L_SkirtBack", 2, dress_jiggle_l),
    ("J_Sec_{{S}}_Bust", 2, breast_jiggle)
]


r = ""

for b in bones:
    bone_name = b[0]
    num_bones = b[1]
    bone_data = b[2]
    for i in range(num_bones):
        if "{{SIDE}}" in bone_name or "{{S}}" in bone_name:
            r += bone_data.replace("{{JIGGLE_BONE}}", bone_name.replace("{{SIDE}}", "Left").replace("{{S}}", "L")+str(i+1))
            r += "\n"
            r += bone_data.replace("{{JIGGLE_BONE}}", bone_name.replace("{{SIDE}}", "Right").replace("{{S}}", "R")+str(i+1))
            r += "\n"
            continue
        r += bone_data.replace("{{JIGGLE_BONE}}", bone_name+str(i+1))
        r += "\n"

print(r)
with open(out_file, "w+") as f:
    f.write(r)





