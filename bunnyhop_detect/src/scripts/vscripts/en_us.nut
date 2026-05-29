::EN_US <-
{
	Leaderboard = 
	{
		HeaderText					= "server leaderboard:",
		BeginningPart				= "  %%LEADERBOARD_SLOT%%: %%NAME%% ",
		TimeString					= "%%TIME_STRING%%, ",
		BhopInfo					= "score: %%SCORE%%, bhops: %%NUM_BHOPS%%, top speed: %%TOP_SPEED%%, avg speed: %%AVG_SPEED%%"
	}

	SessionLeaderboard =
	{
		HeaderText					= "session leaderboard:",
		NoBhopsTracked				= "no bhops tracked this session!"
	}

	Misc =
	{
		Introduction				= "hello %%NAME%%! you seem to be new to MeowBhopDetect!\n"+
									  "enter \"%%OLIVE_GREEN%%%%PREFIX%% help%%WHITE%%\" to see the help command, and do \"%%OLIVE_GREEN%%!bhop toggle%%WHITE%%\" to enable/disable me!",

		PerfectJump					= "perfect jump! speed=%%SPEED_PERFECTJUMP%%"
	}

	Banned =
	{
		Introduction				= "for your attention: i regret to inform you of the following,\n"+
									  "you are currently %%ORANGE%%BANNED%%WHITE%%, your achievements will not be %%ORANGE%%ACKNOWLEDGED%%WHITE%%"
	}

	BhopAnnounce = 
	{
		InARowSinglular				= "%%NAME%% got %%NUM_BHOPS%% bunnyhop in a row (score: %%SCORE%%, top speed: %%TOP_SPEED%%, avg speed: %%AVG_SPEED%%)",
		InARowMultiple				= "%%NAME%% got %%NUM_BHOPS%% bunnyhops in a row (score: %%SCORE%%, top speed: %%TOP_SPEED%%, avg speed: %%AVG_SPEED%%)",
		Time						= "%%NAME%% bhopped for %%DURATION%% straight!",
		FirstRecord					= "%%NAME%% got their first bunnyhop record!",
		BeatPB						= "%%NAME%% beat their bunnyhop record! %%SCORE_DIFFERENCE%% points!",
		BeatSessionPB				= "%%NAME%% beat their session bunnyhop record! %%SCORE_DIFFERENCE%% points! "
	}

	Errors =
	{
		Generic						= "ERROR: %%ERROR%%",
		CantFindPlayer				= "ERROR: cant find player!"
	}

	Commands =
	{
		Stats = 
		{
			Brief					= "show your bhop stats, supply name for others' stats",
			Help					= "show your bhop stats, supply name for others' stats. player name is case insensitive. put the players name in quotes \"\" if they have a space in their name",

			ParamOtherPlayer		= "the steam name of the other player. case insensitive",

			ErrorYouHaveNoStats		= "you have no stats tracked!",
			ErrorOtherHasNoStats	= "%%NAME%% has no stats tracked!",

			NormalMessage			= "stats for %%NAME%% - high score: %%SCORE%%, total distance bhopped: %%DISTANCE%%, total bhops: %%NUM_BHOPS%%, time spent bhopping: %%DURATION%%, highest velocity: %%TOP_SPEED%%",
			Banned					= "for your attention: i regret to inform you of the following,\n"+
									  "you are currently %%OLIVE_GREEN%%BANNED%%WHITE%%, your stats are not being %%ORANGE%%RECORDED%%WHITE%%"
		}

		Leaderboard =
		{
			Brief					= "display the bhop leaderboard",
			ParamSession			= "put any thing here to print the bhop leaderboard for this session"
		}

		Settings =
		{
			Brief					= "see variable value or change a setting value",
			Help					= "supply the value parameter to set the value, otherwise print the value. to see/edit a sub value, seperate table/class indexes with a pipe \"|\".\nEX: \"!bhop settings BunnyTickLeniency 3\"",
	
			ParamVar				= "the path to the variable, seperated with pipes \"|\"",
			ParamValue				= "the value to set the variable to. if this isnt supplied, it just prints the value",

			ErrorInvalidIndex		= "ERROR: invalid index!",
			ErrorInvalidKeyname		= "ERROR: couldnt find index for keyname %%KEYNAME%%",
			ErrorInputNotBool		= "ERROR: user input is not of bool type: %%USER_INPUT%%",
			ErrorOriginalType		= "ERROR: original value has invalid type: %%SQUIRREL_TYPE%%",
		
			SuccessShowValue		= "%%VARIABLE_PATH%% = %%VARIABLE_VALUE%%",
			SuccessSetValue			= "set variable %%VARIABLE_PATH%% to %%VARIABLE_VALUE%%"
		}

		Rules =
		{
			Brief					= "see the variables related to bhop detection & scoring",

			Ruleset					= "current bhop ruleset:"+
									  "  %%OLIVE_GREEN%%tick leniency%%WHITE%%	: %%VARIABLE_VALUE%%"+
									  "  %%OLIVE_GREEN%%detection count%%WHITE%%	: %%VARIABLE_VALUE%%"+
									  "  %%OLIVE_GREEN%%min starting vel%%WHITE%%	: %%VARIABLE_VALUE%%",

			LengthRuleset			= "  %%OLIVE_GREEN%%bhop length count%%WHITE%%	: %%VARIABLE_VALUE%%"
		}

		Toggle = 
		{
			Brief					= "toggle bhop announcing for you",
			Help					= "add the \"perfectjump\" parameter to disable perfectjump announcing",
			
			ParamType				= "type of thing to toggle. can either be nothing, \"all\", or \"perfectjump\"",

			TogglePerfectJumpOn		= "you will now be notified of your perfect jumps!",
			TogglePerfectJumpOff	= "you will no longer be notified of your perfect jumps!",
			
			ToggleModOn				= "you are no longer ignored by MeowBhopDetect!",
			ToggleModOff			= "you will now be ignored by MeowBhopDetect!"
		}

		About =
		{
			Brief					= "show information about bhop mod",

			Callback				= "MeowBhopDetect %%VERSION%%"+
									  "written by meowmeow, source code: %%OLIVE_GREEN%%https://github.com/meow6969/l4d2-things/tree/master/bunnyhop_detect%%WHITE%%"+
									  "a fork of simple bunnyhop detect by mt2, link: %%OLIVE_GREEN%%https://steamcommunity.com/sharedfiles/filedetails/?id=2256379828%%WHITE%%"
		}

		Prefix =
		{
			Brief					= "change the prefix used for commands",
			
			ParamPrefix				= "the new prefix the mod will use",

			ErrorPrefixSpace		= "prefix cant have a space",

			SuccessfullyChanged		= "bhop detector prefix changed from %%PREFIX%%->%%PREFIX%%"
		}

		RemoveScore =
		{
			Brief					= "remove a score from the leaderboard",

			ParamPlayer				= "the name or steam ID of the player who made the score",
			
			ErrorPlayerHasNoBhop	= "ERROR: player has no tracked bhop!",
			
			Confirmation			= "found bhop for player %%NAME%% steamid=%%STEAMID%%, bhops=%%NUM_BHOPS%%, score=%%SCORE%%, date=%%TIME_STRING%%"+
									  "are you sure you want to delete this score? Enter %%OLIVE_GREEN%%\"YES\"%%WHITE%% to delete.",	// do not translate the \"YES\", its hard coded
			
			FollowupFailed			= "you did not say %%OLIVE_GREEN%%\"YES\"%%WHITE%%, will not be doing anything.",					// do not translate the \"YES\", its hard coded
			FollowupSuccess			= "player %%NAME%% has had their bhop scores removed"
		}

		Ban =
		{
			Brief					= "ban a player from leaderboards and bhop announcing",
			
			ParamPlayer				= "the name or steam ID of the player you want to ban",

			ErrorAlreadyBanned		= "ERROR: player is already banned",

			SuccessfullyBanned		= "player %%NAME%%, steamid=%%STEAMID%% has been banned"
		}

		Unban =
		{
			Brief					= "unban a player from leaderboards and bhop announcing",

			ParamPlayer				= "the name or steam ID of the player you want to unban",

			ErrorPlayerNotBanned	= "ERROR: player is not banned",

			SuccessfullyUnbanned	= "player %%NAME%%, steamid=%%STEAMID%% has been unbanned"
		}
	}
}
