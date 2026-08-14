/////////////////////////////////////////
////      NOTES FOR TRANSLATORS      ////
/////////////////////////////////////////
////
//// to make a translation of the mod,  
//// copy and paste this en.nut file to a new file
//// name the file the 2 letter abbreviation for your language (for example, japanese -> jp)
//// rename the table entry it creates, for english the table it creates will be ::BhopLang.EN,
//// for japanese, the table will be ::BhopLang.JP
////
//// then translate each string to be in your language
//// the %%...%% entries indicate a variable value
//// this value could be a color code (in the case of the %%OLIVE_GREEN%%, %%ORANGE%%, etc entries)
//// or a variable value (for example, %%NAME%% or %%LEADERBOARD_SLOT%%)
//// place these in the string in places where they make sense, do not translate the text between the %%, just move them
////
//// keep the `if (!("BhopLang" in ...` code in your file
////
//// then, create a new file in the path scripts/vscripts/director_base_addon.nut
//// then add a single line `IncludeScript("path/to/your/language.nut")`  (without the starting "scripts/vscripts/")
//// i recommend putting your language file in the directory "scripts/vscripts/bhop_lang/"
////
//// you can then package this into your own VPK file to use or publish  (if you are publishing a translation, it would be best to comment on the mod so i can link to your mod in the description)
////
//// alternatively, you could contact me (elitezrule2) on steam so that i can add your translation to the mod officially
////
//// also, remember to also translate the language file for Meow Vscript Utilities
////
//// this file is not strictly needed, but for a complete translation translating meow vscript utilities as well would be best
////
//// the meow vscript utilities EN file is saved in meow_vscript_utils.vpk/scripts/vscripts/meowlib/lang/en.nut
////
//// the procedure is the same as with translating Meow Bhop Detect
////
//// remember, if you want to set this language as the default on your server,
//// change the Language entry inside of DefaultPlayerSettings in the config.json (located at "Left 4 Dead 2/left4dead2/ems/meow_bhop_detect/config.json")
//// you can also change your language with the !bhop language command in game, for example "!bhop language en"
////
/////////////////////////////////////////
/////////////////////////////////////////
/////////////////////////////////////////





if (!("BhopLang" in getroottable()))
	::BhopLang <- {};




::BhopLang.EN <-
{
	Leaderboard = 
	{
		HeaderText					= "server leaderboard:",
		Entry						= "  %%LEADERBOARD_SLOT%%: %%NAME%% %%TIME_STRING%% score: %%SCORE%%, bhops: %%NUM_BHOPS%%, top speed: %%TOP_SPEED%%, avg speed: %%AVG_SPEED%%",
		NoBhopsTracked				= "no bhops tracked!"
	}

	SessionLeaderboard =
	{
		HeaderText					= "session leaderboard:",
		Entry						= "  %%LEADERBOARD_SLOT%%: %%NAME%% score: %%SCORE%%, bhops: %%NUM_BHOPS%%, top speed: %%TOP_SPEED%%, avg speed: %%AVG_SPEED%%",
		NoBhopsTracked				= "no bhops tracked this session!"
	}

	Misc =
	{
		Introduction				= "hello %%NAME%%! you seem to be new to MeowBhopDetect!\n"+
									  "enter \"%%OLIVE_GREEN%%%%PREFIX%% help%%WHITE%%\" to see the help command, and do \"%%OLIVE_GREEN%%%%PREFIX%% toggle%%WHITE%%\" to enable/disable me!",

		PerfectJump					= "perfect jump! speed=%%SPEED_PERFECTJUMP%%"
	}

	Banned =
	{
		Introduction				= "for your attention: i regret to inform you of the following,\n"+
									  "you are currently %%ORANGE%%BANNED%%WHITE%%, your achievements will not be %%ORANGE%%ACKNOWLEDGED%%WHITE%%"
	}

	BhopAnnounce = 
	{
		InARowSingular				= "%%NAME%% got %%NUM_BHOPS%% bunnyhop in a row (score: %%SCORE%%, top speed: %%TOP_SPEED%%, avg speed: %%AVG_SPEED%%)",
		InARowMultiple				= "%%NAME%% got %%NUM_BHOPS%% bunnyhops in a row (score: %%SCORE%%, top speed: %%TOP_SPEED%%, avg speed: %%AVG_SPEED%%)",
		Time						= "%%NAME%% bhopped for %%DURATION%% straight!",
		FirstRecord					= "%%NAME%% got their first bunnyhop record!",
		BeatPB						= "%%NAME%% beat their bunnyhop record! %%SCORE_DIFFERENCE%% points!",
		BeatSessionPB				= "%%NAME%% beat their session bunnyhop record! %%SCORE_DIFFERENCE%% points!"
	}

	Errors =
	{
		Generic						= "ERROR: %%ERROR%%",
		CantFindPlayer				= "ERROR: cant find player!"
	}

	Commands =
	{
		stats = 
		{
			Brief					= "show your bhop stats, supply name for others' stats",
			Help					= "show your bhop stats, supply name for others' stats. player name is case insensitive. put the players name in quotes \"\" if they have a space in their name",

			Param_otherPlayer		= "the steam name of the other player. case insensitive",

			ErrorYouHaveNoStats		= "you have no stats tracked!",
			ErrorOtherHasNoStats	= "%%NAME%% has no stats tracked!",

			NormalMessage			= "stats for %%NAME%% - high score: %%SCORE%%, total distance bhopped: %%DISTANCE%%, total bhops: %%NUM_BHOPS%%, time spent bhopping: %%DURATION%%, highest velocity: %%TOP_SPEED%%",
			Banned					= "for your attention: i regret to inform you of the following,\n"+
									  "you are currently %%OLIVE_GREEN%%BANNED%%WHITE%%, your stats are not being %%ORANGE%%RECORDED%%WHITE%%"
		}

		leaderboard =
		{
			Brief					= "display the bhop leaderboard",

			Param_session			= "put any thing here to print the bhop leaderboard for this session"
		}

		settings =
		{
			Brief					= "see variable value or change a setting value",
			Help					= "supply the value parameter to set the value, otherwise print the value. to see/edit a sub value, seperate table/class indexes with a pipe \"|\".\nEX: \"%%PREFIX%% settings BunnyTickLeniency 3\"",
	
			Param_var				= "the path to the variable, seperated with pipes \"|\"",
			Param_value				= "the value to set the variable to. if this isnt supplied, it just prints the value",

			ErrorInvalidIndex		= "ERROR: invalid index!",
			ErrorInvalidKeyname		= "ERROR: couldnt find index for keyname %%KEYNAME%%",
			ErrorInputNotBool		= "ERROR: user input is not of bool type: %%USER_INPUT%%",
			ErrorOriginalType		= "ERROR: original value has invalid type: %%SQUIRREL_TYPE%%",
		
			SuccessShowValue		= "%%VARIABLE_PATH%% = %%VARIABLE_VALUE%%",
			SuccessSetValue			= "set variable %%VARIABLE_PATH%% to %%VARIABLE_VALUE%%"
		}

		rules =
		{
			Brief					= "see the variables related to bhop detection & scoring",

			Ruleset					= "current bhop ruleset:",
			TickRuleset				= "  %%OLIVE_GREEN%%tick leniency%%WHITE%%	: %%VARIABLE_VALUE%%",
			CountRuleset			= "  %%OLIVE_GREEN%%detection count%%WHITE%%	: %%VARIABLE_VALUE%%",
			VelRuleset				= "  %%OLIVE_GREEN%%min starting vel%%WHITE%%	: %%VARIABLE_VALUE%%",

			LengthRuleset			= "  %%OLIVE_GREEN%%bhop length count%%WHITE%%	: %%VARIABLE_VALUE%%"
		}

		toggle = 
		{
			Brief					= "toggle bhop announcing for you",
			Help					= "add the \"perfectjump\" parameter to disable perfectjump announcing",							// do not translate \"perfectjump\", its hard coded
			
			Param_type				= "type of thing to toggle. can either be nothing, \"all\", or \"perfectjump\"",					// do not translate \"perfectjump\", its hard coded

			TogglePerfectJumpOn		= "you will now be notified of your perfect jumps!",
			TogglePerfectJumpOff	= "you will no longer be notified of your perfect jumps!",
			
			ToggleModOn				= "you are no longer ignored by MeowBhopDetect!",
			ToggleModOff			= "you will now be ignored by MeowBhopDetect!"
		}

		about =
		{
			Brief					= "show information about bhop mod",

			Callback				= "MeowBhopDetect %%VERSION%%\n"+
									  "written by meowmeow, source code: %%OLIVE_GREEN%%https://github.com/meow6969/l4d2-things/tree/master/bunnyhop_detect%%WHITE%%\n"+
									  "a fork of simple bunnyhop detect by mt2, link: %%OLIVE_GREEN%%https://steamcommunity.com/sharedfiles/filedetails/?id=2256379828%%WHITE%%"
		}

		prefix =
		{
			Brief					= "change the prefix used for commands",
			
			Param_prefix			= "the new prefix the mod will use",

			ErrorPrefixSpace		= "prefix cant have a space",

			SuccessfullyChanged		= "bhop detector prefix changed from %%OLD_PREFIX%%->%%PREFIX%%"
		}

		removescore =
		{
			Brief					= "remove a score from the leaderboard",

			Param_player			= "the name or steam ID of the player who made the score",
			
			ErrorPlayerHasNoBhop	= "ERROR: player has no tracked bhop!",
			
			Confirmation			= "found bhop for player %%NAME%% steamid=%%STEAMID%%, bhops=%%NUM_BHOPS%%, score=%%SCORE%%, date=%%TIME_STRING%%"+
									  "are you sure you want to delete this score? Enter %%OLIVE_GREEN%%\"YES\"%%WHITE%% to delete.",	// do not translate the \"YES\", its hard coded
			
			FollowupFailed			= "you did not say %%OLIVE_GREEN%%\"YES\"%%WHITE%%, will not be doing anything.",					// do not translate the \"YES\", its hard coded
			FollowupSuccess			= "player %%NAME%% has had their bhop scores removed"
		}

		ban =
		{
			Brief					= "ban a player from leaderboards and bhop announcing",
			
			Param_player			= "the name or steam ID of the player you want to ban",

			ErrorAlreadyBanned		= "ERROR: player is already banned",

			SuccessfullyBanned		= "player %%NAME%%, steamid=%%STEAMID%% has been banned"
		}

		unban =
		{
			Brief					= "unban a player from leaderboards and bhop announcing",

			Param_player			= "the name or steam ID of the player you want to unban",

			ErrorPlayerNotBanned	= "ERROR: player is not banned",

			SuccessfullyUnbanned	= "player %%NAME%%, steamid=%%STEAMID%% has been unbanned"
		}

		language =
		{
			Brief					= "show languages, or change the language for you",
			
			Param_language			= "the language you want to set the mod to. leave blank to show available languages",

			ErrorInvalidLanguage	= "ERROR: the language %%LANGUAGE%% is not available",

			Callback				= "your language:		%%LANGUAGE%%\n"+
									  "available languages:	%%LANGUAGES%%",
			LanguageChanged			= "your language was successfully changed!"
		}
	}
}
