#!/bin/zsh


#if [[ "${ZSH_EVAL_CONTEXT}" =~ :file$ ]]; then
#  echo "not allowed to source build.sh"
#  return
#fi

source "$(dirname "${0}")/../shutils/pathvars.sh"
init_pathvars 
echo_pathvars

source "${shutilspath}/buildutils.sh"


function copy_over_custom_models() {
	cp -r "${srcpath}/models" "${l4d2path}/reverse_dead_air/"

	echo "copied over all custom models"
}

function full_final_compile_all_maps() {
	start="$(date +%s)"
	full_final_compile_map "${shdirpath}/map/r_c11m1_greenhouse.vmf" "${srcpath}"
	#full_final_compile_map "${shdirpath}/map/r_c11m2_offices.vmf" "${srcpath}"
	#full_final_compile_map "${shdirpath}/map/r_c11m3_garage.vmf" "${srcpath}"
	#full_final_compile_map "${shdirpath}/map/r_c11m4_terminal.vmf" "${srcpath}"
	#full_final_compile_map "${shdirpath}/map/r_c11m5_runway.vmf" "${srcpath}"
	ended="$(date +%s)"
	runtime="$((ended-start))"
	echo ""
	echo "map compile took ${runtime} seconds"
	echo ""
}

function full_compile_all_maps() {
	#full_compile_map "${shdirpath}/map/r_c11m1_greenhouse.vmf" "${srcpath}"
	#full_compile_map "${shdirpath}/map/r_c11m2_offices.vmf" "${srcpath}"
	#full_compile_map "${shdirpath}/map/r_c11m3_garage.vmf" "${srcpath}"
	full_compile_map "${shdirpath}/map/r_c11m4_terminal.vmf" "${srcpath}"
	full_compile_map "${shdirpath}/map/r_c11m5_runway.vmf" "${srcpath}"	
}


function upload_map() {
	s3cmd put "${pakpath}" s3://httpbucket/meow/stuff/"${pakname}"
	sleep 5
	echo "chmod 644 /var/www/sex/files/bucketstorage/stuff/reverse_rda.vpk; exit" | ssh root@jestershelter.xyz

	echo "https://jestershelter.xyz/files/bucketstorage/stuff/reverse_rda.vpk"
}

function build_all_maps_stringtables() {
	#build_map_stringtable "${srcpath}/maps/r_c11m1_greenhouse.bsp"
	#build_map_stringtable "${srcpath}/maps/r_c11m2_offices.bsp"
	#build_map_stringtable "${srcpath}/maps/r_c11m3_garage.bsp"
	#build_map_stringtable "${srcpath}/maps/r_c11m4_terminal.bsp"
	build_map_stringtable "${srcpath}/maps/r_c11m5_runway.bsp"
}


#full_final_compile_all_maps
#full_compile_all_maps

#build_all_maps_stringtables

#python3 reverse_anims.py
#python3 trim_barricade.py


#compile_model "${shdirpath}/uncompiled/models/umi/candle/candle.qc" "${srcpath}"

#compile_model "${shdirpath}/uncompiled/models/umi/semi_flush_001/semi_flush_001.qc" "${srcpath}"


compile_model "${shdirpath}/uncompiled/models/umi/propper/church_door/church_door.qc" "${srcpath}"

# echo "${shpath}"
#

#copy_over_custom_models
vpkeditcli -v 1 -s --no-progress -o "${pakpath}" "${srcpath}"
cp -fv "${pakpath}" "${l4d2path}/left4dead2/addons"

#upload_map


