from pathlib import Path



from utils import animutils



def main():
    unedited = Path("./unedited")
    uncompiled = Path("./uncompiled")

    
    reverse_files = ["barricade_break.smd"]

    for root, dirs, files in unedited.walk():
        root_rela_path = root.relative_to(unedited)
        for f in files:
            if f not in reverse_files:
                continue
            og_anims = animutils.parse_animation(Path(f"{root}/{f}"))

            og_anims.frames = list(reversed(og_anims.frames))
            to_file = Path(f"{uncompiled}/{root_rela_path}/{f}")
            print(f"frames={len(og_anims.frames)}")
            to_file.parent.mkdir(parents=True, exist_ok=True)
            with open(to_file, "w+") as blah:
                blah.write(animutils.serialize_animation(og_anims))
            print(f"reversed {uncompiled}")

if __name__ == "__main__":
    main()




