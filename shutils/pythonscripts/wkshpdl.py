#!/bin/python3

import argparse
from pathlib import Path

from utils.steamutils import download_workshop_mod

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("workshop_mod", help="steam workshop mod id or url")
    parser.add_argument("-o", "--out-dir", default=".", help="output directory")
    parser.add_argument(
        "-n", "--name-only", help="only prints the name of the addon, nothing else", action="store_true")
    args = parser.parse_args()

    if not args.name_only:
        print(f"downloading workshop mod \"{args.workshop_mod}\"")
    out_dir = Path(args.out_dir).expanduser().resolve()
    out_dir.mkdir(parents=True, exist_ok=True)
    download_workshop_mod(
        args.workshop_mod, only_print_name=args.name_only, interactive=True, out_dir=out_dir)
