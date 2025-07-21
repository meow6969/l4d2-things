#!/bin/zsh


#if [[ "${ZSH_EVAL_CONTEXT}" =~ :file$ ]]; then
#  echo "not allowed to source build.sh"
#  return
#fi

source "$(dirname "${0}")/../shutils/pathvars.sh"
init_pathvars 
# echo_pathvars
python3 "edit_all_textures.py"

cp -rv "${shdirpath}/copy/"* "${srcpath}/"

# echo "${shpath}"

echo "moving to sub addons..."
echo "meowmeowpinkvehicles:"
rm -r "${shdirpath}/meowmeowpinkvehicles/materials"
mkdir -p "${shdirpath}/meowmeowpinkvehicles/materials/models/props_vehicles/"
mv -v "${srcpath}/materials/models/props_vehicles/"* "${shdirpath}/meowmeowpinkvehicles/materials/models/props_vehicles/"
vpkeditcli --no-progress -v 1 -s -o "${shdirpath}/meowmeowpinkvehicles.vpk" "${shdirpath}/meowmeowpinkvehicles"

echo "meowmeowpinkprops:"
rm -r "${shdirpath}/meowmeowpinkprops_pt1/materials"
mkdir -p "${shdirpath}/meowmeowpinkprops_pt1/materials/models/" 
mv -v "${srcpath}/materials/models/prop"* "${shdirpath}/meowmeowpinkprops_pt1/materials/models/"
mv -v "${srcpath}/materials/prop"* "${shdirpath}/meowmeowpinkprops_pt1/materials/"
# vpkeditcli --no-progress -v 1 -s -o "${shdirpath}/meowmeowpinkprops_pt1.vpk" "${shdirpath}/meowmeowpinkprops_pt1" 

rm -r "${shdirpath}/meowmeowpinkprops_pt2/materials"
mkdir -p "${shdirpath}/meowmeowpinkprops_pt2/materials/models/" 
mv -v "${shdirpath}/meowmeowpinkprops_pt1/materials/models/props_fairgrounds" "${shdirpath}/meowmeowpinkprops_pt2/materials/models/"
mv -v "${shdirpath}/meowmeowpinkprops_pt1/materials/models/props_unique" "${shdirpath}/meowmeowpinkprops_pt2/materials/models/"
mv -v "${shdirpath}/meowmeowpinkprops_pt1/materials/models/props_mill" "${shdirpath}/meowmeowpinkprops_pt2/materials/models/"
vpkeditcli --no-progress -v 1 -s -o "${shdirpath}/meowmeowpinkprops_pt2.vpk" "${shdirpath}/meowmeowpinkprops_pt2"

rm -r "${shdirpath}/meowmeowpinkprops_pt3/materials"
mkdir -p "${shdirpath}/meowmeowpinkprops_pt3/materials/models/" 
mv -v "${shdirpath}/meowmeowpinkprops_pt1/materials/models/props_street" "${shdirpath}/meowmeowpinkprops_pt3/materials/models/"
mv -v "${shdirpath}/meowmeowpinkprops_pt1/materials/models/props_foliage" "${shdirpath}/meowmeowpinkprops_pt3/materials/models/"
mv -v "${shdirpath}/meowmeowpinkprops_pt1/materials/models/props_buildables" "${shdirpath}/meowmeowpinkprops_pt3/materials/models/"
mv -v "${shdirpath}/meowmeowpinkprops_pt1/materials/models/props_waterfront" "${shdirpath}/meowmeowpinkprops_pt3/materials/models/"
vpkeditcli --no-progress -v 1 -s -o "${shdirpath}/meowmeowpinkprops_pt3.vpk" "${shdirpath}/meowmeowpinkprops_pt3"

rm -r "${shdirpath}/meowmeowpinkprops_pt4/materials"
mkdir -p "${shdirpath}/meowmeowpinkprops_pt4/materials/models/" 
mv -v "${shdirpath}/meowmeowpinkprops_pt1/materials/models/props_mall" "${shdirpath}/meowmeowpinkprops_pt4/materials/models/"
mv -v "${shdirpath}/meowmeowpinkprops_pt1/materials/models/props_signs" "${shdirpath}/meowmeowpinkprops_pt4/materials/models/"
mv -v "${shdirpath}/meowmeowpinkprops_pt1/materials/models/props_placeable" "${shdirpath}/meowmeowpinkprops_pt4/materials/models/"
mv -v "${shdirpath}/meowmeowpinkprops_pt1/materials/models/props_downtown" "${shdirpath}/meowmeowpinkprops_pt4/materials/models/"
mv -v "${shdirpath}/meowmeowpinkprops_pt1/materials/models/props_downtown" "${shdirpath}/meowmeowpinkprops_pt4/materials/models/"
vpkeditcli --no-progress -v 1 -s -o "${shdirpath}/meowmeowpinkprops_pt4.vpk" "${shdirpath}/meowmeowpinkprops_pt4"


vpkeditcli --no-progress -v 1 -s -o "${shdirpath}/meowmeowpinkprops_pt1.vpk" "${shdirpath}/meowmeowpinkprops_pt1"

echo "meowmeowpinkdecals:"
rm -r "${shdirpath}/meowmeowpinkdecals/materials"
mkdir -p "${shdirpath}/meowmeowpinkdecals/materials/decals" 
mkdir -p "${shdirpath}/meowmeowpinkdecals/materials/overlays"
mv -v "${srcpath}/materials/decals/"* "${shdirpath}/meowmeowpinkdecals/materials/decals/"
mv -v "${srcpath}/materials/overlays/"* "${shdirpath}/meowmeowpinkdecals/materials/overlays/"
vpkeditcli --no-progress -v 1 -s -o "${shdirpath}/meowmeowpinkdecals.vpk" "${shdirpath}/meowmeowpinkdecals"

echo "meowmeowpinkmodels:"
rm -r "${shdirpath}/meowmeowpinkmodels/materials"
mkdir -p "${shdirpath}/meowmeowpinkmodels/materials/models/" 
mv -v "${srcpath}/materials/models/"* "${shdirpath}/meowmeowpinkmodels/materials/models/"
vpkeditcli --no-progress -v 1 -s -o "${shdirpath}/meowmeowpinkmodels.vpk" "${shdirpath}/meowmeowpinkmodels"


echo "meowmeowpinktextures:"
vpkeditcli --no-progress -v 1 -s -o "${shdirpath}/meowmeowpinktextures.vpk" "${srcpath}"

echo "creating vpks..."

cp "${shdirpath}/meowmeowpinkvehicles.vpk"  -fv "${l4d2path}/left4dead2/addons/meowmeowpinkvehicles.vpk"
cp "${shdirpath}/meowmeowpinkprops_pt1.vpk" -fv "${l4d2path}/left4dead2/addons/meowmeowpinkprops_pt1.vpk"
cp "${shdirpath}/meowmeowpinkprops_pt2.vpk" -fv "${l4d2path}/left4dead2/addons/meowmeowpinkprops_pt2.vpk"
cp "${shdirpath}/meowmeowpinkprops_pt3.vpk" -fv "${l4d2path}/left4dead2/addons/meowmeowpinkprops_pt3.vpk"
cp "${shdirpath}/meowmeowpinkprops_pt4.vpk" -fv "${l4d2path}/left4dead2/addons/meowmeowpinkprops_pt4.vpk"
cp "${shdirpath}/meowmeowpinkdecals.vpk"    -fv "${l4d2path}/left4dead2/addons/meowmeowpinkdecals.vpk"
cp "${shdirpath}/meowmeowpinkmodels.vpk"    -fv "${l4d2path}/left4dead2/addons/meowmeowpinkmodels.vpk"
cp "${shdirpath}/meowmeowpinktextures.vpk"  -fv "${l4d2path}/left4dead2/addons/meowmeowpinktextures.vpk"

