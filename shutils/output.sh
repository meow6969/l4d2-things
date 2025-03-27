#!/bin/sh

if [ ! "${shutilspath}" ]; then
  if [ ! "${1}" ] || [ ! -d "${1}" ]; then
    echo "error shutilspath is not defined"
    exit 1
  fi
  utilpath="${1}"
else
  utilpath="${shutilspath}"
fi

. "${utilpath}/colorcodes.sh"
. "${utilpath}/funcs.sh"

function format_path() {
  if [ ! "$1" ]; then
    return
  fi
  echo "${PATH_COLOR}\"${@}\"${ENDC}"
}

function format_key() {
  if [ ! "$1" ]; then
    return
  fi
  echo "${KEY_COLOR}${@}${ENDC}"
}

function format_value() {
  if [ ! "$1" ]; then
    return
  fi
  echo "${VALUE_COLOR}${@}${ENDC}"
}

function output () {
  o_str="$(join_strings "$@")"

  echo -e "${o_str}${ENDC}"
}
