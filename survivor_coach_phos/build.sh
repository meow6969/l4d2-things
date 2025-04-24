#!/bin/sh

if [[ "${ZSH_EVAL_CONTEXT}" =~ :file$ ]]; then
  echo "not allowed to source build.sh"
  return
fi

. "$(dirname "$0")/../shutils/pathvars.sh"
init_pathvars 
echo_pathvars
# echo "${shpath}"
vpkeditcli -v 1 -s -o "${pakpath}" "${srcpath}"
