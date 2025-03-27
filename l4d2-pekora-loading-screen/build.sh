#!/bin/sh

export l4d2_dir="/mnt/d/SteamLibrary/steamapps/common/Left 4 Dead 2"
# export cpmusic_dir="sound/music/cpmusic"
export cpmusic_dir="aswdrfyhraewryawryeyawer/sound/music/cpmusic"
export safemusic_dir="sound/music/safe"
export music_file="./extra/bgm.wav"
export music_addoninfo_file="./extra/musicaddoninfo.txt"
export nostatscreen_file="./extra/transitionstatssurvivor-nostats.res"

echo cleaning up build...
rm -rv ./build/*
echo
echo copying source files...
cp -rv src/* build/

echo
echo making texture vpk...
vpkeditcli build -v 1 -s -o pekoraloadingscreen.vpk 

echo 
echo making no stats screen vpk...
cp -v "${nostatscreen_file}" "./build/resource/ui/transitionstatssurvivor.res"
vpkeditcli build -v 1 -s -o pekoraloadingscreen-nostats.vpk 

echo
echo cleaning up build...
rm -rv ./build/*

echo
echo copying music files...
cp -v "${music_addoninfo_file}" "./build/addoninfo.txt"
for folder in "$l4d2_dir"/*; do
  # echo "${l4d2_dir}/${folder}"
  # echo $folder
  if [ -d "${folder}" ]; then
    export check_dir="${folder}/${cpmusic_dir}"
    if [ -d "${check_dir}" ]; then
      for music in "${check_dir}"/*; do
        export name=$(basename -- "${music}")
        export rela_path="${cpmusic_dir}/${name}"
        # cp -v "${music}" "./build/${rela_path}"
        export par_dir=$(dirname -- "./build/${rela_path}")
        mkdir -p "${par_dir}"
        cp -v "${music_file}" "./build/${rela_path}"
      done
    fi
    export check_dir="${folder}/${safemusic_dir}"
    if [ -d "${check_dir}" ]; then
      for music in "${check_dir}"/*; do
        export name=$(basename -- "${music}")
        export rela_path="${safemusic_dir}/${name}"
        # cp -v "${music}" "./build/${rela_path}"
        export par_dir=$(dirname -- "./build/${rela_path}")
        mkdir -p "${par_dir}"
        cp -v "${music_file}" "./build/${rela_path}"
      done
    fi
  fi
done

echo 
echo making music vpk...
vpkeditcli -v 1 -s -o pekoraloadingmusic.vpk build



echo
echo done\!
