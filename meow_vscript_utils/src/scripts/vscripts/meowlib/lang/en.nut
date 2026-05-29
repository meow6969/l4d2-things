if (!("MeowUtilsLang" in getroottable()))
	::MeowUtilsLang <- {};

::MeowUtilsLang.EN =
{
	Errors =
	{
		InternalError			= "ERROR: internal error processing your command, %%ERROR%%"
		InternalFollowupError	= "ERROR: internal error processing your command followup, %%ERROR%%"
		InvalidAlias			= "ERROR: invalid alias %%ALIAS%%\n"+
								  "do \"%%PREFIX%% help\" for help"
		NoPermissionForCommand	= "ERROR: you do not have the permission to run this command"
		Cooldown				= "ERROR: this command is on cooldown! you have %%COOLDOWN%% seconds left"

		NotEnoughArgs			= "ERROR: not enough args, need %%MIN_ARGS%%, provided %%NUM_ARGS%%"
		TooManyArgs				= "ERROR: too many args, max %%MAX_ARGS%%, provided %%NUM_ARGS%%"
	}	

	Help =
	{
		Brief					= "show this text"
		Help					= "syntax: \"?\" means that a argument is not required, \"...\" means that a variable number of that argument can be passed"

		ParamCmd				= "the alias of the command you want information on"

		ErrorCantFindCommand	= "ERROR: could not find command by alias %%CMD_NAME%%"
		ErrorCantShowCommand	= "ERROR: you dont have access to view this command!"

		Arguments				= "arguments:"

		NoParamDescription		= "no description given"
		ParamDefaultValue		= "(default: %%VARIABLE_VALUE%%)"
	}
}
