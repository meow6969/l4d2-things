from pathlib import Path
import subprocess
import shutil

import vdf

from utils.steamutils import *

from utils.miscutils import DEBUG_LOG_LEVEL, DebugLogLevel

L4D2_PATH: Path | None = get_game_install_path(550)
L4D2_DS_PATH: Path | None = get_game_install_path(222860)
# L4D2_PATH: Path | None = Path("/mnt/f/stuff/l4d2game/")
__vpkeditcli_args = ["vpkeditcli", "--no-progress", "-v", "1", "-c", "200"]
__l4d2_vpk_order = ["hl2", "left4dead2", "left4dead2_dlc1", "left4dead2_dlc2", "left4dead2_dlc3", "update"]


def get_vpk_from_folder(folder: Path, nofail: bool = False) -> Path | None:
    for file in folder.iterdir():
        if file.suffix == ".vpk":
            return file
    if nofail:
        return None
    raise Exception(f"could not find .vpk in folder {folder}")


def extract_folder_from_vpk(vpk: Path, output_folder: Path, vpk_folder_to_extract: str = "/",
                            suffixes_to_extract: list[str] | None = None, ignore_exists=False):
    if output_folder.exists() and not ignore_exists:
        raise Exception(f"output folder {output_folder} already exists")
    output_folder.mkdir(parents=True, exist_ok=True)
    r = subprocess.run(__vpkeditcli_args + ["-e", vpk_folder_to_extract, "-o", f"{output_folder}", f"{vpk}"],
                       stdout=subprocess.PIPE)
    if r.returncode != 0:
        debug_log(r.stdout.decode(), DebugLogLevel.ERROR)
        raise Exception
    if suffixes_to_extract is not None:
        for file in output_folder.rglob("*"):
            if file.suffix not in suffixes_to_extract and not file.is_dir():
                os.remove(file)


def extract_folder_from_l4d2(output_folder: Path, vpk_folder_to_extract: str = "/",
                             suffixes_to_extract: list[str] | None = None, ignore_exists=False, ignore_addons=True):
    if output_folder.exists() and not ignore_exists:
        raise Exception(f"output folder {output_folder} already exists")

    # first we extract all of the files not in vpks
    for sub_folder in __l4d2_vpk_order:
        if vpk_folder_to_extract == "/" or vpk_folder_to_extract == "//":
            for i in L4D2_PATH.joinpath(sub_folder).iterdir():
                if i.suffix == ".vpk":
                    continue
                if ignore_addons and i.name == "addons":
                    continue
                if i.is_dir():
                    shutil.copytree(i, output_folder.joinpath(i.name), dirs_exist_ok=True)
                    continue
                shutil.copyfile(i, output_folder.joinpath(i.name))
            continue
        if vpk_folder_to_extract.startswith("/"):
            nya_folder_to_extract = vpk_folder_to_extract[1:]
            if nya_folder_to_extract.startswith("/"):
                nya_folder_to_extract = nya_folder_to_extract[1:]
        else:
            nya_folder_to_extract = vpk_folder_to_extract
        src_folder = L4D2_PATH.joinpath(sub_folder).joinpath(nya_folder_to_extract)
        print(src_folder)
        print(output_folder.joinpath(nya_folder_to_extract))
        if not src_folder.exists():
            continue
        # shutil.copytree(src_folder, output_folder.joinpath(sub_folder).joinpath(nya_folder_to_extract),
        shutil.copytree(src_folder, output_folder,
                        dirs_exist_ok=True)

    # then we extract the vpks
    # this is bcs vpk always has priority over files
    for sub_folder in __l4d2_vpk_order:
        vpk = get_vpk_from_folder(L4D2_PATH.joinpath(sub_folder), True)
        if not vpk:
            continue
        extract_folder_from_vpk(vpk, output_folder, vpk_folder_to_extract, suffixes_to_extract, ignore_exists=True)


def extract_all_enabled_addons(output_folder: Path, ignore_exists=False):
    if output_folder.exists() and not ignore_exists:
        raise Exception(f"output folder {output_folder} already exists")
    output_folder.mkdir(parents=True, exist_ok=True)
    addon_list_file = L4D2_PATH.joinpath("left4dead2").joinpath("addonlist.txt")
    addons_dir = L4D2_PATH.joinpath("left4dead2").joinpath("addons")
    with open(addon_list_file, "r") as f:
        addon_list = vdf.load(f)["AddonList"]
    for addon in addon_list.keys():
        if addon_list[addon] != "1":
            print(f"skipping addon: {addon}")
            continue
        print(f"extracting addon: {addon}")
        addon_path = addons_dir.joinpath(addon.replace("\\", "/"))
        extract_folder_from_vpk(addon_path, output_folder, "//", ignore_exists=True)


def main():
    output_folder = Path.cwd().joinpath("particles")
    subprocess.run(["rm", "-r", output_folder])
    folder_to_extract = "/particles/"
    suffixes_to_extract = [".pcf"]
    extract_folder_from_l4d2(output_folder, folder_to_extract, suffixes_to_extract)


if __name__ == "__main__":
    main()

