#!/bin/sh

if [[ "${ZSH_EVAL_CONTEXT}" =~ :file$ ]]; then
  echo "not allowed to source buildall.sh"
  return
fi

realpath="$(readlink -f --  "$0")"
realdir="$(dirname "${realpath}")"
. "${realdir}/shutils/funcs.sh"
. "${realdir}/shutils/output.sh" "${realdir}/shutils"
. "${realdir}/shutils/colorcodes.sh"

exclude_dirs=("shutils" "l4d2-pekora-loading-screen" "particle-stuff" "vscriptstuff" "carnivalgames")

output "${Blue}building all projects in $(format_path "${realdir}")${Blue}...\n"

for kittycat in "${realdir}/"*; do
  kittycatname="$(basename "${kittycat}")"
  if [ ! -d "${kittycat}" ]; then
    continue
  fi
  if [ $(string_in_list "${kittycatname}" "${exclude_dirs[@]}" ) ]; then
    continue
  fi
  kittybuildfile="${kittycat}/build.sh"
  if [ ! -f "${kittybuildfile}" ]; then
    continue
  fi
  kittylastbuild="$(get_last_build "${kittycat}")"
  kittymostrecentfile="$(get_most_recent_file "${kittycat}")"
  if [ "$(basename "${kittymostrecentfile}")" = "last_build.txt" ]; then 
    kittymostrecentfiledate="$(get_file_date "${kittymostrecentfile}")"
  fi
  # echo "kittylastbuild		= ${kittylastbuild}"
  # echo "kittymostrecentfile	= ${kittymostrecentfile}"
  # echo "kittymostrecentfiledate	= ${kittymostrecentfiledate}"
  if [ "${kittylastbuild}" ] && [ "${kittymostrecentfiledate}" ]; then
    if [ "${kittylastbuild}" -ge "${kittymostrecentfiledate}" ]; then
      output "skipping $(format_path "${kittycatname}"):\t$(format_key "last_build")=$(format_value "${kittylastbuild}")" \
             "greater than or equal to $(format_key "most_recent_file")=$(format_value "${kittymostrecentfiledate}")"
      continue
    fi
  fi
  
  output "running $(format_path "${kittycatname}")..."
  "${kittybuildfile}" > `tty`
  if [ "${?}" != "0" ]; then
    output "error for file: $(format_path "${kittycatname}")"
    continue
  fi
  echo "$(date '+%s')" > "${kittycat}/last_build.txt"
done

output "\n${Blue}all changed projects built!\n"
# meowurikmenu/build.sh

