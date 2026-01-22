from pathlib import Path



from utils import animutils



def main():
    unedited = Path("./unedited")
    uncompiled = Path("./uncompiled")

    longest_boom = 0
    for root, dirs, files in unedited.walk():
        for f in files:
            if f == "boom.smd":
                og_anims = animutils.parse_animation(Path(f"{root}/{f}"))
                if len(og_anims.frames) > longest_boom:
                    longest_boom = len(og_anims.frames)

    for root, dirs, files in unedited.walk():
        root_rela_path = root.relative_to(unedited)
        for f in files:
            if f == "idle.smd" and "boom.smd" in files:
                boom_anims = animutils.parse_animation(Path(f"{root}/boom.smd"))
                og_anim = animutils.parse_animation(Path(f"{root}/{f}"))
                og_anim.frames = [boom_anims.frames[-1]]
                to_file = Path(f"{uncompiled}/{root_rela_path}/{f}")
                with open(to_file, "w+") as blah:
                    blah.write(animutils.serialize_animation(og_anim))
                print(f"reversed idle animation {to_file}")
            if f == "boom.smd" or f == "approach.smd":
                # print(Path(f"{root}/{f}"))
                og_anims = animutils.parse_animation(Path(f"{root}/{f}"))
                to_file = Path(f"{uncompiled}/{root_rela_path}/{f}")

                wait_frames = []
                if f == "boom.smd":
                    for i in range(longest_boom - len(og_anims.frames)):
                        wait_frames.append(og_anims.frames[-1])

                og_anims.frames = wait_frames + list(reversed(og_anims.frames))
                print(f"frames={len(og_anims.frames)}")
                to_file.parent.mkdir(parents=True, exist_ok=True)
                with open(to_file, "w+") as blah:
                    blah.write(animutils.serialize_animation(og_anims))
                print(f"reversed {to_file}")

if __name__ == "__main__":
    main()




