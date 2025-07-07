#!/bin/zsh

source "$(dirname "${0}")/../shutils/pathvars.sh"

init_pathvars
echo_pathvars

# python3 convert.py

vpkeditcli -v 1 -s -o "${pakpath}" "${srcpath}"
