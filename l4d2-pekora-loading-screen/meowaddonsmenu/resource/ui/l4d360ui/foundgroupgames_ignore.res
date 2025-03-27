"resource/UI/FoundGroupGames.res"
{
	"FoundGroupGames"	[$WIN32]
	{
		"ControlName"					"Frame"
		"fieldName"						"FoundGroupGames"
		"xpos"							"0"
		"ypos"							"0"
		"wide"							"f0"
		"tall"							"447"
		"autoResize"					"0"
		"pinCorner"						"0"
		"visible"						"1"
		"enabled"						"1"
		"tabPosition"					"0"
	}
	
	"ImgBackground" 	[$WIN32]
	{
		"ControlName"			"L4DMenuBackground"
		"fieldName"				"ImgBackground"
		"xpos"					"0"
		"ypos"					"119"
		"zpos"					"-1"
		"wide"					"f0"
		"tall"					"250"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"fillColor"				"0 0 0 0"
	}
	
	"ImgAvatarBG" 	[$WIN32]
	{
		"ControlName"			"Panel"
		"fieldName"				"ImgAvatarBG"
		"xpos"					"c105"
		"ypos"					"149"
		"zpos"					"0"
		"wide"					"18"
		"tall"					"18"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"0"
		"enabled"				"1"
		"tabPosition"			"0"
		"bgcolor_override"		"80 80 80 255"
	}
	
	"ImgSelectedAvatar" 	[$WIN32]
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"ImgSelectedAvatar"
		"xpos"					"c106"
		"ypos"					"150"
		"zpos"					"1"
		"wide"					"16"
		"tall"					"16"
		"visible"				"1"
		"bgcolor_override"		"255 255 255 255"
		"scaleImage"			"1"
	}
		
	"DrpSelectedPlayerName" 	[$WIN32]
	{
		"ControlName"			"DropDownMenu"
		"fieldName"				"DrpSelectedPlayerName"
		"xpos"					"c125"
		"ypos"					"150"
		"zpos"					"2"
		"wide"					"250"	[$WIN32WIDE]
		"wide"					"195"	[!$WIN32WIDE]
		"tall"					"16"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"BtnSelectedPlayerName"
		{
			"ControlName"		"L4D360HybridButton"
			"fieldName"			"BtnSelectedPlayerName"
			"xpos"				"0"
			"ypos" 				"0"
			"tall"				"15"
		"wide"					"250"	[$WIN32WIDE]
		"wide"					"195"	[!$WIN32WIDE]
			"visible"			"1"
			"enabled"			"1"
			"tabPosition"		"0"
			"style"				"MainMenuButton"
			"command"			"PlayerDropDown"
			"labelText"			""
		}
	}
	
	"FlmPlayerFlyout" 	[$WIN32]
	{
		"ControlName"		"FlyoutMenu"
		"fieldName"			"FlmPlayerFlyout"
		"visible"			"0"
		"wide"				"0"
		"tall"				"0"
		"zpos"				"3"
		"InitialFocus"		"BtnSendMessage"
		"resourceFile"		"resource/UI/L4D360UI/DropDownFoundGamesPlayer.res"
	}
	
	"FlmPlayerFlyout_NotFriend" 	[$WIN32]
	{
		"ControlName"		"FlyoutMenu"
		"fieldName"			"FlmPlayerFlyout_NotFriend"
		"visible"			"0"
		"wide"				"0"
		"tall"				"0"
		"zpos"				"3"
		"InitialFocus"		"BtnViewSteamID"
		"resourceFile"		"resource/UI/L4D360UI/DropDownFoundGamesPlayer_SteamGroup.res"
	}
					
	"ImgLevelBack"	[$WIN32]
	{
		"ControlName"			"Panel"
		"fieldName"				"ImgLevelBack"
		"xpos"					"c105"
		"ypos"					"171"
		"zpos"					"1"
		"wide"					"139"
		"tall"					"71"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"0"
		"enabled"				"1"
		"tabPosition"			"0"
		"bgcolor_override"		"80 80 80 255"
	}
	
	"ImgLevelImage"	[$WIN32]
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"ImgLevelImage"
		"xpos"					"c106"
		"ypos"					"172"
		"zpos"					"2"
		"wide"					"137"
		"tall"					"69"
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"0"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"maps/any"
		"scaleImage"			"1"
	}	
	
	"LblCampaign"	[$WIN32]
	{
		"ControlName"					"Label"
		"fieldName"						"LblCampaign"
		"xpos"							"c105"
		"ypos"							"246"
		"zpos"							"2"
		"wide"							"200"
		"tall"							"12"
		"autoResize"					"0"
		"pinCorner"						"0"
		"visible"						"1"
		"enabled"						"1"
		"tabPosition"					"0"
		"labelText"						""
		"textAlignment"					"north-west"
		"Font"							"DefaultMedium"
		"fgcolor_override"				"TextYellow"
	}
	
	"LblChapter"	[$WIN32]
	{
		"ControlName"					"Label"
		"fieldName"						"LblChapter"
		"xpos"							"c105"
		"ypos"							"257"
		"zpos"							"2"
		"wide"							"200"
		"tall"							"12"
		"autoResize"					"0"
		"pinCorner"						"0"
		"visible"						"0"
		"enabled"						"1"
		"tabPosition"					"0"
		"labelText"						""
		"textAlignment"					"north-west"
		"Font"							"DefaultMedium"
		"fgcolor_override"				"TextYellow"
	}

	"LblAuthor"		[$WIN32]
	{
		"ControlName"					"Label"
		"fieldName"					"LblAuthor"
		"xpos"						"c105"
		"zpos"						"2"
		"ypos"						"268"
		"wide"						"200"
		"tall"						"12"
		"autoResize"					"0"
		"pinCorner"					"0"
		"visible"					"0"
		"enabled"					"1"
		"tabPosition"					"0"
		"labelText"					""
		"textAlignment"					"north-west"
		"Font"						"DefaultMedium"
		"fgcolor_override"				"TextYellow"
	}
	
	"LblGameStatus"	[$WIN32]
	{
		"ControlName"					"Label"
		"fieldName"						"LblGameStatus"
		"xpos"							"c105"
		"ypos"						"279"
		"zpos"							"2"
		"wide"							"200"
		"tall"							"12"
		"autoResize"					"0"
		"pinCorner"						"0"
		"visible"						"0"
		"enabled"						"1"
		"tabPosition"					"0"
		"labelText"						""
		"textAlignment"					"north-west"
		"Font"							"DefaultMedium"
		"fgcolor_override"				"TextYellow"
	}
	
	"LblPlayerAccess"	[$WIN32]
	{
		"ControlName"					"Label"
		"fieldName"						"LblPlayerAccess"
		"xpos"							"c105"
		"ypos"						"290"
		"zpos"							"2"
		"wide"							"200"
		"tall"							"12"
		"autoResize"					"0"
		"pinCorner"						"0"
		"visible"						"0"
		"enabled"						"1"
		"tabPosition"					"0"
		"labelText"						""
		"textAlignment"					"north-west"
		"Font"							"DefaultMedium"
		"fgcolor_override"				"TextYellow"
	}
	
	"LblGameDifficulty"	[$WIN32]
	{
		"ControlName"					"Label"
		"fieldName"						"LblGameDifficulty"
		"xpos"							"c105"
		"ypos"							"301"
		"zpos"							"2"
		"wide"							"200"
		"tall"							"12"
		"autoResize"					"0"
		"pinCorner"						"0"
		"visible"						"0"
		"enabled"						"1"
		"tabPosition"					"0"
		"labelText"						""
		"textAlignment"					"north-west"
		"Font"							"DefaultMedium"
		"fgcolor_override"				"TextYellow"
	}
	
	"LblNumPlayers"	[$WIN32]
	{
		"ControlName"					"Label"
		"fieldName"						"LblNumPlayers"
		"xpos"							"c105"
		"ypos"							"312"
		"zpos"							"2"
		"wide"							"200"
		"tall"							"12"
		"autoResize"					"0"
		"pinCorner"						"0"
		"visible"						"0"
		"enabled"						"1"
		"tabPosition"					"0"
		"labelText"						""
		"textAlignment"					"north-west"
		"Font"						"DefaultMedium"
		"fgcolor_override"				"TextYellow"
	}
	
	"LblNewVersion"	[$WIN32]
	{
		"ControlName"					"Label"
		"fieldName"					"LblNewVersion"
		"xpos"						"c105"
		"ypos"						"322"
		"zpos"						"2"
		"wide"						"200"
		"tall"						"12"
		"autoResize"					"0"
		"pinCorner"					"0"
		"visible"					"0"
		"enabled"					"1"
		"tabPosition"					"0"
		"labelText"					"#L4D360UI_FoundGames_DownloadNewVersion"
		"textAlignment"					"north-west"
		"Font"						"DefaultMedium"
		"fgcolor_override"				"TextYellow"
	}
	
	"BtnWebsite"	[$WIN32]
	{
		"ControlName"					"L4D360HybridButton"
		"fieldName"					"BtnWebsite"
		"xpos"						"c105"
		"ypos"						"333"
		"zpos"						"2"
		"wide"						"200"
		"tall"						"15"
		"autoResize"					"0"
		"pinCorner"					"0"
		"visible"					"0"
		"enabled"					"1"
		"tabPosition"					"0"
		"command"					"DownloadSelected"
		"labelText"					""
		"textAlignment"					"north-west"
		"style"						"MediumButton"
	}

	"IconForwardArrow"	[$WIN32]
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconForwardArrow"
		"xpos"					"c90"
		"ypos"					"346"
		"wide"					"13"
		"tall"					"13"
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"0"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"icon_button_arrow_right"
		"drawcolor" "140 20 0 255" [$x360lodef]//xmas
		"drawcolor" "139 139 139 255"//icon_drawcolor
		"scaleImage"			"1"
	}

	"BtnJoinSelected" 	[$WIN32]
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnJoinSelected"
		"xpos"					"c105"
		"ypos"					"345"
		"zpos"					"2"
		"wide"					"180"  [!$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"wide"					"120"  [$ENGLISH || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"tall"					"15"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"0"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"labelText"				"#L4D360UI_FoundGames_JoinGame"
		"tooltiptext"			"#L4D360UI_JoinGame"
		"style"					"RedMainButton"
		"command"				"JoinSelected"
		EnabledTextInsetX		"2"
		DisabledTextInsetX		"2"
		FocusTextInsetX			"2"
		OpenTextInsetX			"2"
		"navLeft"				"DrpCreateGame"
		"navUp"					"GplGames"
	}
		
	"BtnDownloadSelected" 	[$WIN32]
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnDownloadSelected"
		"xpos"					"c105"
		"ypos"					"345"
		"zpos"					"2"
		"wide"					"f0"//full
		"wide"					"235"  [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"wide"					"165"  [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"tall"					"15"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"0"
		"enabled"				"0"
		"tabPosition"			"0"
		"wrap"					"1"
		"labelText"				"#L4D360UI_FoundGames_DownloadAddon"
		"tooltiptext"			"#L4D360UI_FoundGames_Join_Download"
		"style"					"RedMainButton"
		"command"				"DownloadSelected"
		EnabledTextInsetX		"2"
		DisabledTextInsetX		"2"
		FocusTextInsetX			"2"
		OpenTextInsetX			"2"
		"navLeft"				"DrpCreateGame"
		"navUp"					"GplGames"
	}
		
	"SearchingIcon"	[$WIN32]
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"SearchingIcon"
		"xpos"					"c128"				
		"ypos"					"16"
		"zpos"					"2"
		"wide"					"108"
		"tall"					"54"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"scaleImage"			"1"
		//"image"					"urikgamemenu_xmas/searching_animation_xmas" [$x360lodef]//xmas
		"image"					"urikgamemenu/searching_animation"
	}
			
	"LblNoGamesFound"	[$WIN32]
	{
		"ControlName"					"Label"
		"fieldName"						"LblNoGamesFound"
		"xpos"							"c-180"
		"ypos"							"125"
		"wide"							"380"
		"tall"							"20"
		"zpos"							"2"
		"autoResize"					"0"
		"pinCorner"						"0"
		"visible"						"1" 
		"enabled"						"1"
		"tabPosition"					"0"
		"labelText"						""	//"No Campaign Games Found"
		"textAlignment"					"west"
		"Font"							"DefaultBold"
	}

	"LblSearching"	[$WIN32]
	{
		"ControlName"					"Label"
		"fieldName"						"LblSearching"
		"xpos"							"c-180"
		"ypos"							"38"
		"zpos"							"0"
		"wide"							"370"
		"tall"							"195"
		"zpos"							"2"
		"autoResize"					"0"
		"pinCorner"						"0"
		"visible"						"0" 
		"enabled"						"1"
		"tabPosition"					"0"
		"labelText"						""
		"Font"							"FrameTitle"
	}
	
	"Divider1"	[$WIN32]
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"Divider1"
		"xpos"					"c-305"
		"ypos"					"149"
		"zpos"					"1"
		"wide"					"370"
		"tall"					"2"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"divider_urik"
		"drawcolor"				"050 050 050 255"
		"scaleImage"			"1"
	}
	
	"Divider2"	[$WIN32]
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"Divider2"
		"xpos"					"c-305"
		"ypos"					"317"
		"zpos"					"1"
		"wide"					"370"
		"tall"					"2"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"divider_urik"
		"drawcolor"				"050 050 050 255"
		"scaleImage"			"1"
	}
	
	
	"GplGames"	[$WIN32]
	{
		"ControlName"					"GenericPanelList"
		"fieldName"						"GplGames"

		"xpos"							"c-273"		
		"ypos"							"149"
		"zpos"							"0"

		"wide"							"350"		
		"tall"							"170"
		"autoResize"					"1"
		"pinCorner"						"0"
		"visible"						"1"
		"enabled"						"1"
		"tabPosition"					"0"
		"bgcolor_override" 				"32 32 255 255"
		"NoWrap"						"1"
		"panelBorder"					"0"
		"navRight"						"BtnJoinSelected"
		"navLeft"						"DrpCreateGame"
		"navDown"						"DrpCreateGame"
	}
			
	"DrpCreateGame"	[$WIN32]
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"DrpCreateGame"

		"xpos"					"c-180" 

		"ypos"					"330" 
		"wide"					"500"	 [$GERMAN]//createlobby

		"tall"					"15" 
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"0"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		EnabledTextInsetX		"2"	
		DisabledTextInsetX		"2"	
		FocusTextInsetX			"2"	
		OpenTextInsetX			"2"	
		"navRight"				"BtnJoinSelected" 
		"navLeft"				"GplGames" 
		"navUp"					"GplGames" 
		"navDown"				"BtnCancel" 
		//button and label
		"labelText"				"#L4D360UI_GameSettings_Create_Lobby"

		"style"					"MainMenuButton" 
		"command"				"CreateGame"

	}

	"FlmCreateLobby"	[$WIN32]
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCreateLobby"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnStartCampaign"
		"resourceFile"			"resource/UI/L4D360UI/CreateLobbyFlyout.res"
	}
    "IconBackArrow" 	[$WIN32]
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconBackArrow"
		"xpos"					"c-195"
		"ypos"					"346"
		"wide"					"13"
		"tall"					"13"
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"icon_button_arrow_left"
		"drawcolor" "140 20 0 255" [$x360lodef]//xmas
		"drawcolor" "139 139 139 255"//icon_drawcolor
		"scaleImage"			"1"
	}

	"BtnCancel" 	[$WIN32]
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnCancel"
		"ypos"					"345"
		"xpos"					"c-180"
		"zpos"					"1"
		"wide"					"180"
		"tall"					"15"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"labelText"				"#L4D360UI_Back_Caps"
		"tooltiptext"			"#L4D360UI_Tooltip_Back"
		"style"					"MainMenuButton"
		"command"				"Back"
		EnabledTextInsetX		"2"
		DisabledTextInsetX		"2"
		FocusTextInsetX			"2"
		OpenTextInsetX			"2"
		"navRight"				"BtnJoinSelected"
		"navLeft"				"GplGames"
		"navUp"					"DrpCreateGame"
	}	
	
	"GameDetailsBackground"	[$WIN32]
	{
		"ControlName"			"ImagePanel"
		"fieldName"			"GameDetailsBackground"
		"xpos"				"c90"
		"ypos"				"c-121"
		"zpos"				"-1"
		"wide"				"300"
		"tall"				"249" 
		"autoResize"			"0"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"			"0"
		"fillColor"			"0 0 0 130"
	}
	
	"GameListBackground"	[$WIN32]
	{
		"ControlName"			"ImagePanel"
		"fieldName"			"GameDetailsBackground"
		"xpos"				"c-305"
		"ypos"				"149"
		"zpos"				"-1"
		"wide"				"370"
		"tall"				"169" 
		"autoResize"			"0"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"			"0"
		"fillColor"			"0 0 0 200"
	}
}