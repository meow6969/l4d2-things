#!/bin/zsh

if [[ "${ZSH_EVAL_CONTEXT}" =~ :file$ ]]; then
  echo "not allowed to source build.sh"
  return
fi

. "$(dirname "$0")/../shutils/pathvars.sh"
init_pathvars 
echo_pathvars



function compile_all() {
	echo "compiling all models..."
	#export -f compile_model
	#find "${shdirpath}/uncompiled" -type f -name "*.qc" -exec zsh -c "compile_model \"\${0}\" \"${srcpath}\"" {} ";"
	find "${shdirpath}/uncompiled" -type f -name "*.qc" | while read file; do
		compile_model "${file}" "${srcpath}"  
	done
	wineserver -w
	echo "done compiling models!"
}

function remove_all_unneeded_sanae() {
	# this gets rid of all duplicated accessories
	find "${shdirpath}/uncompiled" -type f -name "*.qc" | while read file; do
		perl -i -0pe 's/^(\$bodygroup \"Accessory\"[\s]*\{[\w\W]*?\})/\/\* $1 \*\//ms' "${file}"
	done

	# this gets rid of unneeded vta flexfile stuff
	find "${shdirpath}/uncompiled" -type f -name "*.qc" | while read file; do
		perl -i -0pe 's/^(\$model "Associates" "Sanae_body\.smd" \{[\s\S]*?\}[\s\S]*?\})/\/\* $1 \*\/\n\$bodygroup "Sanae Body"\n\{\n\tstudio "Sanae_body.smd"\n\}/gms' "${file}"
	done
}

function remove_all_unneeded_orin() {
	# this gets rid of unneeded vta flexfile stuff
	find "${shdirpath}/uncompiled" -type f -name "*.qc" | while read file; do
		perl -i -0pe 's/^(\$model "Associates" "orin_emotions\.smd" \{[\s\S]*?\}[\s\S]*?\})/\/\* $1 \*\/\n\$bodygroup "orin face"\n\{\n\tstudio "orin_emotions.smd"\n\}/gms' "${file}"
	done
}

function remove_all_unneeded_mokou() {
	# this removes the duplicated hair model
	find "${shdirpath}/uncompiled" -type f -name "*.qc" | while read file; do
		perl -i -0pe 's/^(\$bodygroup \"Hair\"[\s]*\{[\s]*?studio \"mokou_hair_2.smd\"[\s]*?\})/\/\* $1 \*\//ms' "${file}"
	done

	# this removes non visible feet
	find "${shdirpath}/uncompiled" -type f -name "*.qc" | while read file; do 
		perl -i -0pe 's/^\t(studio \"mokou_foots.smd\")/\t\/\* $1 \*\//ms' "${file}"
	done

	# this gets rid of unneeded vta flexfile stuff
	find "${shdirpath}/uncompiled" -type f -name "*.qc" | while read file; do
		perl -i -0pe 's/^(\$model "Associates" "mokou_body\.smd" \{[\s\S]*?\}[\s\S]*?\})/\/\* $1 \*\/\n\$bodygroup "mokou body"\n\{\n\tstudio "mokou_body.smd"\n\}/gms' "${file}"
	done
}

function remove_all_unneeded_seiga() {
	# this removes the unused glasses model
	find "${shdirpath}/uncompiled" -type f -name "*.qc" | while read file; do
		perl -i -0pe 's/^(\$bodygroup \"Glasses\"[\s]*\{[\w\W]*?\})/\/\* $1 \*\//ms' "${file}"
	done
}

function remove_all_unneeded_tenshi() {
	# this gets rid of all accessories, not very noticeable
	find "${shdirpath}/uncompiled" -type f -name "*.qc" | while read file; do
		perl -i -0pe 's/^(\$bodygroup \"Sword\"[\s]*\{[\w\W]*?\})/\/\* $1 \*\//ms' "${file}"
	done

	# this removes non visible feet
	find "${shdirpath}/uncompiled" -type f -name "*.qc" | while read file; do 
		perl -i -0pe 's/^\t(studio \"tenshi_pm_legs.smd\")/\t\/\* $1 \*\//ms' "${file}"
	done

	# this gets rid of unneeded vta flexfile stuff
	find "${shdirpath}/uncompiled" -type f -name "*.qc" | while read file; do
		perl -i -0pe 's/^(\$model "Associates" "tenshi_pm_reference\.smd" \{[\s\S]*?\}[\s\S]*?\})/\/\* $1 \*\/\n\$bodygroup "tenshi body"\n\{\n\tstudio "tenshi_pm_reference.smd"\n\}/gms' "${file}"
	done
}

function remove_all_declaresequence() {
	find "${shdirpath}/uncompiled" -type f -name "*.qc" | while read file; do
		perl -i -0pe 's/^(\$declaresequence[\s\S]*?)$/\/\/ $1/gms' "${file}"
	done
}

function add_all_declaresequence() {
	find "${shdirpath}/uncompiled" -type f -name "*.qc" | while read file; do
		perl -i -0pe 's/^\/\/ (\$declaresequence[\s\S]*?)$/$1/gms' "${file}"
	done
}

function remove_all_proportion_correction() {
	find "${shdirpath}/uncompiled" -type f -name "*.qc" | while read file; do
		perl -i -0pe 's/^(\$animation "a_proportions_corrective_animation" [\s\S]*?\}[\s\S]*?\})/\/\* $1 \*\//ms' "${file}"
		perl -i -0pe 's/^(\$sequence "reference" \{[\s\S]*?\}[\s\S]*?\})/\/\* $1 \*\//ms' "${file}"
	done
}

function remove_all_collision_models() {
	find "${shdirpath}/uncompiled" -type f -name "*.qc" | while read file; do
		perl -i -0pe 's/^(\$collisionjoints [\s\S]*?\})/\/\* $1 \*\//ms' "${file}"
		perl -i -0pe 's/^(\$collisiontext [\s\S]*?\})/\/\* $1 \*\//ms' "${file}"
	done
}

function copy_fixed_meshes() {
	echo "copying fixed meshes"
	for i in "${shdirpath}/fixed_meshes/"*.smd; do
		filename="$(basename -- "${i}")"
		#echo "filename=${filename}"
		find "${shdirpath}/uncompiled" -type f -name "*.smd" | while read file; do
			other_filename="$(basename -- "${file}")"
			#echo "other_filename=${other_filename}"
			#echo "${filename}==${other_filename}"
			if [[ "${filename}" == "${other_filename}" ]]; then
				# echo "${i}" "${file}"
				cp -fv "${i}" "${file}"
			fi
		done
	done
}

# i did reimu manually cus only 1 of them

function remove_all_unneeded() {
	echo "getting rid of unneeded"

	remove_all_unneeded_sanae
	remove_all_unneeded_orin
	remove_all_unneeded_mokou
	remove_all_unneeded_seiga
	remove_all_unneeded_tenshi

	remove_all_declaresequence
	# add_all_declaresequence
	
	remove_all_collision_models

	remove_all_proportion_correction

	copy_fixed_meshes

	echo "done"
}

remove_all_unneeded


function remove_gibs() {
	echo "removing all gibs"

	replacer="${shdirpath}/gib_replace/all.smd"

	find "${shdirpath}/uncompiled_gibs" -type f -name "common_*infected_w_*.smd" | while read file; do
		cp -fv "${replacer}" "${file}"
	done
}

#remove_gibs

compile_all_models
#compile_all_models "${shdirpath}/uncompiled_gibs"

# echo "${shpath}"
vpkeditcli -v 1 -s --no-progress -o "${pakpath}" "${srcpath}"
cp -fv "${pakpath}" "${l4d2path}/left4dead2/addons"


