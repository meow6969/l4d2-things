#!/bin/sh

if ! [[ "${1}" ]]; then
	echo "not enough args!"
	exit 1
fi  

file_to_remove="${1}"
file_suf="${file_to_remove##*.}"
file_name="${file_to_remove%.*}"

if [[ "${file_to_remove[1]}" == "/" ]] || [[ "${file_to_remove[1]}" == "." ]]; then
	echo "file name cannot have first character be \"/\" or \".\""
fi

# : '
og_folder="./og"
unused_folder="./unused"
# '

: '
og_folder="./test_og"
unused_folder="./test_unused"
'

if ! [[ -f "${og_folder}/${file_to_remove}" ]]; then
	echo "error! \"${file_to_remove}\" not present in og folder!"
	exit 2
fi

if [[ -f "${unused_folder}/${file_to_remove}" ]]; then
	echo "error! unused folder already has the file \"${file_to_remove}\""
	echo "\"${unused_folder}/${file_to_remove}\" already exists"
fi

# : '
folders_to_search=(
  "./png"
  "./contrast"
  "./modified"
  "./src"
  "./meowmeowpinkdecals"
  "./meowmeowpinkmodels"
  "./meowmeowpinkprops_pt1"
  "./meowmeowpinkprops_pt2"
  "./meowmeowpinkprops_pt3"
  "./meowmeowpinkprops_pt4"
  "./meowmeowpinkvehicles"
)
# '

: '
folders_to_search=(
  "./test_folder"
  "./test_folder2"
)
'

# i could easily just do *.vpk but i really really really dont wanna accidentally delete something important
# : '
vpks_to_search=(
  "./meowmeowpinkdecals.vpk"
  "./meowmeowpinkmodels.vpk"
  "./meowmeowpinkprops_pt1.vpk"
  "./meowmeowpinkprops_pt2.vpk"
  "./meowmeowpinkprops_pt3.vpk"
  "./meowmeowpinkprops_pt4.vpk"
  "./meowmeowpinktextures.vpk"
  "./meowmeowpinkvehicles.vpk"
)
# '

: '
vpks_to_search=(
  "./test.vpk"
)
'

echo "removing from folders..."
for f in "${folders_to_search[@]}"; do
	fPath="${f}/${file_to_remove}"
	if ! [[ -f "${fPath}" ]]; then
		if [[ "${file_suf}" == "vtf" ]]; then
			fPath="${f}/${file_name}.png"
			if ! [[ -f "${fPath}" ]]; then
				continue
			fi
		else
			continue
		fi
	fi
	rm -v "${fPath}"
	# if [[ "${?}" == "1" ]]; then
	# 	continue
	# fi
	echo "removed from folder \"${f}\""
done

edited_vpks=""

echo "removing from vpks..."
for f in "${vpks_to_search[@]}"; do
	vpkeditcli --remove-file "${file_to_remove}" "${f}"
	# if the file wasnt found in the vpk
	if [[ "${?}" == "1" ]]; then
		continue
	fi
	edited_text="\t\t\"${f}\" was changed"
	if [[ "${edited_vpks}" == "" ]]; then
		edited_vpks="${edited_text}"
	else
		edited_vpks="${edited_vpks}\n${edited_text}"
	fi
	# echo "removed \"${file_to_remove}\" from vpk \"${f}\""
done

if ! [[ "${edited_vpks}" == "" ]]; then
	echo ""
	echo "${edited_vpks}"
	echo ""
fi

echo "moving file to unused..."
og_f="${og_folder}/${file_to_remove}"
un_f="${unused_folder}/${file_to_remove}"
if ! [[ -f "${og_f}" ]]; then
	echo "WARNING: og file \"${og_f}\" doesnt exist!"
else
	mv -v "${og_f}" "${un_f}"
fi



echo ""
echo "file \"${file_to_remove}\" is now unused"

