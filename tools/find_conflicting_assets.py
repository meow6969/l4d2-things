from pathlib import Path
import shutil
import sys


import utils.l4d2utils
from utils.miscutils import debug_log, DebugLogLevel


if len(sys.argv) != 3:
    debug_log("invalid number of args, need 2 file system paths", DebugLogLevel.ERROR)
    exit(1)

# f1 = Path("/mnt/f/l4d2_altered_assets/2829210319_pink material textures (reupload)")
# f1 = Path("/mnt/f/l4d2_altered_assets/l4d2addons/left4dead2_dlc1")
# f1 = Path("/mnt/f/stuff/git/l4d2-things/meowmeowpinktextures/src")
# f1 = Path("/mnt/f/l4d2_altered_assets/l4d2unaltered")
# f2 = Path("/mnt/f/l4d2_altered_assets/1955460385_myl4d2addons_Neptunia")
# f2 = Path("/mnt/f/l4d2_altered_assets/l4d2unaltered")
# f2 = Path("/mnt/f/stuff/git/l4d2-things/meowmeowpinktextures/2829210319_pink material textures (reupload)")


f1 = Path(f"{sys.argv[1]}").resolve()
f2 = Path(f"{sys.argv[2]}").resolve()

if not f1.exists():
    debug_log(f"path does not exist: {sys.argv[1]}", DebugLogLevel.ERROR)
    exit(2)
if not f2.exists():
    debug_log(f"path does not exist: {sys.argv[2]}", DebugLogLevel.ERROR)
    exit(3)
if not f1.is_dir():
    debug_log(f"path is not a folder: {sys.argv[1]}", DebugLogLevel.ERROR)
    exit(4)
if not f2.is_dir():
    debug_log(f"path is not a folder: {sys.argv[2]}", DebugLogLevel.ERROR)
    exit(5)


def find_all_conflicts():
    for root, dirs, files in f1.walk():
        rela_path = root.relative_to(f1)
        for file in files:
            try:
                addons_file_path = f2.joinpath(rela_path).joinpath(file)
                # print(addons_file_path)
                if addons_file_path.exists():
                    debug_log(f"conflict: {rela_path}/{file}", DebugLogLevel.HUMAN)
                    continue
            except Exception as e:
                pass


def main():
    find_all_conflicts()


if __name__ == "__main__":
    main()

