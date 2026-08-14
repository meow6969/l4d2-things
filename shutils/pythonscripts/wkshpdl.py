#!/bin/python3

import argparse
from pathlib import Path

import sys
sys.path.append("/mnt/f/stuff/git/l4d2-things/shutils/pythonscripts")
from utils.steamutils import download_workshop_mod, download_workshop_collection
from utils.l4d2utils import L4D2_PATH

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("workshop_mod", help="steam workshop mod id or url")
    parser.add_argument("-o", "--out-dir", default=".", help="output directory")
    parser.add_argument("-c", "--collection", action="store_true", help="is the thing ur downloading a collection")
    parser.add_argument(
        "-n", "--name-only", help="only prints the name of the addon, nothing else", action="store_true")
    parser.add_argument("-f", "--fast", action="store_true", help="if should try to see if the addon is already downloaded on the computer first")
    args = parser.parse_args()

    if not args.name_only:
        print(f"downloading workshop mod \"{args.workshop_mod}\"")
    out_dir = Path(args.out_dir).expanduser().resolve()
    out_dir.mkdir(parents=True, exist_ok=True)
    source_dir = None
    if args.fast:
        source_dir = L4D2_PATH.joinpath("left4dead2").joinpath("addons").joinpath("workshop")

    if args.collection:
        download_workshop_collection(args.workshop_mod, out_dir, source_folder=source_dir)
    else:
        download_workshop_mod(
            args.workshop_mod, only_print_name=args.name_only, interactive=True, out_dir=out_dir, source_folder=source_dir)
