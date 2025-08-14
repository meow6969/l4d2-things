#!/bin/zsh

source "$(dirname "${0}")/../shutils/pathvars.sh"
init_pathvars

#python3 "${shdirpath}/grayscale_textures.py"
#exit 0

#python3 "${shdirpath}/edit_fire_pcfs.py" "${shdirpath}/cyanpinkbluefire/particles" "${shdirpath}/tempparticles"

python3 "${shdirpath}/edit_fire_pcfs_cyan_plus_tracers.py" "${shdirpath}/cyanpinkbluefireplustracers/particles" "${shdirpath}/tempparticles" "${shdirpath}/452181672_machinima_bullet_tracers/particles"
#python3 "${shdirpath}/edit_fire_pcfs_purple.py" "${shdirpath}/purplefire/particles" "${shdirpath}/tempparticles"
#python3 "${shdirpath}/edit_rain_pcfs.py" "${shdirpath}/pinkrain/particles" "${shdirpath}/tempparticles"

#vpkeditcli "${shdirpath}/cyanpinkbluefire" -v 1 -s -o "${shdirpath}/cyanpinkbluefire.vpk"
vpkeditcli "${shdirpath}/cyanpinkbluefireplustracers" -v 1 -s -o "${shdirpath}/cyanpinkbluefireplustracers.vpk"

cp -fv "${shdirpath}/cyanpinkbluefireplustracers.vpk" "${l4d2path}/left4dead2/addons/"

#vpkeditcli "${shdirpath}/purplefire" -v 1 -s -o "${shdirpath}/purplefire.vpk"
#vpkeditcli "${shdirpath}/pinkrain" -v 1 -s -o "${shdirpath}/pinkrain.vpk"

rm -r "${shdirpath}/tempparticles"
