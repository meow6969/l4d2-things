#!/bin/sh

if [[ "${ZSH_EVAL_CONTEXT}" ]]; then
  echo "${ZSH_EVAL_CONTEXT}"
  echo "not allowed to run pathvars.sh"
  exit 2
fi

function file_exists () {
  if [ ! -f "$1" ]; then
    if [ -d "$1" ]; then
      return 2
    fi
    return 1
  fi
  return 0
}

function ensure_file () {
  if [ ! $(file_exists "${1}"; echo $?) = 0 ]; then
    echo "fatal error: ${1} is not a file or does not exist"
    exit 2
  fi
}

function ensure_dir () {
  if [ ! $(file_exists "${1}"; echo $?) = 2 ]; then
    echo "fatal error: ${1} is not a directory or does not exist"
    exit 2
  fi
}

function ensure_init () {
  if [ ! "${pathvarspath}" ]; then
    exit 2
  fi
}

function init_pathvars() {
  declare -g shpath
  shpath="$(readlink -f -- "$0")"
  ensure_file "${shpath}"
  # pathvarspath="${0}"
  pathvarspath="$(readlink -f -- "${BASH_SOURCE[0]}" )"

  shutilspath="$(readlink -f -- "$( dirname "${pathvarspath}" )" )"
  ensure_file "${shutilspath}/l4d2path.txt"
  l4d2path="$(cat "${shutilspath}/l4d2path.txt")"
  ensure_dir "${l4d2path}"
  

  shdirpath="$(dirname "$shpath")"

  pakname="$(basename "$shdirpath").vpk"
  pakpath="$(readlink -f -- "${shdirpath}/..")/${pakname}"
  

  srcpath="${1}"
  if [ "${srcpath}" ]; then
    srcpath=$(readlink -f -- "${srcpath}")
  else 
    srcpath="${shdirpath}/src"
  fi
  . "${shutilspath}/funcs.sh"
  . "${shutilspath}/output.sh"
  ensure_srcpath
  ensure_pakpath
  lastbuild="$(get_last_build "${shdirpath}")"
}

function ensure_pakpath () {
  ensure_init
  if [ -d "${pakpath}" ]; then
    output "vpk output path is a directory: $(format_path "${pakpath}")"
  fi
}

function echo_pathvars () {
  ensure_init
  output "${BRACKET_COLOR}echo_pathvars"
  output "${BRACKET_COLOR}{"
  output "	$(format_key "l4d2path")	$(format_path "${l4d2path}")"
  output "	$(format_key "pathvarspath")	$(format_path "${pathvarspath}")"
  output "	$(format_key "shutilspath")	$(format_path "${shutilspath}")"
  output "	$(format_key "shpath")		$(format_path "${shpath}")"
  output "	$(format_key "srcpath")		$(format_path "${srcpath}")"
  output "	$(format_key "shdirpath")	$(format_path "${shdirpath}")"
  output "	$(format_key "pakpath")		$(format_path "${pakpath}")"
  output "	$(format_key "lastbuild")	$(format_value "${lastbuild}")"
  output "	$(format_key "pakname")		$(format_value "${pakname}")"
  output "${BRACKET_COLOR}}"
}

function ensure_srcpath () {
  ensure_init
  if [ ! -d "$srcpath" ]; then
    echo_pathvars
    if [ -f "$srcpath" ]; then
      output "$(format_path "${shpath}"): source path cannot be a file: $(format_path "${srcpath}")" 
      exit 2
    fi
    echo "$(format_path "${shpath}"): source path does not exist: $(format_path "${srcpath}")" 
    exit 2 
  fi
  return 0
}
