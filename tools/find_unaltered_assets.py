from pathlib import Path
import shutil


import utils.l4d2utils


addons_extract_folder = Path("/mnt/f/l4d2_altered_assets/l4d2addons")
game_extract_folder = Path("/mnt/f/l4d2_altered_assets/l4d2assets")
unaltered_extract_folder = Path("/mnt/f/l4d2_altered_assets/l4d2unaltered")


def extract_all_addons():
    utils.l4d2utils.extract_all_enabled_addons(addons_extract_folder, ignore_exists=True)


def extract_all_game_assets():
    print("extracting all game assets...")
    utils.l4d2utils.extract_folder_from_l4d2(game_extract_folder, vpk_folder_to_extract="//", ignore_exists=True)
    print("done extracting game assets")


def find_all_unaltered_assets():
    for root, dirs, files in game_extract_folder.walk():
        rela_path = root.relative_to(game_extract_folder)
        for file in files:
            try:
                addons_file_path = addons_extract_folder.joinpath(rela_path).joinpath(file)
                if addons_file_path.exists():
                    print(f"skipping file {rela_path.joinpath(file)}")
                    continue
                save_file_path = unaltered_extract_folder.joinpath(rela_path).joinpath(file)
                original_file_path = root.joinpath(file)
                save_file_path.parent.mkdir(parents=True, exist_ok=True)
                if not save_file_path.exists():
                    shutil.copyfile(original_file_path, save_file_path)
                print(f"copied file {rela_path.joinpath(file)}")
            except Exception as e:
                try:
                    print(f"failed to copy file {rela_path.joinpath(file)}")
                    print(f"got error: {e}")
                except UnicodeEncodeError:
                    pass
        # if not addons_extract_folder.joinpath(rela_path).exists():


def main():
    extract_all_addons()
    extract_all_game_assets()
    find_all_unaltered_assets()


if __name__ == "__main__":
    main()

