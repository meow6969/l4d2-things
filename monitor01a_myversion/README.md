hello this is a slightly modified version of the mod \[monitor01a\] Gura and Ame  
you can download the original here: https://steamcommunity.com/sharedfiles/filedetails/?id=3234244361  
you should assume everything in the src/ directory (as well as ../monitor01a_myversion.vpk) is written by the authors of \[monitor01a\] Gura and Ame  
  
currently this  mod has a bug on linux that causes the textures not to be loaded properly  
this fixes it by renaming the folder in `/materials/starfelll/prop.monitor01a.watsonpc` to `/materials/starfelll/prop_monitor01a_watsonpc` as well as changing all the references  
   
i think the material loader on linux has problems when directories/files have multiple periods in the name  

