import os
import subprocess
from pathlib import Path
from enum import Enum
import json
import time
import traceback
import threading


original_sounds_folder = Path("./og").resolve()
sound_replace_folder = Path("./animer-noises").resolve()
output_sounds_folder = Path("./src").resolve()

clip_sounds: bool = False

num_threads: int = 6


def get_video_length(video: Path) -> float:
    r = subprocess.run([
        "ffprobe",
        "-v", "error",
        "-show_entries", "format=duration",
        "-of", "detault=noprint_wrappers=1:nokey=1",
        f"{video}"
    ], capture_output=True)
    if r.returncode != 0:
        print(r.stdout)
        print(r.stderr)
        raise RuntimeError(f"ffprobe failed with code {r.returncode}")
    return float(r.stdout)


def create_sounds_index():
    print("creating sound index...")
    threads: list[threading.Thread] = []

    for root, dirs, files in sound_replace_folder.walk():
        for file in files:
            try:
                og_file = root.joinpath(file)
                if og_file.suffix != ".vtf":
                    continue

                out_file = output_sounds_folder.joinpath(rela_path).joinpath(f"{file[:-4]}.png")
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
                            t = threading.Thread(target=og_to_png_thread, args=(og_file, png_file_path))
                            t.start()
                            threads.append(t)
                            meowing = False
                            break
                        else:
                            if threads[i].is_alive():
                                pass
                            else:
                                # print(f"starting thread for  {rela_path}/{file}")
                                t = threading.Thread(target=og_to_png_thread, args=(og_file, png_file_path))
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


def log(text: str):
    print(text)
    try:
        with open("log.txt", "a+") as f:
            f.write(text + "\n")
    except Exception as e:
        pass


def replace_sounds_thread(og_file: Path, out_file: Path):
    VtfFile.to_png(og_file, out_file)


def replace_sounds():
    print("converting og to png")
    threads: list[threading.Thread] = []

    for root, dirs, files in original_sounds_folder.walk():
        rela_path = root.relative_to(original_textures_folder)
        print(f"png converting {rela_path}/*...")
        for file in files:
            try:
                og_file = root.joinpath(file)
                if og_file.suffix != ".vtf":
                    continue

                out_file = output_sounds_folder.joinpath(rela_path).joinpath(f"{file[:-4]}.png")
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
                            t = threading.Thread(target=og_to_png_thread, args=(og_file, png_file_path))
                            t.start()
                            threads.append(t)
                            meowing = False
                            break
                        else:
                            if threads[i].is_alive():
                                pass
                            else:
                                # print(f"starting thread for  {rela_path}/{file}")
                                t = threading.Thread(target=og_to_png_thread, args=(og_file, png_file_path))
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


def main():
    pass
    # nya: int = Flags.FLAG_POINT_SAMPLE.value | Flags.FLAG_TRILINEAR.value | Flags.FLAG_CLAMP_S.value
    #
    # print(nya)
    # print(Flags.from_int(nya))
    # print(VtfFile.from_vtf(Path("/mnt/f/stuff/git/l4d2-things/meowmeowpinktextures/urban_brickwall_06c.vtf")))
    # print(VtfFile.to_png(Path("/mnt/f/stuff/git/l4d2-things/meowmeowpinktextures/urban_brickwall_06c.vtf")))
    # convert_og_to_png()
    # modify_pngs()
    convert_modify_to_vtf()


if __name__ == "__main__":
    main()
