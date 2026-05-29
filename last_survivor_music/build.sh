#!/bin/zsh

if [[ "${ZSH_EVAL_CONTEXT}" =~ :file$ ]]; then
  echo "not allowed to source build.sh"
  return
fi

. "$(dirname "$0")/../shutils/pathvars.sh"
init_pathvars 
echo_pathvars

#sed -i".old" -e "s/build_num=[0-9]*[0-9]/&€/g;:a {s/0€/1/g;s/1€/2/g;s/2€/3/g;s/3€/4/g;s/4€/5/g;s/5€/6/g;s/6€/7/g;s/7€/8/g;s/8€/9/g;s/9€/€0/g;t a};s/€/1/" "${srcpath}/scripts/vscripts/bhop_detector.nut"

# echo "${shpath}"
vpkeditcli -v 1 -s -o "${pakpath}" "${srcpath}"
cp -fv "${pakpath}" "${l4d2path}/left4dead2/addons"

#vpkeditcli -v 1 -s -o "${shdirpath}/last_survivor_longtest.vpk" "${shdirpath}/src_longtest"

vpkeditcli -v 1 -s -o "${shdirpath}/pak01_dir.vpk" "${shdirpath}/pak01"
cp -fv "${shdirpath}/pak01_dir.vpk" "${l4d2path}/lastsurvivor/pak01_dir.vpk"


