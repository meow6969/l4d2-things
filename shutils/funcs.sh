#!/bin/sh

if [[ "${ZSH_EVAL_CONTEXT}" ]]; then
  echo "${ZSH_EVAL_CONTEXT}"
  echo "not allowed to run funcs.sh"
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

function join_strings () {
  o_str=""

  first_param=true
  for param in "$*"; do 
    if [ "${first_param}" = true ]; then
      first_param=false
      o_str="${o_str}${param}"
      continue
    fi
    o_str="${o_str} ${param}"
  done
  echo "${o_str}"
}

function string_in_list () {
  search_for="0"
  # echo -e "\033[0;32m$*\033[0m" > `tty`
  for meow in "${@}"; do
    if [ "${search_for}" = "0" ]; then
      search_for="${meow}"
      continue
    fi
    if [ "${meow}" = "${search_for}" ]; then
      echo "1"
      return
    fi
  done
  return
}

function directory_exists () {
  if [ ! -d "${1}" ]; then
    if [ -f "${1}" ]; then
      return 2
    fi
    return 1
  fi
  return 0
}

function is_string_integer () {
  if [ ! "${1}" ]; then
    return
  fi
  re='^[0-9]+$'
  if ! [[ "${1}" =~ $re ]]; then
     return
  fi
  echo 1
}

function get_last_build () {
  # echo "\$1=${1}" > `tty`
  if [ ! -d "${1}" ] || [ ! -f "${1}/last_build.txt" ]; then
    return
  fi

  lbtext="$(cat "${1}/last_build.txt")"
  if [ ! $(is_string_integer "${lbtext}") ]; then
    return
  fi
  echo "${lbtext}"
}

function get_realpath () {
  # echo "get_realpath()=${1}" > `tty`
  if [ ! "${1}" ]; then
    return
  fi
  echo "$(readlink -f -- "${1}")"
}

function get_most_recent_file () {
  meowmeow="$(get_realpath "${1}")"
  # echo "meowmeow		= ${meowmeow}" > `tty`
  if [ ! -d "${meowmeow}" ]; then
    # echo "cat" > `tty`
    return
  fi
  mrfile="$(find "${meowmeow}" -type f -printf '%T@ %p\n' | sort -n | tail -1 | cut -f2- -d" ")"
  # echo "mrfile			= ${mrfile}" > `tty`
  if [ ! -f "${mrfile}" ]; then
    return
  fi
  echo "${mrfile}"
}

function get_file_date () {
  meowmeow="$(get_realpath "${1}")"
  # echo "meowmeow		= ${meowmeow}" > `tty`
  if [ ! -f "${meowmeow}" ]; then
    echo $meowmeow > `tty`
    return
  fi
  meowmeowdate="$(date -r "${meowmeow}" "+%s")"
  
  if [ ! "$(is_string_integer "${meowmeowdate}")" ]; then
    return
  fi
  echo "${meowmeowdate}"
}

function get_most_recent_file_date () {
  echo "$(get_file_date "$(get_most_recent_file "${1}" )" )"
}
