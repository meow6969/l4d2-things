#!/bin/zsh

source "$(dirname "${0}")/../shutils/pathvars.sh"
init_pathvars

python3 "${shdirpath}/edit_fire_pcfs.py" "${shdirpath}/cyanpinkbluefire/particles" "${shdirpath}/tempparticles"
python3 "${shdirpath}/edit_fire_pcfs_purple.py" "${shdirpath}/purplefire/particles" "${shdirpath}/tempparticles"
python3 "${shdirpath}/edit_rain_pcfs.py" "${shdirpath}/pinkrain/particles" "${shdirpath}/tempparticles"

vpkeditcli "${shdirpath}/cyanpinkbluefire" -v 1 -s -o "${shdirpath}/cyanpinkbluefire.vpk"
vpkeditcli "${shdirpath}/purplefire" -v 1 -s -o "${shdirpath}/purplefire.vpk"
vpkeditcli "${shdirpath}/pinkrain" -v 1 -s -o "${shdirpath}/pinkrain.vpk"
rm -r "${shdirpath}/tempparticles"
