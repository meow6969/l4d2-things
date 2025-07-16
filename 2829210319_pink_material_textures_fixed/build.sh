#!/bin/zsh


source "$(dirname "${0}")/../shutils/pathvars.sh"

init_pathvars 
echo_pathvars

textures_to_remove=(
	"materials/buildings/building_hotel.vmt"
	"materials/buildings/building_hotel.vtf"

	"materials/metal/metal_ext_trim02_height-ssbump.vtf"
	"materials/metal/metal_ext_trim02.vmt"
	"materials/metal/metal_ext_trim02.vtf"

	"materials/models/props_highway/bridge_metal_truss_dk.vmt"
	"materials/models/props_highway/bridge_metal_truss_dk.vtf"

	"materials/models/props_highway/bridge_metal01_dk.vmt"
	"materials/models/props_highway/bridge_metal01_dk.vtf"

	"materials/models/props_urban/hotel_ceiling_vent001.vmt"
	"materials/models/props_urban/hotel_ceiling_vent001.vtf"

	"materials/models/props_urban/wood_fence001.vtf"

	"materials/overlays/street_cover_13.vmt"
	"materials/overlays/street_cover_13.vtf"

	"materials/plaster/ceiling_tile01.vmt"
	"materials/plaster/ceiling_tile01.vtf"

	"materials/plaster/ceilingtileb.vmt"
	"materials/plaster/ceilingtileb.vtf"

	"materials/plaster/ceilingtiles-ssbump.vtf"
	"materials/plaster/ceilingtiles01_cheap.vmt"
	"materials/plaster/ceilingtiles01.vmt"
	"materials/plaster/ceilingtiles01.vtf"

	"materials/sewage/urban_sewagescum01.vmt"
	"materials/sewage/urban_sewagescum01.vtf"

	"materials/wood/woodsiding_ext_02.vmt"
	"materials/wood/woodsiding_ext_02.vtf"
)

for texture in "${textures_to_remove[@]}"; do
	rm -v "${srcpath}/${texture}" >> "log.txt"
done


mv -v "${srcpath}/materials/tile/ceilingtiles"* "${srcpath}/materials/plaster" >> "log.txt"


vpkeditcli --no-progress -v 1 -s -o "${pakpath}" "${srcpath}" >> "log.txt"

