// TODO
//  * save PlayerSettings each in their own file  ---  DONE
//  * localization & multi language support       ---  idk if will ever be added ,, until i can think of elegant solution probably will not be added  -- DONE  !!!
//                                                ---  problems include: 
//                                                       ---  individual players should be able to select language
//                                                       ---  would have to create intuitive solution to inserting variables
//                                                       ---  this solution would almost certainly be incredibly unintuitive as itd be basically random what information can be included in a string depending on the execution context of the print and the type of message that is being outputted
//                                                       ---  cant think of a good way to send this information to the function
//                                                       ---  the BhopCommand architecture would have to be entirely reliant on it , making the entire thing weird and not as universal of a system
//                                                       ---  having user generated localizations would be incredibly difficult to support
//                                                       ---  i dont actually know any language other then english so i dont even have a good way to test the usefulness of the system in its applicability to other languages
//  * add a time tracker that gets shown on !bhop stats  -- DONE
//  * add comments to the config.json  -- DONE
//  * fix tick leniency thing  -- DONE
//  * clear perfect jump text when u fail perfect jump ? (idk if should do this? actually make it default false) -- DONE - on line ~1400
//  * achievements
//  * milestone achievements, for bhop count, velocity, "make it to leaderboard", etc
//     * achievement for getting long bhop chain on red hp
//  * combo counter with extra text
//     * https://cdn.discordapp.com/attachments/1485135356624900116/1506123900336078878/image.png
//     * cat themed extra text ?
//        * fang, scratch, claw, kitty, hiss, spitfur, pawstorm. purrfect
//     * make it user extensible ?
//  * fix comments with multiple lines  -- DONE
//  * make local server host automatically admin  -- DONE
//  * adapt bhop score based on the groundTime of each jump  

// this happens if the script is not running in l4d2
if (!("IncludeScript" in getroottable()))
{
	dofile("implement_l4d2_utils.nut", true);
}


IncludeScript("meow_bhop_detect/bhop_lang/en.nut");
IncludeScript("meow_bhop_detect/bhop_lang/es.nut");

IncludeScript("meowlib/json.nut");
IncludeScript("meowlib/commands.nut");
IncludeScript("meowlib/meowutils.nut");



IncludeScript("meow_bhop_detect/bhop_classes.nut");

printl("<bhop> loaded MeowBhopDetect script r"+::BhopClasses.BhopConfig.build_num+"  !!!")


::BhopVars <- ::BhopClasses.BhopConfig();


IncludeScript("meow_bhop_detect/bhop_funcs.nut");

IncludeScript("meow_bhop_detect/bhop_ents.nut");

IncludeScript("meow_bhop_detect/bhop_commands.nut");

IncludeScript("meow_bhop_detect/bhop_events.nut");




::BhopFunc.loadFile();
::BhopEnts.SpawnBhopEnts();

__CollectEventCallbacks(::BhopEvent, "OnGameEvent_", "GameEventCallbacks", RegisterScriptGameEventListener);


//printl(::BhopFunc.DurationToString(30));
//printl(::BhopFunc.DurationToString(3423432));
//printl(::BhopFunc.DurationToString(1555))


