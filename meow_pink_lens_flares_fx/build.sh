#!/bin/zsh


source "$(dirname "${0}")/../shutils/pathvars.sh"

init_pathvars 
echo_pathvars

mkdir -p "${srcpath}"
rm -rf "${srcpath}/materials"
cp -r "${srcpath}/../og/"* "${srcpath}"

maretf --remove-mips --yes edit "${srcpath}/materials"

vpkeditcli --no-progress -v 1 -s -o "${pakpath}" "${srcpath}"


