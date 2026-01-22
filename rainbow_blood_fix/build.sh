#!/bin/zsh


#if [[ "${ZSH_EVAL_CONTEXT}" =~ :file$ ]]; then
#  echo "not allowed to source build.sh"
#  return
#fi

source "$(dirname "${0}")/../shutils/pathvars.sh"
init_pathvars 
echo_pathvars

python3 edit_boomer.py "${shdirpath}/og_boomer_fx.pcf" "${shdirpath}/mod_boomer_fx.pcf" "${shdirpath}/fix_boomer_fx.pcf"

# echo "${shpath}"
vpkeditcli -v 1 -s -o "${pakpath}" "${srcpath}"
cp -fv "${pakpath}" "${l4d2path}/left4dead2/addons"

