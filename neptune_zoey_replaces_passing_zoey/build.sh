#!/bin/zsh


#if [[ "${ZSH_EVAL_CONTEXT}" =~ :file$ ]]; then
#  echo "not allowed to source build.sh"
#  return
#fi

source "$(dirname "${0}")/../shutils/pathvars.sh"
init_pathvars 
echo_pathvars

source "${shutilspath}/buildutils.sh"

compile_model "${shdirpath}/uncompiled/models/survivors/survivor_teenangst_light/survivor_teenangst_light.qc" "${srcpath}"

# echo "${shpath}"
vpkeditcli -v 1 -s -o "${pakpath}" "${srcpath}"
cp -fv "${pakpath}" "${l4d2path}/left4dead2/addons"


