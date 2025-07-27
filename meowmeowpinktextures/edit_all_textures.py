import os
import subprocess
from pathlib import Path
from enum import Enum
import json
import time
import traceback
import threading
import shutil

import vdf
import sourcepp

from utils.vtfutils import Flags, VtfData, BatchVtfEditorStep
from utils.miscutils import debug_log, DebugLogLevel, set_debug_log_level


set_debug_log_level(DebugLogLevel.HUMAN)

magick_modulate_brightness: int = 120
magick_modulate_saturation: int = 140
magick_modulate_hue: int = 55
magick_modulate: tuple[int, int, int] = (
    magick_modulate_brightness,
    magick_modulate_saturation,
    magick_modulate_hue
)

ignore_ssbumps: bool = True
num_threads: int = 2  # os.cpu_count()

original_textures_folder = Path("./og").resolve()
png_convert_folder = Path("./png").resolve()
contrast_png_folder = Path("./contrast").resolve()
modified_png_folder = Path("./modified").resolve()
output_textures_folder = Path("./src").resolve()

# gradient_file = Path("./gradient14.png").resolve()
gradient_file = Path("./gradient_pinhead1.png").resolve()


def convert_og_to_png_vtf_editor():
    # i dont mark og_vtf_data as possibly None because i am not passing the argument skip_non_vtf=False to the BatchVtfEditorStep
    def out_file_processor(og_vtf_data: VtfData, og_file: Path, in_file: Path, out_path: Path, rela_path: Path) -> Path:
        return out_path.joinpath(rela_path).parent.joinpath(f"{og_file.name[:-4]}.png")

    def skip_processor(og_vtf_data: VtfData, og_file: Path, in_file: Path, out_file: Path, rela_path: Path) -> bool:
        if og_vtf_data.frames > 1:
            debug_log(f"skipping {rela_path} because more than 1 frame", DebugLogLevel.DEBUG)
            return True
        if Flags.FLAG_V3_SSBUMP in og_vtf_data.flags:
            debug_log(f"skipping {rela_path} because it is a ssbump", DebugLogLevel.DEBUG)
            return True
        if Flags.FLAG_NORMAL in og_vtf_data.flags:
            debug_log(f"skipping {rela_path} because it is a normal", DebugLogLevel.DEBUG)
            return True
        if out_file.exists():
            debug_log(f"skipping {rela_path} because it already exists", DebugLogLevel.DEBUG)
            return True
        return False


    def step_processor(og_vtf_data: VtfData, og_file: Path, in_file: Path, out_file: Path, rela_path: Path) -> bool:
        og_vtf_data.to_png(in_file, out_file)
        return True

    ed: BatchVtfEditorStep = BatchVtfEditorStep(
        original_textures_folder, 
        original_textures_folder,
        png_convert_folder,
        out_file_processor,
        skip_processor,
        step_processor,
        num_threads=num_threads,
        thread_check_interval=0.01,
        skip_non_vtf=True,
        erase_output_folder=True  # False
    )
    ed.edit_vtfs()


def contrast_pngs_vtf_editor():
    # i dont mark og_vtf_data as possibly None because i am not passing the argument skip_non_vtf=False to the BatchVtfEditorStep
    def out_file_processor(og_vtf_data: VtfData, og_file: Path, in_file: Path, out_path: Path, rela_path: Path) -> Path:
        return out_path.joinpath(rela_path)

    def skip_processor(og_vtf_data: VtfData, og_file: Path, in_file: Path, out_file: Path, rela_path: Path) -> bool:
        return False


    def step_processor(og_vtf_data: VtfData, og_file: Path, in_file: Path, out_file: Path, rela_path: Path) -> bool:
        r = subprocess.run([
            "magick",
            f"{in_file}",
            "-channel", "RGB",
            # "-level", "15%,85%,1.0",
            "-sharpen", "15x80.0",
            f"{out_file}"
        ])
        if r.returncode != 0:
            debug_log(f"failed to modify {rela_path}", DebugLogLevel.DEBUG)
            return False
        return True

    ed: BatchVtfEditorStep = BatchVtfEditorStep(
        original_textures_folder, 
        png_convert_folder,
        contrast_png_folder,
        out_file_processor,
        skip_processor,
        step_processor,
        num_threads=num_threads,
        thread_check_interval=0.01,
        assume_og_is_vtf=True,
        erase_output_folder=True  # False
    )
    ed.edit_vtfs()


def modify_pngs_vtf_editor():
    # i dont mark og_vtf_data as possibly None because i am not passing the argument skip_non_vtf=False to the BatchVtfEditorStep
    def out_file_processor(og_vtf_data: VtfData, og_file: Path, in_file: Path, out_path: Path, rela_path: Path) -> Path:
        return out_path.joinpath(rela_path)

    def skip_processor(og_vtf_data: VtfData, og_file: Path, in_file: Path, out_file: Path, rela_path: Path) -> bool:
        if out_file.exists():
            debug_log(f"skipping {rela_path} because it already exists", DebugLogLevel.DEBUG)
            return True

        return False


    def step_processor(og_vtf_data: VtfData, og_file: Path, in_file: Path, out_file: Path, rela_path: Path) -> bool:
        r = subprocess.run([
            "magick",
            f"{in_file}", f"{gradient_file}",
            "-channel", "RGB",
            "-interpolate", "Integer",
            "-clut",
            f"{out_file}"
        ])
        if r.returncode != 0:
            debug_log(f"failed to modify {rela_path}", DebugLogLevel.DEBUG)
            return False
        return True

    ed: BatchVtfEditorStep = BatchVtfEditorStep(
        original_textures_folder, 
        contrast_png_folder,
        modified_png_folder,
        out_file_processor,
        skip_processor,
        step_processor,
        num_threads=num_threads,
        thread_check_interval=0.01,
        assume_og_is_vtf=True,
        erase_output_folder=True  # False
    )
    ed.edit_vtfs()


def convert_modify_to_vtf_vtf_editor():
    # i dont mark og_vtf_data as possibly None because i am not passing the argument skip_non_vtf=False to the BatchVtfEditorStep
    def out_file_processor(og_vtf_data: VtfData, og_file: Path, in_file: Path, out_path: Path, rela_path: Path) -> Path:
        if rela_path.suffix == ".vtf":
            return out_path.joinpath(rela_path)
        return out_path.joinpath(rela_path.parent).joinpath(f"{rela_path.name[:-4]}.vtf")

    def skip_processor(og_vtf_data: VtfData, og_file: Path, in_file: Path, out_file: Path, rela_path: Path) -> bool:
        if out_file.exists():
            debug_log(f"skipping {rela_path} because it already exists", DebugLogLevel.DEBUG)
            return True

        return False

    def step_processor(og_vtf_data: VtfData, og_file: Path, in_file: Path, out_file: Path, rela_path: Path) -> bool:
        og_vtf_data.to_vtf(in_file, out_file) 
        return True

    # we do it this way so that it doesnt delete the addoninfo.txt and addonimage.jpg inside ./src
    r_folder: Path = output_textures_folder.joinpath("materials")
    if r_folder.exists():
        debug_log(f"erasing output folder {r_folder}...", DebugLogLevel.HUMAN)
        shutil.rmtree(r_folder)
        debug_log(f"done erasing!", DebugLogLevel.HUMAN)
    r_folder.mkdir(parents=True, exist_ok=True)

    ed: BatchVtfEditorStep = BatchVtfEditorStep(
        original_textures_folder, 
        modified_png_folder,
        output_textures_folder,
        out_file_processor,
        skip_processor,
        step_processor,
        num_threads=num_threads,
        thread_check_interval=0.01,
        assume_og_is_vtf=True,
        erase_output_folder=False
    )
    ed.edit_vtfs()


def main():
    # nya: int = Flags.FLAG_POINT_SAMPLE.value | Flags.FLAG_TRILINEAR.value | Flags.FLAG_CLAMP_S.value
    #
    # print(nya)
    # print(Flags.from_int(nya))
    # print(VtfFile.from_vtf(Path("/mnt/f/stuff/git/l4d2-things/meowmeowpinktextures/urban_brickwall_06c.vtf")))
    # print(VtfFile.to_png(Path("/mnt/f/stuff/git/l4d2-things/meowmeowpinktextures/urban_brickwall_06c.vtf")))
    convert_og_to_png_vtf_editor()
    contrast_pngs_vtf_editor()
    modify_pngs_vtf_editor()
    convert_modify_to_vtf_vtf_editor()


if __name__ == "__main__":
    main()
