bone = """
$jigglebone "{{BONE_NAME}}"
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 200
		pitch_damping 14
		yaw_stiffness 200
		yaw_damping 14
		along_stiffness 100
		along_damping 0
		yaw_constraint -3 39.999999
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 39.999999
	}
}
"""

default_bones = 2

overrides = {
    1: 4,
    2: 3,
    3: 3,
    4: 3,
    5: 3,
    6: 3,
    16: 3,
    17: 7,
    18: 7
}


for i in range(19):
    i += 1
    num_bones = default_bones
    if i in overrides:
        num_bones = overrides[i]
    for j in range(num_bones):
        j += 1
        print(bone.replace("{{BONE_NAME}}", f"J_Sec_Hair{j}_{i}"))
        print()
    print()


