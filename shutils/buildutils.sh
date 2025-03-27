#!/bin/sh

if [[ "${ZSH_EVAL_CONTEXT}" ]]; then
  echo "${ZSH_EVAL_CONTEXT}"
  echo "not allowed to run buildutils.sh"
  exit 2
fi

. "${utilpath}/funcs.sh"

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
