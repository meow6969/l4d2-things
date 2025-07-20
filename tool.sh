#!/bin/zsh

if [[ "${ZSH_EVAL_CONTEXT}" =~ ":file$" ]]; then
  echo "not allowed to source buildall.sh"
  return
fi

tool_args=( "${@[@]:2}" )
# for arg in $tool_args; do
#   echo "tool_arg=${arg}"
# done


realpath="$(readlink -f --  "$0")"
realdir="$(dirname "${realpath}")"
toolspath="${realdir}/tools"

# echo "${toolspath}"

source "${realdir}/shutils/funcs.sh"
source "${realdir}/shutils/output.sh" "${realdir}/shutils"
source "${realdir}/shutils/colorcodes.sh"
source "${realdir}/shutils/pathvars.sh"

init_pythonvars "${realdir}/shutils"

list_of_tools="list of available tools: "
# echo "${1}"

for i in "${toolspath}/"*; do
  tool_name="$(basename -- "${i}")"
  # echo "${tool_name}"
  if [[ "$(echo "${1}" | xargs)" == "" ]]; then
    :
  elif [[ "${tool_name}" =~ ^"${1}".* ]]; then
    echo "starting tool ${tool_name}..."
    file_extension="$(get_file_extension "${tool_name}")"
    if [[ "${file_extension}" == "py" ]]; then
      (cd "${toolspath}" || exit 1; python3 "${i}" "${tool_args[@]}")
      exit 0
    fi
    (cd "${toolspath}" || exit 1; "${i}" "${tool_args[@]}")
  fi
  list_of_tools="${list_of_tools}\n${tool_name}"
done

echo "${list_of_tools}"

