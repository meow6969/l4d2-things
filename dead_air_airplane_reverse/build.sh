#!/bin/zsh

if [[ "${ZSH_EVAL_CONTEXT}" =~ :file$ ]]; then
  echo "not allowed to source build.sh"
  return
fi

. "$(dirname "$0")/../shutils/pathvars.sh"
init_pathvars 
echo_pathvars

python3 reverse_anims.py

compile_all_models

# echo "${shpath}"
#vpkeditcli -v 1 -s --no-progress -o "${pakpath}" "${srcpath}"
#cp -fv "${pakpath}" "${l4d2path}/left4dead2/addons"


