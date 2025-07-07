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


def edit_fire(edited_folder: Path, extract_folder: Path):
    debug_log("editing purple fire pcfs...", DebugLogLevel.HUMAN)

    particle_system_name_search_keywords = [
        "fire",
        "smoke",
        "burn",
        "spark",
        "flame",
        "explosion",
        "explode",
        "ember"
    ]

    particle_system_name_exclude_keywords = [
        "blue",
        "hydrant",
        "firework",
        "smoker",
        "blood",
        "fire_truck",
        "footstep_grass",
        "water_trail",
        "water_splash",
        "steam",
        "rain",
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
        "dirt",
        "water",
        "fog"
    ]

    renderer_search_keywords = [
        "render_animated_sprites",
        "render_sprite_trail"
    ]

    operator_remove_keywords = [
        "color fade"
    ]

    exclude_files = [
        "rain_fx.pcf",
        "rain_storm_fx.pcf",
        "water_fx.pcf",
        "steam_fx.pcf",
        "footstep_fx.pcf",
        "blood_fx.pcf",
        "boomer_fx.pcf",
        "smoker_fx.pcf",
        "spitter_fx.pcf",
        "environmental_fx_river.pcf",
        "hunter_fx.pcf",
        "infected_fx.pcf"
    ]

    color1_should_be = [186, 89, 255, 255]
    color2_should_be = [186, 132, 209, 255]

    # edited_folder = Path("./editedparticles")
    # edited_folder = Path("/mnt/f/stuff/git/l4d2-things/particle-stuff/cyanpinkbluefire/particles")
    if edited_folder.exists():
        subprocess.run(["rm", "-r", edited_folder])
    # color_fade_remover = OperatorPatcher.removers_from_ename_list(
    #     operator_remove_keywords,
    #     OperatorPatcherType.OPERATOR
    # )
    color_fade_replacer = OperatorPatcher.replacers_from_ename_list(
        operator_remove_keywords,
        OperatorPatcherType.OPERATOR,
        [
            PcfAttribute("functionName", 5, "Color Fade"),
            PcfAttribute("color_fade", 8, color1_should_be)
        ]
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
        # color_fade_remover,
        color_fade_replacer,
        color_random_replacer
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
    debug_log("finished editing purple fire pcfs!", DebugLogLevel.HUMAN)

    # print(get_particles_manifest_for_folder(Path("./extractparticles")))


if __name__ == "__main__":
    edit_fire(Path(sys.argv[1]), Path(sys.argv[2]))
