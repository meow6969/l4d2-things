#!/bin/zsh


#if [[ "${ZSH_EVAL_CONTEXT}" =~ :file$ ]]; then
#  echo "not allowed to source build.sh"
#  return
#fi

source "$(dirname "${0}")/../shutils/pathvars.sh"
init_pathvars 
# echo_pathvars
# python3 "edit_all_textures.py"

mkdir -p "${srcpath}/models/deadbodies/ceda/"
mkdir -p "${srcpath}/models/deadbodies/cemetary/"
mkdir -p "${srcpath}/models/deadbodies/deepswamp/"
mkdir -p "${srcpath}/models/deadbodies/default/"
mkdir -p "${srcpath}/models/deadbodies/human/"
mkdir -p "${srcpath}/models/deadbodies/milltownrain/"
mkdir -p "${srcpath}/models/deadbodies/riot/"
mkdir -p "${srcpath}/models/deadbodies/sugarmill/"
mkdir -p "${srcpath}/models/deadbodies/sugarmillrain/"
mkdir -p "${srcpath}/models/deadbodies/swamp/"

duplicated_folders=(
	"deepswamp"
	"default"
	"human"
	"milltownrain"
	"sugarmill"
	"sugarmillrain"
	"swamp"
)

# based on duplicates.txt
function copy_duplicates() {
	echo "copying duplicates..."
	
	for i in "${srcpath}/models/deadbodies/common_male_fence01."*; do
		ext="${i#*.}"
		cp "${i}" -fv "${srcpath}/models/deadbodies/cemetary/fence_a.${ext}"
	done
	for i in "${srcpath}/models/deadbodies/common_worker_male01_fence01."*; do
		ext="${i#*.}"
		cp "${i}" -fv "${srcpath}/models/deadbodies/cemetary/fence_c.${ext}"
	done
	for i in "${srcpath}/models/deadbodies/dead_female_civilian_02."*; do
		ext="${i#*.}"
		cp "${i}" -fv "${srcpath}/models/deadbodies/cemetary/pose_c.${ext}"
	done

	for i in "${srcpath}/models/deadbodies/cemetary/"*; do
		if ! [[ -f "${i}" ]]; then
			continue
		fi
		fname="$(basename -- "${i}")"
		for duplicat in "${duplicated_folders[@]}"; do
			# echo "duplicat=${duplicat}"
			if ! [[ -f "${shdirpath}/og/models/deadbodies/${duplicat}/${fname}" ]]; then
				continue
			fi
			cp "${i}" -fv "${srcpath}/models/deadbodies/${duplicat}/${fname}"
		done
	done

	#cp "${srcpath}/models/deadbodies/cemetary/"* -fv "${srcpath}/models/deadbodies/deepswamp/"
	#cp "${srcpath}/models/deadbodies/cemetary/"* -fv "${srcpath}/models/deadbodies/default/"
	#cp "${srcpath}/models/deadbodies/cemetary/"* -fv "${srcpath}/models/deadbodies/human/"
	#cp "${srcpath}/models/deadbodies/cemetary/"* -fv "${srcpath}/models/deadbodies/milltownrain/"
	#cp "${srcpath}/models/deadbodies/cemetary/"* -fv "${srcpath}/models/deadbodies/sugarmill/"
	#cp "${srcpath}/models/deadbodies/cemetary/"* -fv "${srcpath}/models/deadbodies/sugarmillrain/"
	#cp "${srcpath}/models/deadbodies/cemetary/"* -fv "${srcpath}/models/deadbodies/swamp/"

	for i in "${srcpath}/models/deadbodies/bodies128_a."*; do
		ext="${i#*.}"
		cp "${i}" -fv "${srcpath}/models/deadbodies/bodies128_fresh_a.${ext}"
	done
	for i in "${srcpath}/models/deadbodies/bodies128_b."*; do
		ext="${i#*.}"
		cp "${i}" -fv "${srcpath}/models/deadbodies/bodies128_fresh_b.${ext}"
	done
	for i in "${srcpath}/models/deadbodies/dead_male_civilian_01."*; do
		ext="${i#*.}"
		cp "${i}" -fv "${srcpath}/models/deadbodies/dead_male_civilian_body.${ext}"
	done

	echo "done copying duplicates!"
}

copy_duplicates

# echo "${shpath}"

# echo "creating vpk..."
vpkeditcli --no-progress -v 1 -s -o "${pakpath}" "${srcpath}"
cp "${pakpath}" -fv "${l4d2path}/left4dead2/addons"
# cp "${pakpath}" -fv "${l4d2path}/touhoubodies/pak01_dir.vpk"

