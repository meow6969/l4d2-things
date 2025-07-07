import os
import json
import subprocess

import vdf


og_file = "./tipgraphic.png"
out_file = "./tipgraphic_new.png"

img_scale = "192:192"


class TrackerObject:
    names: list[str]
    pic_file: str
    pos: tuple
    size: tuple

    def __init__(self, key_name: str, pic_file: str, pos: tuple, size: tuple):
        self.names = [key_name]
        # self.pic_file = pic_file
        self.pos = pos
        self.size = size
        self.pic_file = f"pics{self.size[0]}/{pic_file}"


    def add_name(self, key_name):
        if key_name in self.names:
            return
        self.names.append(key_name)

    def __str__(self):
        return f"{{\n  pic_file={self.pic_file}, \n  names={self.names}, \n  pos={self.pos}\n}}"

    def __repr__(self):
        return self.__str__()


def get_pics_dict(pic_dir_name: str) -> dict[int, list[str]]:
    r_dict: dict[int, str] = {}
    fis: list[str] = os.listdir()
    pic_dir_name = os.path.basename(pic_dir_name)
    for fi_n in fis:
        if fi_n.startswith(pic_dir_name) and os.path.isdir(fi_n):
            # print(fi_n)
            # print(pic_dir_name)
            # print(fi_n[len(pic_dir_name):])
            r_dict[int(fi_n[len(pic_dir_name):])] = os.listdir(fi_n)
    return r_dict


with open("graphics.vdf", "r") as f:
    g = vdf.load(f)["graphics_nya"]

# print(f"g={json.dumps(g, indent=2)}")

# tracker: dict[tuple, TrackerObject] = {}
tracker: dict[str, TrackerObject] = {}
base_pics = "./pics"

# the str is only the name of the file
pics: dict[int, list[str]] = get_pics_dict(base_pics)
pics_indexes: dict[int, int] = {}
#current_pic_index = 0

for thingykey in g.keys():
    x = int(g[thingykey]["x"])
    y = int(g[thingykey]["y"])
    size = int(g[thingykey]["width"])
    pos = f"x{x}y{y}"
    if pos in tracker.keys():
        tracker[pos].add_name(thingykey)
        continue
    if size not in pics_indexes.keys():
        pics_indexes[size] = 0

    tracker[pos] = TrackerObject(thingykey, pics[size][pics_indexes[size]], tuple((x, y)), tuple((size, size)))
    pics_indexes[size] += 1

# print(tracker)
# print(json.dumps(tracker, indent=2))

ffmpeg_cmd = ["ffmpeg", "-y", "-i", og_file]
filter_complex = ""
last_overlay_key = "[0:v]"
filter_complex_overlay = ""
pic_index: int = 1 

w_str = ""
for thingykey in tracker.keys():
    # w_str += f"{tracker[thingykey].names} = {tracker[thingykey].pic_file}\n"
    x = tracker[thingykey].pos[0]
    y = tracker[thingykey].pos[1]
    size = tracker[thingykey].size
    w_str += f"{tracker[thingykey].pic_file} = {tracker[thingykey].names}\n"
    ffmpeg_cmd += ["-i", f"{tracker[thingykey].pic_file}"]
    filter_complex += f"[{pic_index}:v]scale={size[0]}:{size[1]}[pic{pic_index}];"
    filter_complex_overlay += f"{last_overlay_key}[pic{pic_index}]overlay={x}:{y}[temp{pic_index}];"
    last_overlay_key = f"[temp{pic_index}]"
    pic_index += 1

ffmpeg_cmd += ["-filter_complex", f"{filter_complex}{filter_complex_overlay}", "-map", last_overlay_key, out_file]

print(w_str)
with open("log.txt", "w+") as f:
    f.write(w_str)

subprocess.run(ffmpeg_cmd)




