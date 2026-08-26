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
//// i recommend putting your language file in the directory "scripts/vscripts/meow_bhop_detect/bhop_lang/" 
////
//// you can then package this into your own VPK file to use or publish  (if you are publishing a translation, it would be best to comment on the mod so i can link to your mod in the description)
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




::BhopLang.ES <-
{
	Leaderboard = 
	{
		HeaderText					= "Ranking del servidor:",
		// Entry						= "  %%LEADERBOARD_SLOT%%: %%NAME%% %%TIME_STRING%% Puntos: %%SCORE%%, bhops: %%NUM_BHOPS%%, Vel. max: %%TOP_SPEED%%, Vel. promedia: %%AVG_SPEED%%",
		Entry						= "  %%LEADERBOARD_SLOT%%: %%NAME%% %%TIME_STRING%%",
		NoBhopsTracked				= "no se han encontrado bhops!"
	}

	SessionLeaderboard =
	{
		HeaderText					= "Ranking de la sesión:",
		// Entry						= "  %%LEADERBOARD_SLOT%%: %%NAME%% Puntos: %%SCORE%%, bhops: %%NUM_BHOPS%%, Vel. max: %%TOP_SPEED%%, Vel. promedia: %%AVG_SPEED%%",
		Entry						= "  %%LEADERBOARD_SLOT%%: %%NAME%%",
		NoBhopsTracked				= "no se han encontrado bhops en esta sesión!"
	}

	Misc =
	{
		Introduction				= "hola %%NAME%%! pareces ser nuevo / nueva a MeowBhopDetect!\n"+
									  "escribe \"%%OLIVE_GREEN%%%%PREFIX_NO_QUOTES%% help%%WHITE%%\" para ver la lista de comandos, y haz \"%%OLIVE_GREEN%%%%PREFIX_NO_QUOTES%% toggle%%WHITE%%\" para deshabilitarme/habilitarme!",

		PerfectJump					= "Salto perfecto! Vel=%%SPEED_PERFECTJUMP%%"
	}

	Banned =
	{
		Introduction				= "Lamento informarte de lo siguiente,\n"+
									  "Ahora mismo tu estas %%ORANGE%%BANEADO%%WHITE%%, tus logros no seran %%ORANGE%%RECONOCIDOS%%WHITE%%"
	}

	BhopAnnounce = 
	{
		// InARowSingular				= "%%NAME%% hizo %%NUM_BHOPS%% bunnyhop seguidos (puntos: %%SCORE%%, vel. max: %%TOP_SPEED%%, vel. promedia: %%AVG_SPEED%%)",
		InARowSingular				= "%%NAME%% hizo %%NUM_BHOPS%% bunnyhop seguidos",
		// InARowMultiple				= "%%NAME%% hizo %%NUM_BHOPS%% bunnyhops seguidos (puntos: %%SCORE%%, vel. max: %%TOP_SPEED%%, vel. promedia: %%AVG_SPEED%%)",
		InARowMultiple				= "%%NAME%% hizo %%NUM_BHOPS%% bunnyhops seguidos",

		Score						= "puntos: %%SCORE%%",
		TopSpeed					= "vel. max: %%TOP_SPEED%%",
		AvgSpeed					= "vel. promedia: %%AVG_SPEED%%",
		NumBhops					= "bhops: %%NUM_BHOPS%%",
		Map							= "mapa: %%MAP%%",

		Time						= "%%NAME%% bhopeo por %%DURATION%% seguido!",
		FirstRecord					= "%%NAME%% obtuvo su primer record de bunnyhop!",

		BeatPBScore					= "%%NAME%% vencio su record de bunnyhop! %%SCORE_DIFFERENCE%% puntos!",
		BeatPBVelocity				= "%%NAME%% vencio su record de bunnyhop! %%SCORE_DIFFERENCE%% velocidad!",
		BeatPBBhops					= "%%NAME%% vencio su record de bunnyhop! %%SCORE_DIFFERENCE%% bhops!",

		BeatSessionPBScore			= "%%NAME%% vencio su record de bunnyhop de esta sesión! %%SCORE_DIFFERENCE%% puntos!",
		BeatSessionPBVeloicty		= "%%NAME%% vencio su record de bunnyhop de esta sesión! %%SCORE_DIFFERENCE%% velocidad!",
		BeatSessionPBBhops			= "%%NAME%% vencio su record de bunnyhop de esta sesión! %%SCORE_DIFFERENCE%% bhops!"
	}

	Errors =
	{
		Generic						= "ERROR: %%ERROR%%",
		CantFindPlayer				= "ERROR: no se ha podido encontrar al jugador!"
	}

	Commands =
	{
		stats = 
		{
			Brief					= "muestra tus estadisticas de bhop, puedes revisar el de otros tambien.",
			Help					= "muestra tus estadisticas de bhop, introduce el nombre de otro usuario para ver las suyas. Respeta mayusculas y pon su nombre entre \"\" si tienen espacios en su nombre",

			Param_otherPlayer		= "el nombre de steam de otro jugador. respeta mayusculas",

			ErrorYouHaveNoStats		= "no se han encontrado estadisticas disponibles!",
			ErrorOtherHasNoStats	= "%%NAME%% no tiene estadisticas disponibles!",

			NormalMessage			= "estadisticas para %%NAME%% - puntaje mas alto: %%SCORE%%, distancia total bhopeada: %%DISTANCE%%, total bhops: %%NUM_BHOPS%%, tiempo bhopeando: %%DURATION%%, velocidad mas alta: %%TOP_SPEED%%",
			Banned					= "Lamento informarte de lo siguiente,\n"+
									  "Ahora mismo tu estas %%ORANGE%%BANEADO%%WHITE%%, tus logros no seran %%ORANGE%%RECONOCIDOS%%WHITE%%"
		}

		leaderboard =
		{
			Brief					= "Muestra el ranking de bhops",

			Param_session			= "pon cualquier cosa aqui para ver el ranking de bhops de esta sesión"
		}

		settings =
		{
			Brief					= "mira el valor de una variable o cambia una variable de configuración",
			Help					= "indica el parametro de la variable para asignar, de lo contrario la imprime. para ver/editar una sub-variable, separa table/class indexes con \"|\".\nEX: \"%%PREFIX_NO_QUOTES%% settings BunnyTickLeniency 3\"",
	
			Param_var				= "la ruta de la variable, separada con \"|\"",
			Param_value				= "el valor que se le asignara a la variable. si esto no se indica, simplemente imprimira su valor",

			ErrorInvalidIndex		= "ERROR: index invalido!",
			ErrorInvalidKeyname		= "ERROR: no se pudo encontrar index para %%KEYNAME%%",
			ErrorInputNotBool		= "ERROR: user input no es de bool type: %%USER_INPUT%%",
			ErrorInputNotArray		= "ERROR: La entrada del usuario no es de tipo arreglo/array: %%USER_INPUT%%",
			ErrorOriginalType		= "ERROR: valor original tiene tipo invalido: %%SQUIRREL_TYPE%%",
		
			SuccessShowValue		= "%%VARIABLE_PATH%% = %%VARIABLE_VALUE%%",
			SuccessSetValue			= "se le asigno a la variable %%VARIABLE_PATH%% como %%VARIABLE_VALUE%%"
		}

		rules =
		{
			Brief					= "mira las variables relacionados al bhop y al puntaje",

			Ruleset					= "Conjuntos de reglas de bhop:",
			TickRuleset				= "  %%OLIVE_GREEN%%tolerancia de tick%%WHITE%%	: %%VARIABLE_VALUE%%",
			CountRuleset			= "  %%OLIVE_GREEN%%cantidad de detección%%WHITE%%	: %%VARIABLE_VALUE%%",
			VelRuleset				= "  %%OLIVE_GREEN%%minima velocidad%%WHITE%%	: %%VARIABLE_VALUE%%",

			LengthRuleset			= "  %%OLIVE_GREEN%%bhop duración cuenta%%WHITE%%	: %%VARIABLE_VALUE%%"
		}

		toggle = 
		{
			Brief					= "habilita los anuncios de bhop para ti",
			Help					= "añade el parametro \"perfectjump\" para desactivar el anuncio de saltos perfectos",
			
			Param_type				= "tipo de cosa a habilitar. puede o ser nada, \"all\", o ser \"perfectjump\"",

			TogglePerfectJumpOn		= "ahora seras notificado de tus saltos perfectos!",
			TogglePerfectJumpOff	= "ya no se te notificara mas sobre tu saltos perfectos!",
			
			ToggleModOn				= "ya no estas siendo ignorado por MeowBhopDetect!",
			ToggleModOff			= "ahora seras ignorado por MeowBhopDetect!"
		}

		about =
		{
			Brief					= "muestra información sobre este mod de bhop",

			Callback				= "MeowBhopDetect %%VERSION%%\n"+
									  "Trabajo de meowmeow, codigo fuente: %%OLIVE_GREEN%%https://github.com/meow6969/l4d2-things/tree/master/bunnyhop_detect%%WHITE%%\n"+
									  "un fork de simple bunnyhop detect de mt2, link: %%OLIVE_GREEN%%https://steamcommunity.com/sharedfiles/filedetails/?id=2256379828%%WHITE%%"
		}

		prefix =
		{
			Brief					= "cambia el prefijo usado para los comandos",
			
			Param_prefix			= "el nuevo prefijo que el mod usara",

			ErrorPrefixSpace		= "el prefijo no puede tener un espacio",

			SuccessfullyChanged		= "prefijo de bhop detector cambiado desde %%OLD_PREFIX%%->%%PREFIX%%"
		}

		removescore =
		{
			Brief					= "borra un puntaje del ranking",

			Param_player			= "el nombre o Steam ID del jugador que realizo el putaje",
			
			ErrorPlayerHasNoBhop	= "ERROR: el jugador no tiene bhops registrados!",
			
			Confirmation			= "se encontro bhops para %%NAME%% steamid=%%STEAMID%%, bhops=%%NUM_BHOPS%%, puntos=%%SCORE%%, fecha=%%TIME_STRING%%\n"+
									  "estas seguro que quieres borrar este puntaje? Escribe %%OLIVE_GREEN%%\"YES\"%%WHITE%% para eliminar.",	// do not translate the \"YES\", its hard coded
			
			FollowupFailed			= "no indicaste %%OLIVE_GREEN%%\"YES\"%%WHITE%%, no se hara nada.",					// do not translate the \"YES\", its hard coded
			FollowupSuccess			= "El jugador %%NAME%% ha tenido su puntaje removido"
		}

		ban =
		{
			Brief					= "banea a un jugador del ranking y el anuncio de bhops",
			
			Param_player			= "el nombre o Steam ID del jugador que deseas banear",

			ErrorAlreadyBanned		= "ERROR: El jugador ya fue baneado",

			SuccessfullyBanned		= "El jugador %%NAME%%, steamid=%%STEAMID%% ha sido baneado."
		}

		unban =
		{
			Brief					= "desbanea a un jugador del ranking y el anuncio de bhops",

			Parama_player			= "el nombre o Steam ID del jugador que deseas desbanear",

			ErrorPlayerNotBanned	= "ERROR: El jugador no esta baneado",

			SuccessfullyUnbanned	= "El jugador %%NAME%%, steamid=%%STEAMID%% ha sido desbaneado"
		}

		language =
		{
			Brief					= "Muestra la lista de lenguajes, o cambia el lenguaje para ti",
			
			Param_language			= "El lenguaje que quieres que el mod utilice. dejalo en blanco para mostrar los lenguajes disponibles.",

			ErrorInvalidLanguage	= "ERROR: El lenguaje %%LANGUAGE%% no esta disponible",

			Callback				= "Tu lenguaje:			%%LANGUAGE%%\n"+
									  "Lenguajes disponibles:	%%LANGUAGES%%",
			LanguageChanged			= "Tu lenguaje fue cambiado exitosamente!"
		}
	}
}
