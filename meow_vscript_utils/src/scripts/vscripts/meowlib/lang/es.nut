/////////////////////////////////////////
////      NOTES FOR TRANSLATORS      ////
/////////////////////////////////////////
////
//// to make a translation of the mod,  
//// copy and paste this en.nut file to a new file
//// name the file the 2 letter abbreviation for your language (for example, japanese -> jp)
//// rename the table entry it creates, for english the table it creates will be ::BhopLang.EN,
//// for japanese, the table will be ::MeowUtilsLang.JP
////
//// then translate each string to be in your language
//// the %%...%% entries indicate a variable value
//// this value could be a color code (in the case of the %%OLIVE_GREEN%%, %%ORANGE%%, etc entries)
//// or a variable value (for example, %%NAME%% or %%COOLDOWN%%)
//// place these in the string in places where they make sense, do not translate the text between the %%, just move them
////
//// keep the `if (!("MeowUtilsLang" in ...` code in your file
////
//// then, create a new file in the path scripts/vscripts/director_base_addon.nut
//// then add a single line `IncludeScript("path/to/your/language.nut")` (without the starting "scripts/vscripts/")
//// i recommend putting your language file in the directory "scripts/vscripts/meowlib/lang/"
////
//// you can then package this into your own VPK file to use or publish  (if you are publishing a translation, it would be best to comment on the mod so i can link to your mod in the description)
////
///////////////////////////////////////////
///////////////////////////////////////////
///////////////////////////////////////////




if (!("MeowUtilsLang" in getroottable()))
	::MeowUtilsLang <- {};

::MeowUtilsLang.ES <-
{
	Errors =
	{
		Internal					= "ERROR: error interno procesando tu comando, %%ERROR%%",
		InternalFollowup			= "ERROR: error interno procesando el seguimiento de tu comando, %%ERROR%%",
		InvalidAlias				= "ERROR: alias invalido %%ALIAS%%\n"+
									  "haz \"%%PREFIX%% help\" para obtener ayuda",
		InvalidPermissions			= "ERROR: no tienes permiso para realizar este comando",
		Cooldown					= "ERROR: este comando se encuentra en cooldown! te faltan %%COOLDOWN%% segundos para poder realizarlo",

		NotEnoughArgs				= "ERROR: no son suficientes argumentos, se necesitan %%MIN_ARGS%%, se han dado %%NUM_ARGS%%",
		TooManyArgs					= "ERROR: demasiados argumentos, maximo %%MAX_ARGS%%, se han dado %%NUM_ARGS%%"
	}	

	Commands =
	{
		// the name of the 0th index of the alias of the command
		help =
		{
			Brief					= "muestra este texto",
			Help					= "syntax: \"?\" significa que un argumento no es requerido, \"...\" significa que se puede pasar una cantidad variable de esos argumentos.",
	
			Param_cmd				= "el alias del comando del que necesitas información",
	
			ErrorCantFindCommand	= "ERROR: no se pudo encontrar comando con alias %%CMD_NAME%%",
			ErrorCantShowCommand	= "ERROR: no tienes acceso para ver este comando!",
	
			Arguments				= "argumentos:",
	
			NoParamDescription		= "no hay descripción dada",
			ParamDefaultValue		= "(default: %%VARIABLE_VALUE%%)"
		}
	}
}
