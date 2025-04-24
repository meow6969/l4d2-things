from pathlib import Path
import subprocess


from utils.steamutils import *

from utils.miscutils import DEBUG_LOG_LEVEL, DebugLogLevel

L4D2_PATH: Path | None = get_game_install_path(550)
__vpkeditcli_args = ["vpkeditcli", "--no-progress", "-v", "1", "-c", "200"]
__l4d2_vpk_order = ["left4dead2", "left4dead2_dlc1", "left4dead2_dlc2", "left4dead2_dlc3", "update"]


def get_vpk_from_folder(folder: Path) -> Path:
    for file in folder.iterdir():
        if file.suffix == ".vpk":
            return file
    raise Exception(f"could not find .vpk in folder {folder}")


def extract_folder_from_vpk(vpk: Path, output_folder: Path, vpk_folder_to_extract: str,
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


def extract_folder_from_l4d2(output_folder: Path, vpk_folder_to_extract: str,
                             suffixes_to_extract: list[str] | None = None, ignore_exists=False):
    if output_folder.exists() and not ignore_exists:
        raise Exception(f"output folder {output_folder} already exists")
    for sub_folder in __l4d2_vpk_order:
        vpk = get_vpk_from_folder(L4D2_PATH.joinpath(sub_folder))
        extract_folder_from_vpk(vpk, output_folder, vpk_folder_to_extract, suffixes_to_extract, ignore_exists=True)


def main():
    output_folder = Path.cwd().joinpath("particles")
    subprocess.run(["rm", "-r", output_folder])
    folder_to_extract = "/particles/"
    suffixes_to_extract = [".pcf"]
    extract_folder_from_l4d2(output_folder, folder_to_extract, suffixes_to_extract)


if __name__ == "__main__":
    main()

