#!/bin/zsh

if ! [[ "${ZSH_EVAL_CONTEXT}" =~ ":file$" ]] && [[ "${ZSH_EVAL_CONTEXT}" ]]; then
  echo "${ZSH_EVAL_CONTEXT}"
  echo "not allowed to run buildutils.sh"
  exit 2
fi

source "${utilpath}/funcs.sh"

DEFAULT_AUDIO_SAMPLERATE=22050
DEFAULT_AUDIO_CHANNELS=1
DEFAULT_AUDIO_BITDEPTH=16

function replace_vtfs () {
  if [ ! "${1}" ] || [ ! "${2}" ]; then
    return 1
  fi
  if [ ! $(file_exists "${1}"; echo $?) = 0 ] || [ ! $(directory_exists "${2}"; echo $?) = 0 ] ; then
    return 2
  fi
  find "${2}" -type f -name "*.vtf" -exec cp -v "${1}" {} ";"
}

function delete_files_not_type () {
  if [ ! "${1}" ] || [ ! "${2}" ]; then
    return 1
  fi
  if [ ! $(directory_exists "${2}"; echo $?) = 0 ] ; then
    return 2
  fi
  find "${2}" -type f -not -name "*.${1}" -exec rm -v {} ";"
}

function add_files_to_vpk () {
  if [ ! "${1}" ] || [ ! "${2}" ]; then
    return 1
  fi
  if [ ! $(file_exists "${1}"; echo $?) = 0 ] || [ ! $(directory_exists "${2}"; echo $?) = 0 ] ; then
    return 2
  fi
}

function get_file_samplerate () {
  if [ ! "${1}" ]; then
    return 1
  fi
  if [ ! $(file_exists "${1}"; echo $?) = 0 ]; then
    return 2
  fi
  f_samplerate="$(ffprobe -v error -show_entries stream=sample_rate -of default=noprint_wrappers=1:nokey=1 "${1}")"
  if [ ! $(is_string_integer "${f_samplerate}") ]; then
    return 3
  fi
  echo "${f_samplerate}"
}

function get_file_audio_channels () {
  if [ ! "${1}" ]; then
    return 1
  fi
  if [ ! $(file_exists "${1}"; echo $?) = 0 ]; then
    return 2
  fi
  f_samplerate="$(ffprobe -v error -show_entries stream=channels -of default=noprint_wrappers=1:nokey=1 "${1}")"
  if [ ! $(is_string_integer "${f_samplerate}") ]; then
    return 3
  fi
  echo "${f_samplerate}"
}

function get_file_bitdepth () {
  if [ ! "${1}" ]; then
    return 1
  fi
  if [ ! $(file_exists "${1}"; echo $?) = 0 ]; then
    return 2
  fi
  f_samplerate="$(ffprobe -v error -show_entries stream=bits_per_sample -of default=noprint_wrappers=1:nokey=1 "${1}")"
  if [ ! $(is_string_integer "${f_samplerate}") ]; then
    return 3
  fi
  echo "${f_samplerate}"
}

function is_file_audio_not_default () {
    f_samplerate="$(get_file_samplerate "${1}")"
    if [ ! "${f_samplerate}" ]; then
      return
    fi
    if [ ! "${f_samplerate}" = "${DEFAULT_AUDIO_SAMPLERATE}" ]; then
      echo "1"
      return
    fi
    f_channels="$(get_file_audio_channels "${1}")"
    if [ ! "${f_channels}" ]; then
      return
    fi
    if [ ! "${f_channels}" = "${DEFAULT_AUDIO_CHANNELS}" ]; then
      echo "1"
      return
    fi
    f_bitdepth="$(get_file_bitdepth "${1}")"
    if [ ! "${f_bitdepth}" ]; then
      return
    fi
    if [ ! "${f_bitdepth}" = "${DEFAULT_AUDIO_BITDEPTH}" ]; then
      echo "1"
      return
    fi
}

function make_file_audio_default () {
  if [ ! "${1}" ]; then
    return 1
  fi
  if [ ! $(file_exists "${1}"; echo $?) = 0 ]; then
    return 2
  fi
  if [ ! $(file_exists "${2}"; echo $?) = 0 ]; then
    bitdepth="${DEFAULT_AUDIO_BITDEPTH}"
    channels="${DEFAULT_AUDIO_CHANNELS}"
    samplerate="${DEFAULT_AUDIO_SAMPLERATE}"
  else
    # echo "2=${2}"
    bitdepth="$(get_file_bitdepth "${2}")"
    channels="$(get_file_audio_channels "${2}")"
    samplerate="$(get_file_samplerate "${2}")"
  fi
  #echo "1=${1}"
  #echo "2=${2}"
  #echo "bitdepth=${bitdepth}"
  #echo "channels=${channels}"
  #echo "samplerate=${samplerate}"
  #echo
  if [ "$(get_file_bitdepth "${1}")" = "${bitdepth}" ] && [ "$(get_file_audio_channels "${1}")" = "${channels}" ] && [ "$(get_file_samplerate "${1}")" = "${samplerate}" ]; then
    return
  fi

  newfile="${1}.wav"
  ffmpeg -v error -y -i "${1}" -sample_fmt s"${bitdepth}" -ac "${channels}" -ar "${samplerate}" "${newfile}"
  mv -v "${newfile}" "${1}" > `tty`
}

function get_l4d2_file () {
  if [ ! "${1}" ]; then
    return 1
  fi
  if [ ! "${l4d2path}" ]; then
    echo "fatal error: l4d2path not defined" > `tty`
    exit 
  fi
  if [ $(file_exists "${l4d2path}/left4dead2/${1}"; echo $?) = 0 ]; then
    echo "${l4d2path}/left4dead2/${1}"
    return
  fi
  if [ $(file_exists "${l4d2path}/left4dead2_dlc1/${1}"; echo $?) = 0 ]; then
    echo "${l4d2path}/left4dead2_dlc1/${1}"
    return
  fi
  if [ $(file_exists "${l4d2path}/left4dead2_dlc2/${1}"; echo $?) = 0 ]; then
    echo "${l4d2path}/left4dead2_dlc2/${1}"
    return
  fi
  if [ $(file_exists "${l4d2path}/left4dead2_dlc3/${1}"; echo $?) = 0 ]; then
    echo "${l4d2path}/left4dead2_dlc3/${1}"
    return
  fi
  if [ $(file_exists "${l4d2path}/update/${1}"; echo $?) = 0 ]; then
    echo "${l4d2path}/update/${1}"
    return
  fi
}

function ensure_correct_audio_files () {
  if [ ! "${1}" ]; then
    return 1
  fi
  if [ ! $(directory_exists "${1}"; echo $?) = 0 ]; then
    return 2
  fi
  slice_amt="${#1}"
  slice_amt="$((slice_amt + 2))"
  echo converting audio files...
  # echo "slice_amt=${slice_amt}"
  for f in $(find "${1}" -type f -name "*.wav"); do
    # echo "${f}" > `tty`
    if [[ $f == *.wav.wav ]]; then 
      # echo "2222${f}" > `tty`
      continue
    fi
    # echo "kit" > `tty`
    f_relapath="$(echo "${f}" | cut -c "${slice_amt}-")"
    # echo "f_relapath=${f_relapath}" > `tty`
    #if [ ! "$(is_file_audio_not_default "${f}" "${f_relapath}")" ]; then
      # echo "${f}?=${?}"
    #  continue
    #fi
    # echo "${f_relapath}" > `tty`
    make_file_audio_default "${f}" "$(get_l4d2_file "${f_relapath}")"
    # echo "${f}"
  done
  echo done converting
}

function file_increment_number_after_string () {
  if [ ! $(file_exists "${1}"; echo ${?}) = 0 ]; then
    return ${?}
  fi

}

function native_path_to_wine () {
	if [[ ! "${1}" ]]; then
		return 1
	fi
	nya="$(get_realpath "${1}")"
	# echo "nya=\"${nya}\"" > `tty`
	echo -E "Z:$(echo "${nya}" | sed 's/\//\\/g')"
}

# 1=input_qc, 2=output_folder
function compile_model () {
	if [[ ! "${1}" ]] || [[ ! "${2}" ]]; then
		return 1
	fi
	if ! [[ -f "${1}" ]]; then
		return 2
	fi
	if ! [[ -d "${2}" ]]; then
		return 3
	fi

	out="$(get_realpath "${2}")"
	studiomdl="$(native_path_to_wine "${l4d2path}/bin/studiomdl.exe")"
	game="$(native_path_to_wine "${l4d2path}/left4dead2")"
	qc="$(native_path_to_wine "${1}")"

	# make modelname all lowercase
	sed -i -e 's/^\(\$modelname "[^"]*\)/\L\1/' "${1}"

	relapath="$(grep -Po '(?<=^\$modelname ")[^"]*' "${1}")"
	relapath="${relapath%.*}"  # remove extension
	relapath="$(echo -E "${relapath}" | sed 's/\\/\//g')"  # replace \ with /
	# relapath="${relapath:l}"  # make lowercase
	reladir="$(dirname "${relapath}")"
	echo -E "studiomdl=\"${studiomdl}\""
	echo -E "game=\"${game}\""
	echo -E "qc=\"${qc}\""
	echo -E "relapath=\"${relapath}\""
	echo -E "reladir=\"${reladir}\""
	
	WINEDEBUG="-all" wine "${studiomdl}" -game "${game}" -verbose -nop4 "${qc}"
	outpath="${out}/models/${reladir}/"
	mkdir -p "${outpath}"

	mv -fv "${l4d2path}/left4dead2/models/${relapath}."* "${outpath}"
}

function compile_all_models() {
	echo "compiling all models..."
	if [[ ! "${1}" ]]; then
		in_folder="${shdirpath}/uncompiled"
	else
		in_folder="${1}"
	fi

	#export -f compile_model
	#find "${shdirpath}/uncompiled" -type f -name "*.qc" -exec zsh -c "compile_model \"\${0}\" \"${srcpath}\"" {} ";"
	find "${in_folder}" -type f -name "*.qc" | while read file; do
		compile_model "${file}" "${srcpath}"  
	done
	wineserver -w
	echo "done compiling models!"
}

function full_final_compile_map() {
	if [[ ! "${1}" ]] || [[ ! "${2}" ]]; then
		return 1
	fi
	if ! [[ -f "${1}" ]]; then
		return 2
	fi
	if ! [[ -d "${2}" ]]; then
		return 3
	fi
	
	out="$(get_realpath "${2}")"
	vbsp="$(native_path_to_wine "${l4d2path}/bin/vbsp.exe")"
	#vvis="$(native_path_to_wine "${l4d2path}/bin/vvis.exe")"
	vvis="$(native_path_to_wine "${l4d2path}/bin/vvisplusplus.exe")"
	vrad="$(native_path_to_wine "${l4d2path}/bin/vrad.exe")"
	game="$(native_path_to_wine "${l4d2path}/left4dead2")"
	vmf="$(get_realpath "${1}")"
	#echo "dirname=$(dirname "${1}")"
	vmfdir="$(dirname "${1}")"
	wine_vmf="$(native_path_to_wine "${vmf}")"
	mapname="$(basename -- "${vmf}")"
	mapname="${mapname%.*}"
	out_bsp="${out}/maps/${mapname}.bsp"
	echo -E "vbsp=${vbsp}"
	echo -E "vvis=${vvis}"
	echo -E "vrad=${vrad}"

	echo "vmf=${vmf}"
	echo -E "vmfdir=${vmfdir}"
	echo "mapname=${mapname}"

	WINEDEBUG="-all" wine "${vbsp}" -game "${game}" "${wine_vmf}"
	WINEDEBUG="-all" wine "${vvis}" -game "${game}" "${wine_vmf}"
	WINEDEBUG="-all" wine "${vrad}" -hdr -final -staticproplighting -game "${game}" "${wine_vmf}"

	mv -v "${vmfdir}/${mapname}.bsp" "${out_bsp}"
}

function full_compile_map() {
	if [[ ! "${1}" ]] || [[ ! "${2}" ]]; then
		return 1
	fi
	if ! [[ -f "${1}" ]]; then
		return 2
	fi
	if ! [[ -d "${2}" ]]; then
		return 3
	fi
	
	out="$(get_realpath "${2}")"
	vbsp="$(native_path_to_wine "${l4d2path}/bin/vbsp.exe")"
	#vvis="$(native_path_to_wine "${l4d2path}/bin/vvis.exe")"
	vvis="$(native_path_to_wine "${l4d2path}/bin/vvisplusplus.exe")"
	vrad="$(native_path_to_wine "${l4d2path}/bin/vrad.exe")"
	game="$(native_path_to_wine "${l4d2path}/left4dead2")"
	vmf="$(get_realpath "${1}")"
	#echo "dirname=$(dirname "${1}")"
	vmfdir="$(dirname "${1}")"
	wine_vmf="$(native_path_to_wine "${vmf}")"
	mapname="$(basename -- "${vmf}")"
	mapname="${mapname%.*}"
	out_bsp="${out}/maps/${mapname}.bsp"
	echo -E "vbsp=${vbsp}"
	echo -E "vvis=${vvis}"
	echo -E "vrad=${vrad}"

	echo "vmf=${vmf}"
	echo -E "vmfdir=${vmfdir}"
	echo "mapname=${mapname}"

	WINEDEBUG="-all" wine "${vbsp}" -game "${game}" "${wine_vmf}"
	WINEDEBUG="-all" wine "${vvis}" -game "${game}" "${wine_vmf}"
	WINEDEBUG="-all" wine "${vrad}" -hdr -staticproplighting -game "${game}" "${wine_vmf}"
	
	mv -v "${vmfdir}/${mapname}.bsp" "${out_bsp}"
}


# need the path to the bsp
# will copy the map over, then edit the servers server.cfg to execute script buildstringtable.cfg
# will also copy over the mission.txt  -- actualy dont think its needed
# buildstringtable.cfg will be dynamically created every time, 
function build_map_stringtable() {
	if ! [[ -f "${1}" ]]; then
		return 1
	fi
	bsp="${1}"
	filename="$(basename -- "${bsp}")"
	mapname="${filename%.*}"
	output_bsp="${l4d2dspath}/left4dead2/maps/${filename}"
	stringtableexecpath="${l4d2dspath}/left4dead2/cfg/buildstringtable.cfg"
	
	cp -fv "${bsp}" "${output_bsp}"

	# echo "stringtabledictionary\nexit" > "${stringtableexecpath}"
	
	cp -fv "${l4d2dspath}/left4dead2/cfg/server.cfg" "${l4d2dspath}/left4dead2/cfg/server___old___.cfg"
	# echo "\nexec buildstringtable.cfg" >> "${l4d2dspath}/left4dead2/cfg/server.cfg"
	echo "\nstringtabledictionary\nexit" >> "${l4d2dspath}/left4dead2/cfg/server.cfg"

	"${l4d2dspath}/srcds_run" +map "${mapname}" -norestart

	echo "cleaning up"
	cp -fv "${l4d2dspath}/left4dead2/cfg/server___old___.cfg" "${l4d2dspath}/left4dead2/cfg/server.cfg"
	# rm -fv "${stringtableexecpath}"

	cp -fv "${output_bsp}" "${bsp}"
}


# i really need to like finish this wah
function build_mod () {
	copy_to_addons=false
	output_dir="${pakdir}"
	output_name="${pakname}"
	copy_flag_to=""
	
	for flag in "${@}"; do
		# if $copy_flag_to isnt empty
		if [[ "${copy_flag_to}" ]]; then
			eval "${copy_flag_to}="
		fi
		case "${flag}" in 

			"--copy") 
				copy_to_addons=true
				;;
			"--output-dir")
				#if [[ "${copy_flag_to}" ]]; then
				#	echo "build_mod(): flags error"
				#	exit 1
				#fi
				copy_flag_to="output_dir"
				;;
			"--output-name")
				copy_flag_to="output_name"
				;;
			*)
				echo "build_mod(): invalid flag: ${flag}"
				exit 1
				;;
		esac
	done

}


