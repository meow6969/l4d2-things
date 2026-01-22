from pathlib import Path
import subprocess
import sys

from valvepcf import PcfAttribute, Pcf, PcfSystemNode, PcfOperatorNode, PcfNode
from valvepcf.unloader import unload_pcf, save_pcf

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


def edit_boomer(og_boomer: Path, modded_boomer: Path, output_boomer: Path):
    og_pcf = Pcf(og_boomer)
    mod_pcf = Pcf(modded_boomer)
    
    screeneffect1 = None
    screeneffect2 = None
    for sys_i, particle_system in enumerate(og_pcf.systems):
        if particle_system._name == "boomer_vomit_screeneffect":
            screeneffect1 = particle_system
            continue
        if particle_system._name == "boomer_vomit_screeneffect_b":
            screeneffect2 = particle_system
            continue
    for sys_i, particle_system in enumerate(mod_pcf.systems):
        if particle_system._name == "boomer_vomit_screeneffect":
            mod_pcf.systems[sys_i] = screeneffect1
            continue
        if particle_system._name == "boomer_vomit_screeneffect_b":
            mod_pcf.systems[sys_i] = screeneffect2
    save_pcf(mod_pcf, output_boomer)
    

    # print(get_particles_manifest_for_folder(Path("./extractparticles")))


if __name__ == "__main__":
    edit_boomer(Path(sys.argv[1]), Path(sys.argv[2]), Path(sys.argv[3]))
