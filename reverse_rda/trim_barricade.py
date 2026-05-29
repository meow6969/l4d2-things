from pathlib import Path



from utils import animutils



def main():
    barricade_anim = Path("./uncompiled/models/rda/props_street/barricade_unique/barricade_unique_anims/barricade_break_og.smd")
    out_anim = Path("./uncompiled/models/rda/props_street/barricade_unique/barricade_unique_anims/barricade_break.smd")

    og_anims = animutils.parse_animation(barricade_anim)

    og_anims.frames = og_anims.frames[147:]
    print(f"frames={len(og_anims.frames)}")
    with open(out_anim, "w+") as blah:
        blah.write(animutils.serialize_animation(og_anims))
    print(f"sliced {barricade_anim}")

if __name__ == "__main__":
    main()




