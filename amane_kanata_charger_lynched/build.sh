#!/bin/zsh


#if [[ "${ZSH_EVAL_CONTEXT}" =~ :file$ ]]; then
#  echo "not allowed to source build.sh"
#  return
#fi

source "$(dirname "${0}")/../shutils/pathvars.sh"
init_pathvars 
# echo_pathvars
# python3 "edit_all_textures.py"

# echo "${shpath}"

# echo "creating vpk..."
vpkeditcli --no-progress -v 1 -s -o "${pakpath}" "${srcpath}"
cp "${pakpath}" -fv "${l4d2path}/left4dead2/addons"
# cp "${pakpath}" -fv "${l4d2path}/touhoubodies/pak01_dir.vpk"

