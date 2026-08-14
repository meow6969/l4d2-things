from pathlib import Path
import urllib.parse
import requests
import json
import inspect
import os
import re
import shutil

import vdf

from utils.osutils import *


def __get_steam_install_path() -> Path | None:
    match OSType:
        case OSType.windows:
            potential_hkey_paths = [
                "HKEY_LOCAL_MACHINE/SOFTWARE/WOW6432Node/Valve/Steam/",
                "HKEY_LOCAL_MACHINE/SOFTWARE/Valve/Steam/",
                "HKEY_CURRENT_USER/SOFTWARE/WOW6432Node/Valve/Steam/",
                "HKEY_CURRENT_USER/SOFTWARE/Valve/Steam/"
            ]
            potential_value_names = [
                "InstallPath",
                "SteamPath"
            ]

            for hkey_path in potential_hkey_paths:
                for value_name in potential_value_names:
                    # noinspection PyBroadException
                    try:
                        steampath = Path(get_registry_key(hkey_path + value_name))
                        if steampath.exists() and steampath.is_dir():
                            return p
                    except Exception:
                        pass
            return None
        case OSType.linux:
            if OSType == OSType.linux:
                potential_steam_paths = [
                    "~/.steam/steam",
                    "~/.local/share/Steam",
                    "~/.local/share/steam"
                ]

                for steam_path in potential_steam_paths:
                    the_path = Path(steam_path).expanduser()
                    if the_path.exists():
                        return the_path
                return None
    return None


STEAM_PATH: Path | None = __get_steam_install_path()


def get_vdf_data(vdf_path: Path) -> dict | None:
    library_vdf = Path(vdf_path)
    if not library_vdf.exists():
        return None
    with open(library_vdf, "r") as f:
        return vdf.load(f)


def get_game_install_path(game_id: int) -> Path | None:
    lib_vdf = Path(STEAM_PATH, "steamapps", "libraryfolders.vdf")
    library_vdf = get_vdf_data(lib_vdf)["libraryfolders"]
    if not library_vdf:
        return None
    lib_path = None
    for lib_dict in library_vdf.values():
        if str(game_id) in lib_dict["apps"]:
            lib_path = Path(lib_dict["path"])
            break
    if not lib_path:
        return None
    library_vdf = get_vdf_data(Path(lib_path, "steamapps", f"appmanifest_{game_id}.acf"))["AppState"]
    if not library_vdf:
        return None
    r = Path(lib_path, "steamapps", "common", library_vdf["installdir"])
    if not r.exists():
        return None
    return r


def get_workshop_id(i: int | str) -> int:
    if isinstance(i, str):
        if i.isdigit():
            workshop_id = int(i)
        else:
            workshop_id = int(urllib.parse.parse_qs(urllib.parse.urlparse(i).query)["id"][0])
    else:
        workshop_id = i
    return workshop_id


def download_workshop_collection(workshop_id: int | str, out_dir: Path = Path.cwd(), source_folder=None):
    workshop_id = get_workshop_id(workshop_id)
    out_dir = out_dir.joinpath(str(workshop_id))
    out_dir.mkdir(parents=True, exist_ok=True)
    find_addons = re.compile(r"SubscribeCollectionItem\( '(\d*)', ")
    site = requests.get(f"https://steamcommunity.com/sharedfiles/filedetails/?id={workshop_id}")
    if not site.ok:
        raise Exception("error downloading collection webpage")
    addons = find_addons.findall(site.text)
    for i in addons:
        download_workshop_mod(i, out_dir, source_folder=source_folder)
    print("downloaded mod collection!")


def download_workshop_mod(workshop_id: int | str, out_dir: Path = Path.cwd(), only_print_name=False, interactive=False,
                          out_replace=False, source_folder=None) -> Path | None:
    workshop_id = get_workshop_id(workshop_id)
    assert isinstance(workshop_id, int)
    assert isinstance(out_dir, Path)
    if source_folder is not None and source_folder.joinpath(f"{workshop_id}.vpk").exists():
        out_file = out_dir.joinpath(f"{workshop_id}.vpk")
        shutil.copyfile(source_folder.joinpath(f"{workshop_id}.vpk"), out_file)
        print(f"successfully copied local workshop mod {CCs.OKCYAN}id={workshop_id}{CCs.ENDC} to "
            f"{CCs.OKGREEN}\"{out_file}\"{CCs.ENDC}")
        return out_file



    #####################################################
    #       sample returned json                        #
    #       file id: 3434972877                         #
    #####################################################
    # {
    #   "result": 1,
    #   "publishedfileid": "3434972877",
    #   "creator": "76561198880529873",
    #   "creator_appid": 563,
    #   "consumer_appid": 550,
    #   "consumer_shortcutid": 0,
    #   "filename": "myl4d2addons/pekoraloadingmusic.vpk",
    #   "file_size": "36022455",
    #   "preview_file_size": "18973",
    #   "file_url": "https://cdn.steamusercontent.com/ugc/20933049964165418/8D368037AA0644B4301DC14E394C13C655E46FD0/",
    #   "preview_url":
    #       "https://images.steamusercontent.com/ugc/20933049958365817/7AB6BA3375A68044F964645AE5106855CDA67AF7/",
    #   "url": "",
    #   "hcontent_file": "20933049964165418",
    #   "hcontent_preview": "20933049958365817",
    #   "title": "usada pekora safe room loading music",
    #   "title_disk_safe": "usada_pekora_safe_room_loading_music",
    #   "file_description":
    #       ("changes the music that plays after the safe room door is closed  " +
    #       "to usada pekora bgm\nmusic source: https://www.youtube.com/watch?v=DQweLHdlVWo"),
    #   "time_created": 1740632920,
    #   "time_updated": 1740856166,
    #   "visibility": 0,
    #   "flags": 1536,
    #   "workshop_file": false,
    #   "workshop_accepted": false,
    #   "show_subscribe_all": false,
    #   "num_comments_developer": 0,
    #   "num_comments_public": 0,
    #   "banned": false,
    #   "ban_reason": "",
    #   "banner": "76561197960265728",
    #   "can_be_deleted": true,
    #   "incompatible": false,
    #   "app_name": "Left 4 Dead 2",
    #   "file_type": 0,
    #   "can_subscribe": true,
    #   "subscriptions": 40,
    #   "favorited": 13,
    #   "followers": 0,
    #   "lifetime_subscriptions": 57,
    #   "lifetime_favorited": 13,
    #   "lifetime_followers": 0,
    #   "lifetime_playtime": "0",
    #   "lifetime_playtime_sessions": "0",
    #   "views": 189,
    #   "spoiler_tag": false,
    #   "num_children": 0,
    #   "children": null,
    #   "num_reports": 0,
    #   "previews": null,
    #   "tags": [
    #     {
    #       "tag": "Miscellaneous",
    #       "adminonly": false
    #     },
    #     {
    #       "tag": "UI",
    #       "adminonly": false
    #     },
    #     {
    #       "tag": "Sounds",
    #       "adminonly": false
    #     }
    #   ],
    #   "vote_data": {
    #     "result": 0,
    #     "votes_up": 0,
    #     "votes_down": 0
    #   },
    #   "language": 0
    # }

    data: bytes = f"[{workshop_id}]".encode()
    r = requests.post("https://steamworkshopdownloader.io/api/details/file", data=data)
    if r.status_code != 200:
        raise Exception(f"workshop downloader request failed, got status code: {r.status_code}")
    # print(r.status_code)
    # print(r.text)
    try:
        r_data = json.loads(r.text)
        if isinstance(r_data, list):
            if len(r_data) != 1:
                raise KeyError
            r_data = r_data[0]
        # print()
        # print(json.dumps(r_data, indent=2))
        # print()
        file_url = r_data["file_url"]
        filename = r_data["title"].replace("/", "").replace("\\", "").replace("\n", "") + ".vpk"
        if only_print_name:
            print(f"workshop item id: {CCs.OKCYAN}{workshop_id}{CCs.ENDC}\n"
                  f"title:            {CCs.OKGREEN}{r_data['title']}{CCs.ENDC}")
            return None
    except json.decoder.JSONDecodeError or KeyError:
        raise Exception(f"workshop downloader request returned invalid text: {r.text}")

    if file_url.strip() == "":
        print("unable to download this file")
        return None

    try:
        with requests.get(file_url, stream=True) as r:
            r.raise_for_status()
            #params = r.headers["Content-Disposition"]
            #filename: str | None = None
            #for param in params.split(";"):
            #    param = param.strip()
            #    if param.startswith("filename="):
            #        if filename is not None:
            #            raise Exception(f"workshop mod download file for url: {file_url}\n"
            #                            f"returned invalid headers: {r.headers}")
            #        filename = param.split("=", maxsplit=1)[-1].replace("\"", "").replace("'", "")
            #    elif param.startswith("filename*=UTF-8"):
            #        filename = param.split("UTF-8", maxsplit=1)[-1].replace("\"", "").replace("'", "")
            #if filename is None:
            #    raise Exception(f"workshop mod download file for url: {file_url}\n"
            #                    f"returned invalid headers: {r.headers}")
            filename = filename.encode("ascii", "ignore").decode("ascii")
            out_file = Path(out_dir, f"{workshop_id}_{filename}")

            if out_file.exists():
                if out_file.is_dir():
                    f_type = "folder"
                else:
                    f_type = "file"
                if interactive and not out_replace:
                    confirm = input(f"{f_type} {CCs.OKGREEN}\"{out_file}\"{CCs.ENDC}"
                                    f" already exists. overwrite? (y/N) ")
                    if confirm.lower().strip() != "y":
                        print("exiting...")
                        return None
                elif not interactive and not out_replace:
                    print("file already exists")
                    return None
                print(f"overwriting {f_type} {CCs.OKGREEN}\"{out_file}\"{CCs.ENDC}...")
                if out_file.is_dir():
                    shutil.rmtree(out_file)
                else:
                    out_file.unlink()
            with open(out_file, "wb") as f:
                for chunk in r.iter_content(chunk_size=8192):
                    f.write(chunk)
    except requests.HTTPError as e:
        raise Exception(f"workshop mod download file for url: {file_url}\n"
                        f"returned invalid status code: {e.response.status_code}")
    except KeyError:
        raise Exception(f"workshop mod download file for url: {file_url}\n"
                        f"returned invalid headers")
    print(f"successfully saved workshop mod {CCs.OKCYAN}id={workshop_id}{CCs.ENDC} at "
          f"{CCs.OKGREEN}\"{out_file}\"{CCs.ENDC}")
    return out_file


if __name__ == "__main__":
    print(OSType.name)
    print(STEAM_PATH)
    print(get_game_install_path(550))
    download_workshop_mod(
        "https://steamcommunity.com/sharedfiles/filedetails/?id=2256379828&searchtext=bhop+", interactive=True)
