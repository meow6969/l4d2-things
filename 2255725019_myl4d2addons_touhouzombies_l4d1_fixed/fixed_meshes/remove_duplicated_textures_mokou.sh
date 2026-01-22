#!/bin/sh

in_file="${1}"

if ! [[ -f "${in_file}" ]]; then
	echo "error ${in_file} isnt real !!!!"
	exit 1
fi



#shouldbe_body=(
#	"body"
#	"mokou_body"
#)

shouldbe_mokou_face=(
	"mokou_face"
	"hoho_tere"
)


function turn_string_to_case_insensitive() {
	if ! [[ "${1}" ]]; then
		echo "fake"
		exit 1
	fi
	in_str="${1}"
	in_str="${in_str,,}"
	r_str=""

	for (( i=0; i<${#in_str}; i++ )); do
		c="${in_str:$i:1}"
		if ! [[ "${c}" =~ [[:alpha:]] ]]; then
			r_str="${r_str}${c}"
			continue
		fi
		r_str="${r_str}[${c^^}${c}]"
	done
	echo "${r_str}"
}

function do_replacements() {
	a=("${@}")
	rep="${a[0]}"
	unset a[0]
	#echo "${a[@]}"
	#echo "rep=${rep}"
	for i in "${a[@]}"; do
		case_insensitive="$(turn_string_to_case_insensitive "${i}")"
		#echo "${i}->${case_insensitive}"

		sed -i -E "s/^${case_insensitive}(\r|)\$/${rep}\\1/" "${in_file}"
	done
}


do_replacements "${shouldbe_mokou_face[@]}"
do_replacements "${shouldbe_body[@]}"



