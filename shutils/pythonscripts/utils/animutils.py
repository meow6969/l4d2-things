from pathlib import Path
from enum import Enum


class SmdAnimationFrame:
    bones: dict[int, list[float]]

    def __init__(self):
        self.bones = {}


class SmdBone:
    name: str
    parent: int

    def __init__(self, n: str, p: int):
        self.name = n
        self.parent = p



class SmdAnimation:
    frames: list[SmdAnimationFrame]
    skeleton: dict[int, SmdBone]
    version: int

    def __init__(self):
        self.frames = []
        self.skeleton = {}
        self.version = -1


def parse_animation(f: Path) -> SmdAnimation:
    with open(f, "r") as ff:
        content = ff.read()
    t = ""

    state = 0
    anim = SmdAnimation()
    # cur_frame = None
    
    for line in content.split("\n"):
        if line.strip().startswith("//"):
            continue
        if line.strip() == "":
            continue
        match state:
            case 0:
                # print(f"0) {line}")
                if not line.startswith("version"):
                    raise Exception("anim file is malformed")
                anim.version = int(line.split()[1])
                state += 1
            case 1:
                # print(f"1) {line}")
                if not line.startswith("nodes"):
                    raise Exception("anim file is malformed")
                state += 1
            case 2:
                # print(f"2) {line}")
                if line.startswith("end"):
                    state += 1
                    continue
                spl = line.split("//")[0].split("\"")
                anim.skeleton[int(spl[0])] = SmdBone(spl[1].replace("\"", ""), int(spl[2]))
            case 3:
                # print(f"3) {line}")
                if not line.startswith("skeleton"):
                    raise Exception("anim file is malformed")
                state += 1
            case 4:
                if not line.strip().startswith("time"):
                    raise Exception("anim file is malformed")
                state += 1
                # cur_frame_index = int(line.split()[1])
                cur_frame = SmdAnimationFrame()
            case 5:
                if line.strip().startswith("time"):
                    # anim.frames[cur_frame_index] = cur_frame
                    anim.frames.append(cur_frame)
                    # cur_frame_index = int(line.split()[1])
                    cur_frame = SmdAnimationFrame()
                    continue
                if line.strip().startswith("end"):
                    # anim.frames[cur_frame_index] = cur_frame
                    anim.frames.append(cur_frame)
                    cur_frame = None
                    break
                spl = line.split()
                blah = []
                for i in spl[1:]:
                    blah.append(float(i))
                cur_frame.bones[int(spl[0])] = blah
    return anim


def serialize_animation(anim: SmdAnimation):
    r = ""
    LE = "\r\n"

    r += f"version {anim.version}{LE}"
    r += f"nodes{LE}"
    # print(anim.skeleton)
    for i in anim.skeleton.keys():
        bone = anim.skeleton[i]
        r += f"  {i} \"{bone.name}\" {bone.parent}{LE}"
    r += f"end{LE}"
    r += f"skeleton{LE}"
    for i, frame in enumerate(anim.frames):
        r += f"  time {i}{LE}"
        for j in frame.bones:
            bone = frame.bones[j]
            r += f"    {j}"
            for k in bone:
                r += f" {k:.6f}"
            r += f"{LE}"
    r += f"end{LE}"

    return r


def main():
    a = parse_animation(Path("/mnt/f/stuff/git/l4d2-things/dead_air_airplane_reverse/og/models/hybridphysx/decompiled 0.74/airliner_fire_emit1/airliner_fire_emit1_anims/idle.smd"))
    print(serialize_animation(a))


if __name__ == "__main__":
    main()






