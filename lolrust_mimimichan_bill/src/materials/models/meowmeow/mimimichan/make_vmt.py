import os
import vdf
import copy


base_data = {
    "$basetexture": "models/meowmeow/mimimichan/",
    "$ambientocclusion": "0",
    "$phong": "1",
    "$phongboost": "0.2",
    "$phongexponent": "1",
    "$phongfresnelranges": "[ 1 0.1 0.1 ]",
    "$phongwarptexture": "models/meowmeow/mimimichan/shader",
    "$lightwarptexture": "models/meowmeow/mimimichan/toon_all",
    "$halflambert": "1",
    "$nodecal": "1"
}

for i in os.listdir():
    if not i.endswith("vtf"):
        continue
    name = i.rsplit(".", 1)[0]
    new_data = copy.deepcopy(base_data)
    new_data["$basetexture"] = new_data["$basetexture"]+name
    new_data = {"VertexLitGeneric": new_data}
    vdf.dump(new_data, open(name+".vmt", "w+"), pretty=True)


