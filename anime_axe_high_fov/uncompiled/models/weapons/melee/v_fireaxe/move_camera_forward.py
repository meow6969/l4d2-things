from pathlib import Path
import os


# wtf is dis doing 

#translation = (0, -50, 0)
translation = (0, 0, -50)
bone_id = 30  # r clavicle
global child_bone_ids
child_bone_ids = None
# child_bone_ids = [31, 32]
line_ending = "\r\n"


def move_cam_forward(f: Path, f_o: Path):
    new = ""
    collecting_children = False
    global child_bone_ids
    # child_bone_ids = None

    with open(f, "r") as o:
        for l in o.read().split("\n"):
            if child_bone_ids == None and not collecting_children:
                if l == "nodes":
                    collecting_children = True
                    child_bone_ids = []
                new += l + line_ending
                continue
            if collecting_children:
                new += l + line_ending
                if l == "end":
                    collecting_children = False
                    print(child_bone_ids)
                    #print()
                    continue
                l_s = l.split()
                the_bone = int(l_s[0])
                if the_bone == bone_id:
                    continue
                the_parent = int(l_s[2])
                if the_parent == bone_id or the_parent in child_bone_ids:
                # if the_parent == bone_id:
                    child_bone_ids.append(the_bone)
                continue
            if not l.startswith("    "):
                new += l + line_ending
                continue
            # print(child_bone_ids)
            cur_offset = (0, 0, 0)
            datas = l.split()
            cur_bone_id = int(datas[0])
            if cur_bone_id == bone_id:
                cur_offset = translation
            elif cur_bone_id in child_bone_ids:
                cur_offset = (translation[0] * -1, translation[1] * -1, translation[2] * -1)
            # if not l.startswith(f"    {bone_id} "):
            #     for 
            #     new += l + "\n"
            #     continue
            # datas = l.split()
            new_x = float(datas[1]) + cur_offset[0]
            new_y = float(datas[2]) + cur_offset[1]
            new_z = float(datas[3]) + cur_offset[2]
            new += f"    {datas[0]} {new_x:.6f} {new_y:.6f} {new_z:.6f} {datas[4]} {datas[5]} {datas[6]}" + line_ending

    with open(f_o, "w+") as o:
        o.write(new)

def move_bone_forward(f: Path, f_o: Path):
    new = ""
    collecting_children = False

    with open(f, "r") as o:
        for l in o.read().split("\n"):
            if not l.startswith("    "):
                new += l + line_ending
                continue
            # print(child_bone_ids)
            cur_offset = translation
            datas = l.split()
            cur_bone_id = int(datas[0])
            if cur_bone_id != bone_id:
                new += l + line_ending
                continue
            # if not l.startswith(f"    {bone_id} "):
            #     for 
            #     new += l + "\n"
            #     continue
            # datas = l.split()
            new_x = float(datas[1]) + cur_offset[0]
            new_y = float(datas[2]) + cur_offset[1]
            new_z = float(datas[3]) + cur_offset[2]
            new += f"    {datas[0]} {new_x:.6f} {new_y:.6f} {new_z:.6f} {datas[4]} {datas[5]} {datas[6]}" + line_ending

    with open(f_o, "w+") as o:
        o.write(new)


def main():
    for f in os.listdir("./v_fireaxe_anims_og"):
        f_i = Path(f"v_fireaxe_anims_og/{f}")
        f_o = Path(f"v_fireaxe_anims/{f}")
        #move_cam_forward(f_i, f_o)
        move_bone_forward(f_i, f_o)


if __name__ == "__main__":
    # move_cam_forward(Path("a_idle_01.smd"))
    main()

