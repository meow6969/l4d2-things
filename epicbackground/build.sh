#!/bin/sh

if [[ "${ZSH_EVAL_CONTEXT}" =~ :file$ ]]; then
  echo "not allowed to source build.sh"
  return
fi

. "$(dirname "$0")/../shutils/pathvars.sh"
init_pathvars 
echo_pathvars
. "${shutilspath}/buildutils.sh"

replace_vtfs "${shdirpath}/mybg.vtf" "${srcpath}"
delete_files_not_type "vtf" "${srcpath}/materials"

vpkeditcli -v 1 -s -o "${pakpath}" "${srcpath}"
