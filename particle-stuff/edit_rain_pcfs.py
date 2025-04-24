from pathlib import Path
import subprocess
import sys

from valvepcf import PcfAttribute

from utils.miscutils import *

from utils.pcfutils import (
    OperatorPatcher,
    get_particles_manifest_for_folder,
    PcfEditor,
    OperatorPatcherType,
    OperatorPatcherOperation,
    PcfSystemSelector,
    PcfFileSelector
)


set_debug_log_level(DebugLogLevel.HUMAN)


def edit_rain(edited_folder: Path, extract_folder: Path):
    debug_log("editing water pcfs...", DebugLogLevel.HUMAN)

    particle_system_name_search_keywords = [
        "rain"
    ]

    particle_system_name_exclude_keywords = [
        "fire",
        "smoke",
        "burn",
        "spark",
        "flame",
        "explosion",
        "explode",
        "ember",
        "hydrant",
        "firework",
        "smoker",
        "blood",
        "fire_truck",
        "footstep_grass",
        "water_trail",
        "water_splash",
        "steam",
        "waterfall",
        "bugged",
        "boomer_explode",
        "water_object_wake",
        "water_wake",
        "water_splash",
        "ash",
        "vomit_jar",
        "fireflies",
        "spitter_areaofdenial",
        "storm_cloud",
        "storm_lightning",
        "dirt"
    ]

    renderer_search_keywords = [
        "render_animated_sprites",
        "render_sprite_trail"
    ]

    operator_remove_keywords = [
        "color fade"
    ]

    exclude_files = [
        "steam_fx.pcf",
        "footstep_fx.pcf",
        "blood_fx.pcf",
        "boomer_fx.pcf",
        "smoker_fx.pcf",
        "spitter_fx.pcf",
        "environment_fx_river.pcf",
        "environmental_fx.pcf",
        "vehicle_fx.pcf",
    ]

    # color1_should_be = [242, 62, 218, 255]
    # color2_should_be = [229, 100, 212, 255]
    color1_should_be = [227, 28, 121, 255]
    color2_should_be = [227, 28, 121, 255]

    if edited_folder.exists():
        subprocess.run(["rm", "-r", edited_folder])

    color_fade_remover = OperatorPatcher.removers_from_ename_list(
        operator_remove_keywords,
        OperatorPatcherType.OPERATOR
    )

    color_random_replacer = OperatorPatcher(
        OperatorPatcherOperation.REPLACE_AND_ADD,
        OperatorPatcherType.INITIALIZER,
        "Color Random",
        "DmeParticleOperator",
        "DmElement",
        [
            PcfAttribute("functionName", 5, "Color Random"),
            PcfAttribute("color1", 8, color1_should_be),
            PcfAttribute("color2", 8, color2_should_be)
        ]
    )

    patches = [
        color_random_replacer,
        color_fade_remover
    ]

    system_selector = PcfSystemSelector(
        particle_system_name_search_keywords,
        particle_system_name_exclude_keywords,
        renderer_search_keywords
    )

    file_selector = PcfFileSelector(filename_exclude_keywords=exclude_files)
    pcf_editor = PcfEditor(patches, system_selector, file_selector)

    pcf_editor.patch_particles(
        edited_folder,
        extract_folder
    )

    debug_log("finished editing rain pcfs!", DebugLogLevel.HUMAN)

    # print(get_particles_manifest_for_folder(Path("./extractparticles")))


if __name__ == "__main__":
    edit_rain(Path(sys.argv[1]), Path(sys.argv[2]))
