
# THIS IS NOT MY WORK  

# pink material textures fixed  

this is a list of errors with the [pink material textures mod by sephora](https://steamcommunity.com/sharedfiles/filedetails/?id=2829210319)  
i have produced a version of the mod with the errors i have noticed fixed  
you can download this version [here](https://github.com/meow6969/l4d2-things/raw/refs/heads/master/2829210319_pink_material_textures_fixed.vpk)
the files that are marked `original texture (not pink)` have been removed from this version  
the files that are in the wrong places have been fixed in this version  
this version of the mod can be directly reuploaded to the workshop without issue  
this version will only fix pink textures that are in the wrong places or remove redundant unaltered game textures  
u do not need to credit me  
thank u  

if the explanations here are hard to follow u can read `build.sh`  
`build.sh` contains the script i used to remove and rename the necessary files  
my code is probably easier to understand then my writing  
it also created a `log.txt` file that u can read to see all of the changes that it made  

ERRORS
---

**this file is the original texture (not pink)**  
```
materials/buildings/building_hotel.vmt
materials/buildings/building_hotel.vtf
```
---
**this file is the original texture (not pink)**  
**i already pointed this out but i just wanted to make a comprehensive list**  
```
materials/metal/metal_ext_trim02_height-ssbump.vtf
materials/metal/metal_ext_trim02.vmt
materials/metal/metal_ext_trim02.vtf
```
---
**this file is the original texture (not pink)**  
```
materials/models/props_highway/bridge_metal_truss_dk.vmt
materials/models/props_highway/bridge_metal_truss_dk.vtf
```
---
**this file is the original texture (not pink)**  
```
materials/models/props_highway/bridge_metal01_dk.vmt
materials/models/props_highway/bridge_metal01_dk.vtf
```
---
**this file is the original texture (not pink)**  
```
materials/models/props_urban/hotel_ceiling_vent001.vmt
materials/models/props_urban/hotel_ceiling_vent001.vtf
```
---
**this file is the original texture (not pink)**
```
materials/models/props_urban/wood_fence001.vtf
```
---
**this file is the original texture (not pink)**  
```
materials/overlays/street_cover_13.vmt
materials/overlays/street_cover_13.vtf
```
---
**this file is both the vanilla texture (not pink), but also in the wrong place**  
**it should be in** `materials/tile/ceiling_tile01.(vtf|vmt)`  
**the original game files have no material of this path**  
**while the original game files do have a material of the path** `materials/tile/ceiling_tile01.vmt`  
**the vmt file also has the line** `$basetexture "tile/ceiling_tile01"` **so it is most certainly in the wrong place**  
  
**since the original mod has the correct files at** `materials/tile/ceiling_tile01.(vtf|vmt)`  
**these are not pink and not referenced by the game so should just be removed**  
```
materials/plaster/ceiling_tile01.vmt
materials/plaster/ceiling_tile01.vtf
```
---
**this file is both the vanilla texture (not pink), but also in the wrong place**  
**it should be in** `materials/tile/ceilingtileb.(vtf|vmt)`  
**the original game files have no material of this path**  
**while the original game files do have a material of the path** `materials/tile/ceilingtileb.vmt`  
**the vmt file also has the line** `$basetexture "tile/ceilingtileb"` **so it is most certainly in the wrong place**  

**the original mod also has the correct files at** `materials/tile/ceilingtileb.(vtf|vmt)`  
**these are not pink and not referenced by the game so should just be removed**  
```
materials/plaster/ceilingtileb.vmt
materials/plaster/ceilingtileb.vtf
```
---
**this file is the vanilla texture (not pink)**  
**however the pink version of this texture is present in this mod at the path** `materials/tile/ceilingtiles*.(vmt|vtf)`  
**the vmt file** `materials/tile/ceilingtiles01.vmt` **has the line** `$basetexture "plaster/ceilingtiles01"`  
**this means that the files present at** `materials/tile/ceilingtiles*.(vmt|vtf)` **should be moved to** `materials/plaster/ceilingtiles*.(vmt|vtf)`  

**these files are also only present in the original game files at** `materials/plaster/ceilingtiles*.(vmt|vtf)`  
**these files should be deleted and the files that are from this mod that are present at** `materials/tile/ceilingtiles*.(vmt|vtf)` **should be moved here**  
```
materials/plaster/ceilingtiles-ssbump.vtf
materials/plaster/ceilingtiles01_cheap.vmt
materials/plaster/ceilingtiles01.vmt
materials/plaster/ceilingtiles01.vtf
```
---
**this file is the original texture (not pink)**  
```
materials/sewage/urban_sewagescum01.vmt
materials/sewage/urban_sewagescum01.vtf
```
---
**these files are pink, but in the wrong place**  
**it should be in** `materials/plaster/ceilingtiles01*.(vmt|vtf)`  

**these files should be moved to** `materials/plaster/ceilingtiles01*.(vmt|vtf)`  
```
materials/tile/ceilingtiles01_cheap.vmt
materials/tile/ceilingtiles01.vmt
materials/tile/ceilingtiles01.vtf
```
---
**this file is the original texture (not pink)**  
```
materials/wood/woodsiding_ext_02.vmt
materials/wood/woodsiding_ext_02.vtf
```

