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
rm -r "${shdirpath}/meowmeowpinkprops/materials"
mkdir -p "${shdirpath}/meowmeowpinkprops/materials/models/" 
mv -v "${srcpath}/materials/models/prop"* "${shdirpath}/meowmeowpinkprops/materials/models/"
mv -v "${srcpath}/materials/prop"* "${shdirpath}/meowmeowpinkprops/materials/"
vpkeditcli --no-progress -v 1 -s -o "${shdirpath}/meowmeowpinkprops.vpk" "${shdirpath}/meowmeowpinkprops"

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
mv -v "${srcpath}/materials/models/"* "${shdirpath}/meowmeowpinkprops/materials/models/"
vpkeditcli --no-progress -v 1 -s -o "${shdirpath}/meowmeowpinkmodels.vpk" "${shdirpath}/meowmeowpinkmodels"


echo "meowmeowpinktextures:"
vpkeditcli --no-progress -v 1 -s -o "${shdirpath}/meowmeowpinktextures.vpk" "${srcpath}"

echo "creating vpks..."

cp "${shdirpath}/meowmeowpinkvehicles" -fv "${l4d2path}/left4dead2/addons/meowmeowpinkvehicles.vpk"
cp "${shdirpath}/meowmeowpinkprops"    -fv "${l4d2path}/left4dead2/addons/meowmeowpinkprops.vpk"
cp "${shdirpath}/meowmeowpinkdecals"   -fv "${l4d2path}/left4dead2/addons/meowmeowpinkdecals.vpk"
cp "${shdirpath}/meowmeowpinkmodels"   -fv "${l4d2path}/left4dead2/addons/meowmeowpinkmodels.vpk"
cp "${shdirpath}/meowmeowpinktextures" -fv "${l4d2path}/left4dead2/addons/meowmeowpinktextures.vpk"

