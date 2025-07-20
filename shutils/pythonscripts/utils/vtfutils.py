from pathlib import Path
import subprocess
import shutil
import time
from collections.abc import Callable
import threading
import traceback
from enum import Enum

import vdf
import sourcepp

from utils.miscutils import debug_log, DebugLogLevel


class Flags(Enum):
    FLAG_POINT_SAMPLE = 1 << 0
    FLAG_TRILINEAR = 1 << 1
    FLAG_CLAMP_S = 1 << 2
    FLAG_CLAMP_T = 1 << 3
    FLAG_ANISOTROPIC = 1 << 4
    FLAG_HINT_DXT5 = 1 << 5
    FLAG_NORMAL = 1 << 7
    FLAG_NO_MIP = 1 << 8
    FLAG_NO_LOD = 1 << 9
    FLAG_MIN_MIP = 1 << 10
    FLAG_PROCEDURAL = 1 << 11
    FLAG_ONE_BIT_ALPHA = 1 << 12
    FLAG_MULTI_BIT_ALPHA = 1 << 13
    FLAG_ENVMAP = 1 << 14
    FLAG_RENDERTARGET = 1 << 15
    FLAG_DEPTH_RENDERTARGET = 1 << 16
    FLAG_NO_DEBUG_OVERRIDE = 1 << 17
    FLAG_SINGLE_COPY = 1 << 18
    FLAG_V2_NO_DEPTH_BUFFER = 1 << 23
    FLAG_V2_CLAMP_U = 1 << 25
    FLAG_V3_LOAD_ALL_MIPS = 1 << 10
    FLAG_V3_VERTEX_TEXTURE = 1 << 26
    FLAG_V3_SSBUMP = 1 << 27
    FLAG_V3_BORDER = 1 << 29
    FLAG_V4_SRGB = 1 << 6
    FLAG_V4_TF2_STAGING_MEMORY = 1 << 19
    FLAG_V4_TF2_IMMEDIATE_CLEANUP = 1 << 20
    FLAG_V4_TF2_IGNORE_PICMIP = 1 << 21
    FLAG_V4_TF2_STREAMABLE_COARSE = 1 << 30
    FLAG_V4_TF2_STREAMABLE_FINE = 1 << 31

    def __str__(self):
        return self.name[5:]

    def __repr__(self):
        return self.__str__()

    @staticmethod
    def from_int(n: int) -> list["Flags"]:
        r: List[Flags] = []
        for e in Flags:
            if n & e.value:
                if str(e) == "MIN_MIP":
                    continue
                r.append(e)
        return r


class MeowSequence(sourcepp.vtfpp.SHT.Sequence):
    def __init__(self):
        pass


class MeowFrame(sourcepp.vtfpp.SHT.Sequence.Frame):
    def __init__(self):
        pass


class MeowBounds(sourcepp.vtfpp.SHT.Sequence.Frame.Bounds):
    def __init__(self):
        pass


def vtf_info_to_sht(vtf_info: dict) -> sourcepp.vtfpp.SHT | None:
    if "resources" not in vtf_info.keys():
        return None
    if "particle_sheet" not in vtf_info["resources"].keys():
        return None
    p_sheet = vtf_info["resources"]["particle_sheet"]
    if p_sheet["malformed"] == "1":
        return None

    ver = int(p_sheet["version"])
    sequences = []
    for sequence_id in p_sheet["sequences"].keys():
        sequence_data = p_sheet["sequences"][sequence_id]
        duration_total: float = float(sequence_data["duration_total"])
        loop: bool = sequence_data["loop"] == "1"
        frames = []
        for frame_id in sequence_data["frames"].keys():
            frame_data = sequence_data["frames"][frame_id]
            duration: float = float(frame_data["duration"])
            bounds = []
            for bound_id in frame_data["bounds"]:
                bound_data = frame_data["bounds"][bound_id]
                x1: float = float(bound_data["x1"])
                y1: float = float(bound_data["y1"])
                x2: float = float(bound_data["x2"])
                y2: float = float(bound_data["y2"])
                # b = MeowBounds()
                def emptyinit(self):
                    pass

                sourcepp.vtfpp.SHT.Sequence.Frame.Bounds.__init__ = emptyinit
                # b = sourcepp.vtfpp.SHT.Sequence.Frame.Bounds.__new__(sourcepp.vtfpp.SHT.Sequence.Frame.Bounds)
                b = sourcepp.vtfpp.SHT.Sequence.Frame.Bounds()
                b.x1 = float(x1)
                b.y1 = y1
                b.x2 = x2
                b.y2 = y2
                bounds.append(b)
            f = sourcepp.vtfpp.SHT.Sequence.Frame()
            f.duration = duration
            f.bounds = bounds
            frames.append(f)
        s = MeowSequence()
        s.id = int(sequence_id)
        s.loop = loop
        s.frames = frames
        s.duration_total = duration_total
        sequences.append(s)
    sht = sourcepp.vtfpp.SHT()
    sht.version = ver
    sht.sequences = sequences
    return sht


class VtfData:
    platform_type: str = "PC"
    version: str = "7.4"
    image_format: str
    size: tuple[int, int]
    depth: int = 1
    mips: int = 1
    frames: int = 1
    faces: int = 1
    flags: list[Flags]
    reflectivity: tuple[float, float, float] = (1.0, 1.0, 1.0)
    start_frame: int = 0
    bumpmap_scale: float = 1.0
    compression_method: str = "NONE"
    compression_level: int = 0
    thumbnail_present: bool
    thumbnail_format: str
    thumbnail_size: tuple[int, int]
    particle_sheet: sourcepp.vtfpp.SHT | None = None

    def __init__(self, platform_type: str, version: str, image_format: str, size: tuple[int, int], depth: int,
                 mips: int, frames: int, faces: int, flags: list[Flags], reflectivity: tuple[float, float, float],
                 start_frame: int, bumpmap_scale: float, compression_method: str, compression_level: int,
                 thumbnail_present: bool, thumbnail_format: str, thumbnail_size: tuple[int, int],
                 particle_sheet: sourcepp.vtfpp.SHT | None):
        self.platform_type = platform_type
        self.version = version
        self.image_format = image_format
        self.size = size
        self.depth = depth
        self.mips = mips
        self.frames = frames
        self.faces = faces
        self.flags = flags
        self.reflectivity = reflectivity
        self.start_frame = start_frame
        self.bumpmap_scale = bumpmap_scale
        self.compression_method = compression_method
        self.compression_level = compression_level
        self.thumbnail_present = thumbnail_present
        self.thumbnail_format = thumbnail_format
        self.thumbnail_size = thumbnail_size
        self.particle_sheet = particle_sheet

    def __str__(self):
        d = self.__dict__
        f: list[str] = []
        for e in d["flags"]:
            f.append(str(e))
        d["flags"] = f
        d["particle_sheet"] = self.particle_sheet is None

        return json.dumps(d, indent=2)

    def __repr__(self):
        return self.__str__()

    def to_vtf(self, in_file: Path, out_file: Path | None = None) -> None:
        cmd: list[str] = [
            "maretf",
            "--quiet",
            "--version", f"{self.version}",
            "--format", f"{self.image_format}",
            "--platform", f"{self.platform_type}",
            "--start-frame", f"{self.start_frame}",
            "--bumpscale", f"{self.bumpmap_scale}",
            "--pointsample"
        ]
        if self.compression_method != "NONE":
            cmd += [
                "--compression-method", f"{self.compression_method}",
                "--compression-level", f"{self.compression_level}"
            ]
        if not self.thumbnail_present:
            cmd.append("--no-thumbnail")
        if self.frames <= 1:
            cmd.append("--no-animation")
        if self.mips <= 1:
            cmd.append("--no-mips")
        for flag in self.flags:
            cmd += ["--flag", f"{flag}"]
        if out_file is not None:
            cmd += ["--output", out_file]
        cmd += ["create", f"{in_file}"]
        r = subprocess.run(cmd, capture_output=True, text=True)
        if r.returncode != 0:
            debug_log(r.stdout, DebugLogLevel.ERROR)
            debug_log(r.stderr, DebugLogLevel.ERROR)
            raise RuntimeError(f"failed to create {in_file}")
        if self.particle_sheet is None:
            return
        sht_path: Path = Path(f"/tmp/{in_file.name[:-4]}.sht")
        self.particle_sheet.bake_to_file(str(sht_path))
        r = subprocess.run([
            "maretf",
            "--yes",
            "--set-particle-sheet-resource", f"{sht_path}",
            "edit",
            f"{out_file}"
        ], capture_output=True, text=True)
        if r.returncode != 0:
            debug_log(r.stdout, DebugLogLevel.ERROR)
            debug_log(r.stderr, DebugLogLevel.ERROR)
            debug_log(f"particle sheet path: {sht_path}", DebugLogLevel.ERROR)
            raise RuntimeError(f"failed to add particle sheet to {in_file}")

    # @staticmethod
    # def to_png(f: Path, out_file: Path | None = None) -> None:
    #     f_data = VtfData.from_vtf(f)
    def to_png(self, in_file: Path, out_file: Path | None = None) -> None:
        if self.frames > 1:
            raise Exception("only one frame is supported")
        cmd: list[str] = ["maretf", "--quiet", "--yes", "--extract-frame", "0"]
        # cmd: list[str] = ["maretf", "--quiet", "--no", "--extract-frame", "0"]
        if out_file is not None:
            cmd += ["--output", out_file]
        cmd += ["extract", f"{in_file}"]
        r = subprocess.run(cmd, capture_output=True)
        if r.returncode != 0:
            debug_log(cmd, DebugLogLevel.ERROR)
            debug_log(r.stdout, DebugLogLevel.ERROR)
            debug_log(r.stderr, DebugLogLevel.ERROR)
            raise RuntimeError(f"failed to extract {f}")

    @staticmethod
    def from_vtf(f: Path):
        if not f.exists():
            raise FileNotFoundError(f)
        if not f.suffix == ".vtf":
            raise Exception("file is not vtf")
        debug_log(str(["maretf", "--info-output-mode", "kv1", "info", str(f)]), DebugLogLevel.DEBUG)
        r = subprocess.run(["maretf", "--info-output-mode", "kv1", "info", str(f)], capture_output=True)
        if r.returncode != 0:
            raise Exception(r.stderr)
        data = vdf.loads(r.stdout.decode("utf-8"))

        sht = None
        if "particle_sheet" in data["resources"]:
            f = sourcepp.vtfpp.VTF(str(f), False)
            sht = f.get_resource(sourcepp.vtfpp.Resource.Type.PARTICLE_SHEET_DATA).get_data_as_particle_sheet()

        return VtfData(
            platform_type=data["format"]["platform"],
            version=f"{data['format']['version_major']}.{data['format']['version_minor']}",
            image_format=data["image"]["format"],
            size=(
                int(data["image"]["dimensions"]["width"]),
                int(data["image"]["dimensions"]["height"])
            ),
            depth=int(data["image"]["dimensions"]["depth"]),
            mips=int(data["image"]["dimensions"]["mips"]),
            frames=int(data["image"]["dimensions"]["frames"]),
            faces=int(data["image"]["dimensions"]["faces"]),
            flags=Flags.from_int(int(data["image"]["flags"])),
            reflectivity=(
                float(data["image"]["reflectivity"]["r"]),
                float(data["image"]["reflectivity"]["g"]),
                float(data["image"]["reflectivity"]["b"])
            ),
            start_frame=int(data["image"]["start_frame"]),
            bumpmap_scale=float(data["image"]["bumpmap_scale"]),
            compression_method=data["image"]["compression"]["method"],
            compression_level=int(data["image"]["compression"]["level"]),
            thumbnail_present=data["resources"]["thumbnail"]["present"] == "1",
            thumbnail_format=data["resources"]["thumbnail"]["format"],
            thumbnail_size=(
                int(data["resources"]["thumbnail"]["width"]),
                int(data["resources"]["thumbnail"]["height"])
            ),
            particle_sheet=sht
        )


class BatchVtfEditor:
    input_path: Path
    output_path: Path

    def __init__(self):
        pass


class BatchVtfEditorStep:
    og_textures_path: Path
    input_path: Path
    output_path: Path
    #starting_print: str = "batch editing \"{{INPUT_PATH}}\" to \"{{OUTPUT_PATH}}\"..."
    #path_print: str = "editing {{RELAPATH}}/*..."
    #start_thread_print: str = "starting thread for {{RELAPATH}}/{{FILENAME}}"
    num_threads: int = 6
    threads: list[threading.Thread]

    # og_vtf_data is only None if skip_non_vtf=False and the og_file is not a vtf file
    #                            og_vtf_data,     og_file, in_file, out_path, rela_path -> out_file
    out_file_processor: Callable[[VtfData | None, Path,    Path,    Path,     Path],       Path]
    #                            og_vtf_data,     og_file, in_file, out_file, rela_path -> (skip/process)
    skip_processor:     Callable[[VtfData | None, Path,    Path,    Path,     Path],       bool]
    #                            og_vtf_data,     og_file, in_file, out_file, rela_path -> (succeed/fail)
    step_processor:     Callable[[VtfData | None, Path,    Path,    Path,     Path],       bool]

    thread_check_interval: float = 0.01
    skip_non_vtf: bool = True
    # if this is True it changes the file suffixes for the og_file to .vtf
    # if True this overrides skip_non_vtf
    assume_og_is_vtf: bool = False
    erase_output_folder: bool = False

    def __init__(
            self, 
            og_textures_path: Path, 
            input_path: Path, 
            output_path: Path, 
            out_file_processor: Callable[[VtfData | None, Path, Path, Path, Path], Path],
            skip_processor:     Callable[[VtfData | None, Path, Path, Path, Path], bool],
            step_processor:     Callable[[VtfData | None, Path, Path, Path, Path], bool],
            num_threads: int = 6,
            thread_check_interval: float = 0.01,
            skip_non_vtf: bool = True,
            assume_og_is_vtf: bool = False,
            erase_output_folder: bool = False
            ):
        self.og_textures_path = og_textures_path
        self.input_path = input_path
        self.output_path = output_path
        self.out_file_processor = out_file_processor
        self.skip_processor = skip_processor
        self.step_processor = step_processor
        self.num_threads = num_threads
        self.thread_check_interval = thread_check_interval
        self.skip_non_vtf = skip_non_vtf
        self.assume_og_is_vtf = assume_og_is_vtf
        self.erase_output_folder = erase_output_folder
        self.threads = []

    def edit_vtfs(self):
        if self.erase_output_folder:
            if self.output_path.exists():
                debug_log(f"erasing output folder {self.output_path}...", DebugLogLevel.HUMAN)
                shutil.rmtree(self.output_path)
                debug_log(f"done erasing!", DebugLogLevel.HUMAN)
        self.output_path.mkdir(parents=True, exist_ok=True)

        for root, dirs, files in self.input_path.walk():
            root_rela_path: Path = root.relative_to(self.input_path)
            debug_log(f"processing {root_rela_path}/*...", DebugLogLevel.HUMAN)
            for file in files:
                rela_path = root_rela_path.joinpath(file)
                if self.assume_og_is_vtf:
                    og_file: Path = self.og_textures_path.joinpath(rela_path.parent).joinpath(f"{rela_path.name[:-4]}.vtf")
                else: 
                    og_file: Path = self.og_textures_path.joinpath(rela_path)
                og_vtf_data: VtfData | None = None
                if og_file.suffix == ".vtf":
                    if not og_file.exists():
                        debug_log(f"skipped: {rela_path}, og_file not found", DebugLogLevel.HUMAN)
                        continue
                    og_vtf_data = VtfData.from_vtf(og_file)
                    # try:
                    #     og_vtf_data = VtfData.from_vtf(og_file)
                    # except Exception as e:
                    #     debug_log(f"broken file: {og_file}", DebugLogLevel.ERROR)
                    #     continue
                elif not og_file.exists():
                    debug_log(f"skipped: {rela_path}, og_file not found", DebugLogLevel.HUMAN)
                elif self.skip_non_vtf:
                    debug_log(f"skipped: {rela_path}, not a vtf file", DebugLogLevel.VERBOSE)
                    continue
                in_file = self.input_path.joinpath(rela_path)
                out_file = self.out_file_processor(og_vtf_data, og_file, in_file, self.output_path, rela_path)
                out_file.parent.mkdir(parents=True, exist_ok=True)
                try:
                    if self.skip_processor(og_vtf_data, og_file, in_file, out_file, rela_path):
                        # debug_log(f"skipped: {rela_path}", DebugLogLevel.DEBUG)
                        continue
                    self.create_job(self.step_processor, (og_vtf_data, og_file, in_file, out_file, rela_path), rela_path)
                    # if not self.step_processor(og_vtf_data, og_file, in_file, out_file):
                    #     debug_log(f"unsuccessful process: {rela_path}/{file}", DebugLogLevel.DEBUG)
                    #     continue
                except Exception as e:
                    debug_log(f"error with {rela_path}", DebugLogLevel.ERROR)
                    debug_log("traceback:", DebugLogLevel.ERROR)
                    traceback.print_exc()
                    input("waiting for user input...")
    
    # def create_job(self, og_vtf_data: VtfData, og_file: Path, in_file: Path, out_file: Path) -> None:
    def create_job(self, job_target: Callable, job_args: tuple, rela_path: Path) -> None:
        meowing = True
        while meowing:
            for i in range(self.num_threads):
                debug_log(f"len(self.threads)={len(self.threads)}", DebugLogLevel.VERBOSE)
                time.sleep(self.thread_check_interval)
                if i >= len(self.threads):
                    debug_log(f"starting thread for {rela_path}", DebugLogLevel.DEBUG)
                    t = threading.Thread(target=job_target, args=job_args)
                    t.start()
                    self.threads.append(t)
                    meowing = False
                    break
                else:
                    if self.threads[i].is_alive():
                        pass
                    else:
                        debug_log(f"starting thread for {rela_path}", DebugLogLevel.DEBUG)
                        t = threading.Thread(target=job_target, args=job_args)
                        t.start()
                        self.threads[i] = t
                        meowing = False
                        break






