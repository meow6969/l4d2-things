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

from utils.vtfutils import Flags, VtfData, BatchVtfEditorStep
from utils.miscutils import debug_log, DebugLogLevel, set_debug_log_level


set_debug_log_level(DebugLogLevel.DEBUG)

original_textures_folder = Path("./og").resolve()
png_convert_folder = Path("./png").resolve()
grayscaled_png_folder = Path("./grayscaled").resolve()
output_textures_folder = Path("./vtf").resolve()


def convert_og_to_png():
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
        num_threads=6,
        thread_check_interval=0.01,
        skip_non_vtf=True
    )
    ed.edit_vtfs()


def grayscale_png():
    # i dont mark og_vtf_data as possibly None because i am not passing the argument skip_non_vtf=False to the BatchVtfEditorStep
    def out_file_processor(og_vtf_data: VtfData, og_file: Path, in_file: Path, out_path: Path, rela_path: Path) -> Path:
        return out_path.joinpath(rela_path)

    def skip_processor(og_vtf_data: VtfData, og_file: Path, in_file: Path, out_file: Path, rela_path: Path) -> bool:
        if out_file.exists():
            debug_log(f"skipping {rela_path} because it already exists", DebugLogLevel.DEBUG)
            return True

        return False

    def step_processor(og_vtf_data: VtfData, og_file: Path, in_file: Path, out_file: Path, rela_path: Path) -> bool:
        # r = subprocess.run([
        #     "magick",
        #     f"{in_file}",
        #     "-colorspace", "Gray",
        #     f"{out_file}"
        # ])
        r = subprocess.run([
            "magick",
            f"{in_file}",
            "-colorspace", "Gray",
            f"PNG24:{out_file}"
        ])
        if r.returncode != 0:
            debug_log(f"failed to modify {rela_path}", DebugLogLevel.DEBUG)
            return False
        return True

    ed: BatchVtfEditorStep = BatchVtfEditorStep(
        original_textures_folder, 
        png_convert_folder,
        grayscaled_png_folder,
        out_file_processor,
        skip_processor,
        step_processor,
        num_threads=6,
        thread_check_interval=0.01,
        assume_og_is_vtf=True,
        erase_output_folder=False
    )
    ed.edit_vtfs()


def grayscale_to_vtf():
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

    r_folder: Path = output_textures_folder.joinpath("materials")
    if r_folder.exists():
        debug_log(f"erasing output folder {r_folder}...", DebugLogLevel.HUMAN)
        shutil.rmtree(r_folder)
        debug_log(f"done erasing!", DebugLogLevel.HUMAN)
    r_folder.mkdir(parents=True, exist_ok=True)

    ed: BatchVtfEditorStep = BatchVtfEditorStep(
        original_textures_folder, 
        grayscaled_png_folder,
        output_textures_folder,
        out_file_processor,
        skip_processor,
        step_processor,
        num_threads=6,
        thread_check_interval=0.01,
        assume_og_is_vtf=True,
        erase_output_folder=False
    )
    ed.edit_vtfs()


def main():
    convert_og_to_png()
    grayscale_png()
    grayscale_to_vtf()


if __name__ == "__main__":
    main()



