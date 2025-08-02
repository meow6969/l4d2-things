from pathlib import Path
import shutil
import sys


import utils.l4d2utils
from utils.miscutils import debug_log, DebugLogLevel


if len(sys.argv) != 2:
    debug_log("invalid number of args, need 1 file system path", DebugLogLevel.ERROR)
    exit(1)

# addons_extract_folder = Path("/mnt/f/l4d2_altered_assets/l4d2addons")
game_extract_folder = Path(f"{sys.argv[1]}").resolve()
# unaltered_extract_folder = Path("/mnt/f/l4d2_altered_assets/l4d2unaltered")

if not game_extract_folder.parent.exists():
    debug_log(f"parent folder \"{game_extract_folder.parent}\" doesnt exist", DebugLogLevel.ERROR)
    exit(1)
if game_extract_folder.exists():
    debug_log(f"extract folder \"{game_extract_folder}\" already exists", DebugLogLevel.ERROR)
    exit(1)


def extract_all_game_assets():
    debug_log("extracting all game assets...", DebugLogLevel.HUMAN)
    utils.l4d2utils.extract_folder_from_l4d2(game_extract_folder, vpk_folder_to_extract="//", ignore_exists=True)
    debug_log("done extracting game assets", DebugLogLevel.HUMAN)

def main():
    extract_all_game_assets()


if __name__ == "__main__":
    main()

