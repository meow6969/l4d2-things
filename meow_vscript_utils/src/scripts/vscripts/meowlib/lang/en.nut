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

::MeowUtilsLang.EN <-
{
	Errors =
	{
		Internal					= "ERROR: internal error processing your command, %%ERROR%%",
		InternalFollowup			= "ERROR: internal error processing your command followup, %%ERROR%%",
		InvalidAlias				= "ERROR: invalid alias %%ALIAS%%\n"+
									  "do \"%%PREFIX%% help\" for help",
		InvalidPermissions			= "ERROR: you do not have the permission to run this command",
		Cooldown					= "ERROR: this command is on cooldown! you have %%COOLDOWN%% seconds left",

		NotEnoughArgs				= "ERROR: not enough args, need %%MIN_ARGS%%, provided %%NUM_ARGS%%",
		TooManyArgs					= "ERROR: too many args, max %%MAX_ARGS%%, provided %%NUM_ARGS%%"
	}	

	Commands =
	{
		// the name of the 0th index of the alias of the command
		help =
		{
			Brief					= "show this text",
			Help					= "syntax: \"?\" means that a argument is not required, \"...\" means that a variable number of that argument can be passed",
	
			Param_cmd				= "the alias of the command you want information on",
	
			ErrorCantFindCommand	= "ERROR: could not find command by alias %%CMD_NAME%%",
			ErrorCantShowCommand	= "ERROR: you dont have access to view this command!",
	
			Arguments				= "arguments:",
	
			NoParamDescription		= "no description given",
			ParamDefaultValue		= "(default: %%VARIABLE_VALUE%%)"
		}
	}
}
