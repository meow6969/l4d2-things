from pathlib import Path
import shutil


import utils.l4d2utils


# f1 = Path("/mnt/f/l4d2_altered_assets/2829210319_pink material textures (reupload)")
f1 = Path("/mnt/f/l4d2_altered_assets/l4d2addons/left4dead2_dlc1")
# f1 = Path("/mnt/f/l4d2_altered_assets/l4d2unaltered")
# f2 = Path("/mnt/f/l4d2_altered_assets/1955460385_myl4d2addons_Neptunia")
f2 = Path("/mnt/f/l4d2_altered_assets/l4d2unaltered")


def find_all_conflicts():
    for root, dirs, files in f1.walk():
        rela_path = root.relative_to(f1)
        for file in files:
            try:
                addons_file_path = f2.joinpath(rela_path).joinpath(file)
                print(addons_file_path)
                if addons_file_path.exists():
                    print(f"conflict: {rela_path}/{file}")
                    continue
            except Exception as e:
                pass


def main():
    find_all_conflicts()


if __name__ == "__main__":
    main()

