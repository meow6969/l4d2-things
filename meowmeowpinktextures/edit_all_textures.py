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

magick_modulate_brightness: int = 120
magick_modulate_saturation: int = 140
magick_modulate_hue: int = 55
magick_modulate: tuple[int, int, int] = (
    magick_modulate_brightness,
    magick_modulate_saturation,
    magick_modulate_hue
)

ignore_ssbumps: bool = True

original_textures_folder = Path("./og").resolve()
png_convert_folder = Path("./png").resolve()
modified_png_folder = Path("./modified").resolve()
output_textures_folder = Path("./src").resolve()

gradient_file = Path("./gradient8-256.png").resolve()

num_threads: int = 6


def log(text: str):
    print(text)
    try:
        with open("log.txt", "a+") as f:
            f.write(text + "\n")
    except Exception as e:
        pass


def og_to_png_thread(og_vtf_data: VtfData, og_file: Path, png_file_path: Path):
    # print("started threaD!")
    og_vtf_data.to_png(og_file, png_file_path)
    # print("stopped threaD!")


def convert_og_to_png():
    print("converting og to png")
    threads: list[threading.Thread] = []

    for root, dirs, files in original_textures_folder.walk():
        rela_path = root.relative_to(original_textures_folder)
        print(f"png converting {rela_path}/*...")
        for file in files:
            try:
                og_file = root.joinpath(file)
                if og_file.suffix != ".vtf":
                    continue
                # print(f"{rela_path}/{file}")

                vtf_data = VtfData.from_vtf(og_file)
                # print(f"{vtf_data}")
                if vtf_data.frames > 1:
                    log(f"skipping {rela_path}/{file} because more than 1 frame")
                    continue
                if Flags.FLAG_V3_SSBUMP in vtf_data.flags:
                    log(f"skipping {rela_path}/{file} because it is a ssbump")
                    continue
                if Flags.FLAG_NORMAL in vtf_data.flags:
                    log(f"skipping {rela_path}/{file} because it is a normal")
                    continue

                png_file_path = png_convert_folder.joinpath(rela_path).joinpath(f"{file[:-4]}.png")
                if png_file_path.exists():
                    log(f"skipping {rela_path}/{file} because it already exists")
                    continue
                png_file_path.parent.mkdir(parents=True, exist_ok=True)
                meowing = True
                while meowing:
                    for i in range(num_threads):
                        # print(len(threads))
                        time.sleep(0.01)
                        if i >= len(threads):
                            # print(f"starting thread for  {rela_path}/{file}")
                            t = threading.Thread(target=og_to_png_thread, args=(vtf_data, og_file, png_file_path))
                            t.start()
                            threads.append(t)
                            meowing = False
                            break
                        else:
                            if threads[i].is_alive():
                                pass
                            else:
                                # print(f"starting thread for  {rela_path}/{file}")
                                t = threading.Thread(target=og_to_png_thread, args=(vtf_data, og_file, png_file_path))
                                t.start()
                                threads[i] = t
                                meowing = False
                                break

                # print(png_file_path)

            except Exception as e:
                print(f"error with {rela_path}/{file}")
                traceback.print_exc()
                input()
                # print(e)


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
        num_threads=6,
        thread_check_interval=0.01,
        skip_non_vtf=True
    )
    ed.edit_vtfs()



def modify_png_thread(og_file: Path, modify_file_path: Path):
    r = subprocess.run([
        "magick",
        f"{og_file}", f"{gradient_file}",
        "-channel", "RGB",
        "-interpolate", "Integer",
        "-clut",
        f"{modify_file_path}"
    ])
    if r.returncode != 0:
        print(f"failed to modify {rela_path}/{file}")


def modify_pngs():
    print(f"modifying pngs")
    threads: list[threading.Thread] = []

    for root, dirs, files in png_convert_folder.walk():
        rela_path = root.relative_to(png_convert_folder)
        print(f"modifying {rela_path}/*...")
        for file in files:
            try:
                og_file = root.joinpath(file)
                # vtf_file = original_textures_folder.joinpath(rela_path).joinpath(f"{file[:-4]}.vtf")
                # vtf_data = VtfFile.from_vtf(vtf_file)
                modify_file_path = modified_png_folder.joinpath(rela_path).joinpath(file)
                modify_file_path.parent.mkdir(parents=True, exist_ok=True)

                # print(png_file_path)

                meowing = True
                while meowing:
                    for i in range(num_threads):
                        # print(len(threads))
                        time.sleep(0.01)
                        if i >= len(threads):
                            # print(f"starting thread for  {rela_path}/{file}")
                            t = threading.Thread(target=modify_png_thread, args=(og_file, modify_file_path))
                            t.start()
                            threads.append(t)
                            meowing = False
                            break
                        else:
                            if threads[i].is_alive():
                                pass
                            else:
                                # print(f"starting thread for  {rela_path}/{file}")
                                t = threading.Thread(target=modify_png_thread, args=(og_file, modify_file_path))
                                t.start()
                                threads[i] = t
                                meowing = False
                                break

                        # if i + 1 <= len(threads) and i + 1 < num_threads:
                        #     if not threads[i].is_alive():
                        #         threads[i].join()
                        #         threads[i] = threading.Thread(target=modify_png_thread, args=(og_file, modify_file_path))
                        #         threads[i].start()
                        #         meowing = False
                        # else:
                        #     threads.append(threading.Thread(target=modify_png_thread, args=(og_file, modify_file_path)))
                        #     threads[i].start()
                        #     meowing = False


                # r = subprocess.run([
                #     "magick",
                #     f"{og_file}",
                #     "-modulate", f"{magick_modulate[0]},{magick_modulate[1]},{magick_modulate[2]}",
                #     f"{modify_file_path}"
                # ])
                # r = subprocess.run([
                #     "magick",
                #     f"{og_file}", f"{gradient_file}",
                #     "-channel", "RGB",
                #     "-interpolate", "Blend",
                #     "-clut",
                #     f"{modify_file_path}"
                # ])
                # if r.returncode != 0:
                #     print(f"failed to modify {rela_path}/{file}")
            except Exception as e:
                print(f"error with {rela_path}/{file}")
                traceback.print_exc()
                input()
                # print(e)


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
        png_convert_folder,
        modified_png_folder,
        out_file_processor,
        skip_processor,
        step_processor,
        num_threads=6,
        thread_check_interval=0.01,
        assume_og_is_vtf=True,
        erase_output_folder=False
    )
    ed.edit_vtfs()




def modify_to_vtf_thread(vtf_data: VtfData, og_file: Path, out_file: Path):


    # if vtf_file.exists():
    #     print(f"skipping {rela_path}/{file} because it already exists")
    #     continue
    out_file.parent.mkdir(parents=True, exist_ok=True)
    # print(f"{og_file}")
    # print(f"{out_file}")

    # print(png_file_path)
    vtf_data.to_vtf(og_file, out_file)


def convert_modify_to_vtf():
    print(f"converting modify to vtf")
    threads: list[threading.Thread] = []

    for root, dirs, files in modified_png_folder.walk():
        rela_path = root.relative_to(modified_png_folder)
        print(f"vtf converting {rela_path}/*...")
        for file in files:
            try:
                og_file = root.joinpath(file)
                # print(f"{rela_path}/{file}")
                vtf_file = original_textures_folder.joinpath(rela_path).joinpath(f"{file[:-4]}.vtf")
                if not vtf_file.exists():
                    continue
                vtf_data = VtfData.from_vtf(vtf_file)
                out_file = output_textures_folder.joinpath(rela_path).joinpath(f"{file[:-4]}.vtf")
                out_file.parent.mkdir(parents=True, exist_ok=True)
                meowing = True
                while meowing:
                    time.sleep(0.01)
                    for i in range(num_threads):
                        # print(len(threads))

                        if i >= len(threads):
                            # print(f"starting thread for  {rela_path}/{file}")
                            t = threading.Thread(target=modify_to_vtf_thread, args=(vtf_data, og_file, out_file))
                            t.start()
                            threads.append(t)
                            meowing = False
                            break
                        else:
                            if threads[i].is_alive():
                                pass
                            else:
                                # print(f"starting thread for  {rela_path}/{file}")
                                t = threading.Thread(target=modify_to_vtf_thread, args=(vtf_data, og_file, out_file))
                                t.start()
                                threads[i] = t
                                meowing = False
                                break

                # vtf_data = VtfFile.from_vtf(vtf_file)
                # out_file = output_textures_folder.joinpath(rela_path).joinpath(f"{file[:-4]}.vtf")

                # if vtf_file.exists():
                #     print(f"skipping {rela_path}/{file} because it already exists")
                #     continue

                # print(f"{og_file}")
                # print(f"{out_file}")

                # print(png_file_path)
                # vtf_data.to_vtf(og_file, out_file)
            except Exception as e:
                print(f"error with {rela_path}/{file}")
                traceback.print_exc()
                input()
                # print(e)


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

    r_folder: Path = output_textures_folder.joinpath("materials")
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
        num_threads=6,
        thread_check_interval=0.01,
        assume_og_is_vtf=True,
        erase_output_folder=False
    )
    ed.edit_vtfs()


def main():
    pass
    # nya: int = Flags.FLAG_POINT_SAMPLE.value | Flags.FLAG_TRILINEAR.value | Flags.FLAG_CLAMP_S.value
    #
    # print(nya)
    # print(Flags.from_int(nya))
    # print(VtfFile.from_vtf(Path("/mnt/f/stuff/git/l4d2-things/meowmeowpinktextures/urban_brickwall_06c.vtf")))
    # print(VtfFile.to_png(Path("/mnt/f/stuff/git/l4d2-things/meowmeowpinktextures/urban_brickwall_06c.vtf")))
    # convert_og_to_png()
    # convert_og_to_png_vtf_editor()
    # modify_pngs()
    modify_pngs_vtf_editor()
    # convert_modify_to_vtf()


if __name__ == "__main__":
    main()
