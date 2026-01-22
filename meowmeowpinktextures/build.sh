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

function create_subaddons () {
  echo "creat ubsadon"

  echo "moving to sub addons..." > `tty`
  echo "meowmeowpinkvehicles:" > `tty`
  rm -r "${shdirpath}/meowmeowpinkvehicles/materials" > `tty`
  mkdir -p "${shdirpath}/meowmeowpinkvehicles/materials/models/props_vehicles/" > `tty`
  mv -v "${srcpath}/materials/models/props_vehicles/"* "${shdirpath}/meowmeowpinkvehicles/materials/models/props_vehicles/" > `tty`
  vpkeditcli --no-progress -v 1 -s -o "${shdirpath}/meowmeowpinkvehicles.vpk" "${shdirpath}/meowmeowpinkvehicles" > `tty`

  echo "meowmeowpinkprops:" > `tty`
  rm -r "${shdirpath}/meowmeowpinkprops_pt1/materials" > `tty`
  mkdir -p "${shdirpath}/meowmeowpinkprops_pt1/materials/models/"  > `tty`
  mv -v "${srcpath}/materials/models/prop"* "${shdirpath}/meowmeowpinkprops_pt1/materials/models/" > `tty`
  mv -v "${srcpath}/materials/prop"* "${shdirpath}/meowmeowpinkprops_pt1/materials/" > `tty`
  # vpkeditcli --no-progress -v 1 -s -o "${shdirpath}/meowmeowpinkprops_pt1.vpk" "${shdirpath}/meowmeowpinkprops_pt1" 

  rm -r "${shdirpath}/meowmeowpinkprops_pt2/materials" > `tty`
  mkdir -p "${shdirpath}/meowmeowpinkprops_pt2/materials/models/"  > `tty`
  mv -v "${shdirpath}/meowmeowpinkprops_pt1/materials/models/props_fairgrounds" "${shdirpath}/meowmeowpinkprops_pt2/materials/models/" > `tty`
  mv -v "${shdirpath}/meowmeowpinkprops_pt1/materials/models/props_unique" "${shdirpath}/meowmeowpinkprops_pt2/materials/models/" > `tty`
  mv -v "${shdirpath}/meowmeowpinkprops_pt1/materials/models/props_mill" "${shdirpath}/meowmeowpinkprops_pt2/materials/models/" > `tty`
  vpkeditcli --no-progress -v 1 -s -o "${shdirpath}/meowmeowpinkprops_pt2.vpk" "${shdirpath}/meowmeowpinkprops_pt2" > `tty`

  rm -r "${shdirpath}/meowmeowpinkprops_pt3/materials" > `tty`
  mkdir -p "${shdirpath}/meowmeowpinkprops_pt3/materials/models/"  > `tty`
  mv -v "${shdirpath}/meowmeowpinkprops_pt1/materials/models/props_street" "${shdirpath}/meowmeowpinkprops_pt3/materials/models/" > `tty`
  mv -v "${shdirpath}/meowmeowpinkprops_pt1/materials/models/props_foliage" "${shdirpath}/meowmeowpinkprops_pt3/materials/models/" > `tty`
  mv -v "${shdirpath}/meowmeowpinkprops_pt1/materials/models/props_buildables" "${shdirpath}/meowmeowpinkprops_pt3/materials/models/" > `tty`
  mv -v "${shdirpath}/meowmeowpinkprops_pt1/materials/models/props_waterfront" "${shdirpath}/meowmeowpinkprops_pt3/materials/models/" > `tty`
  vpkeditcli --no-progress -v 1 -s -o "${shdirpath}/meowmeowpinkprops_pt3.vpk" "${shdirpath}/meowmeowpinkprops_pt3" > `tty`

  rm -r "${shdirpath}/meowmeowpinkprops_pt4/materials" > `tty`
  mkdir -p "${shdirpath}/meowmeowpinkprops_pt4/materials/models/"  > `tty`
  mv -v "${shdirpath}/meowmeowpinkprops_pt1/materials/models/props_mall" "${shdirpath}/meowmeowpinkprops_pt4/materials/models/" > `tty`
  mv -v "${shdirpath}/meowmeowpinkprops_pt1/materials/models/props_signs" "${shdirpath}/meowmeowpinkprops_pt4/materials/models/" > `tty`
  mv -v "${shdirpath}/meowmeowpinkprops_pt1/materials/models/props_placeable" "${shdirpath}/meowmeowpinkprops_pt4/materials/models/" > `tty`
  mv -v "${shdirpath}/meowmeowpinkprops_pt1/materials/models/props_downtown" "${shdirpath}/meowmeowpinkprops_pt4/materials/models/" > `tty`
  mv -v "${shdirpath}/meowmeowpinkprops_pt1/materials/models/props_urban" "${shdirpath}/meowmeowpinkprops_pt4/materials/models/" > `tty`
  vpkeditcli --no-progress -v 1 -s -o "${shdirpath}/meowmeowpinkprops_pt4.vpk" "${shdirpath}/meowmeowpinkprops_pt4" > `tty`


  vpkeditcli --no-progress -v 1 -s -o "${shdirpath}/meowmeowpinkprops_pt1.vpk" "${shdirpath}/meowmeowpinkprops_pt1" > `tty`

  echo "meowmeowpinkdecals:" > `tty`
  rm -r "${shdirpath}/meowmeowpinkdecals/materials" > `tty`
  mkdir -p "${shdirpath}/meowmeowpinkdecals/materials/decals"  > `tty`
  mkdir -p "${shdirpath}/meowmeowpinkdecals/materials/overlays" > `tty`
  mv -v "${srcpath}/materials/decals/"* "${shdirpath}/meowmeowpinkdecals/materials/decals/" > `tty`
  mv -v "${srcpath}/materials/overlays/"* "${shdirpath}/meowmeowpinkdecals/materials/overlays/" > `tty`
  vpkeditcli --no-progress -v 1 -s -o "${shdirpath}/meowmeowpinkdecals.vpk" "${shdirpath}/meowmeowpinkdecals" > `tty`

  echo "meowmeowpinkmodels:" > `tty`
  rm -r "${shdirpath}/meowmeowpinkmodels/materials" > `tty`
  mkdir -p "${shdirpath}/meowmeowpinkmodels/materials/models/"  > `tty`
  mv -v "${srcpath}/materials/models/"* "${shdirpath}/meowmeowpinkmodels/materials/models/" > `tty`
  vpkeditcli --no-progress -v 1 -s -o "${shdirpath}/meowmeowpinkmodels.vpk" "${shdirpath}/meowmeowpinkmodels" > `tty`
}

function copy_subaddons() {
  cp "${shdirpath}/meowmeowpinkvehicles.vpk"  -fv "${l4d2path}/left4dead2/addons/meowmeowpinkvehicles.vpk" > `tty`
  cp "${shdirpath}/meowmeowpinkprops_pt1.vpk" -fv "${l4d2path}/left4dead2/addons/meowmeowpinkprops_pt1.vpk" > `tty`
  cp "${shdirpath}/meowmeowpinkprops_pt2.vpk" -fv "${l4d2path}/left4dead2/addons/meowmeowpinkprops_pt2.vpk" > `tty`
  cp "${shdirpath}/meowmeowpinkprops_pt3.vpk" -fv "${l4d2path}/left4dead2/addons/meowmeowpinkprops_pt3.vpk" > `tty`
  cp "${shdirpath}/meowmeowpinkprops_pt4.vpk" -fv "${l4d2path}/left4dead2/addons/meowmeowpinkprops_pt4.vpk" > `tty`
  cp "${shdirpath}/meowmeowpinkdecals.vpk"    -fv "${l4d2path}/left4dead2/addons/meowmeowpinkdecals.vpk" > `tty`
  cp "${shdirpath}/meowmeowpinkmodels.vpk"    -fv "${l4d2path}/left4dead2/addons/meowmeowpinkmodels.vpk" > `tty`
}


#create_subaddons

echo "meowmeowpinktextures:"
vpkeditcli --no-progress -v 1 -s -o "${shdirpath}/meowmeowpinktextures.vpk" "${srcpath}"

echo "creating vpks..."

#copy_subaddons
cp "${shdirpath}/meowmeowpinktextures.vpk"  -fv "${l4d2path}/left4dead2/addons/meowmeowpinktextures.vpk"

