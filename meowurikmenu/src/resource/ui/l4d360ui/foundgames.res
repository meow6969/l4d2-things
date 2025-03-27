"Resource/UI/FoundGames.res"
{	
	"Tinsel1" [$x360lodef]//xmas
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"Tinsel1"
		"xpos"					"0"
		"ypos"					"r56"
		"wide"					"f0"
		"tall"					"53"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"1" [$x360lodef]//xmas
		"visible"				"0"
		"enabled"				"1"
		"tabPosition"			"0"
		"PaintBackgroundType"	"0"
		"image"					"urikgamemenu_xmas/xmas_tinsel_red"
		"scaleimage"			"1"
		"zpos"					"-9"//tinsel1_zpos
	}

	"Snowflakes" [$x360lodef]//xmas
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"Snowflakes"
		"xpos"					"0"
		"ypos"					"0"
		"wide"					"f0"
		"tall"					"f0"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"1" [$x360lodef]//xmas
		"visible"				"0"
		"enabled"				"1"
		"tabPosition"			"0"
		"PaintBackgroundType"	"0"
		"image"					"urikgamemenu_xmas/snowflakes_main"
		"scaleimage"			"1"
		"zpos"					"-20"//snow_zpos
	}
	"FoundGames"	[$WIN32]
	{
		"ControlName"					"Frame"
		"fieldName"						"FoundGames"
		"xpos"							"0"
		"ypos"							"0"
		"wide"							"f0"
		"tall"							"425"	
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
	
	
	"ImgSelectedAvatar" 	[$WIN32]
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"ImgSelectedAvatar"
		"xpos"					"c90"
		"ypos"					"105"
		"zpos"					"1"
		"wide"					"32"
		"tall"					"32"
		"visible"				"1"
		"bgcolor_override"		"255 255 255 255"
		"scaleImage"			"1"
	}
	
	"BtnQuickViewSteamID" 	[$WIN32]
	{
		"ControlName"			"Button"
		"fieldName"				"BtnQuickViewSteamID"
		"xpos"					"c90"
		"ypos"					"105"
		"zpos"					"2"
		"wide"					"32"
		"tall"					"32"
		"tabPosition"				"0"
		"Default"				"0"
		"selected"				"0"
		"autoResize"				"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"labelText"				""
		"tooltiptext"				""
		"defaultBgColor_override"		"0 0 0 100"
		"armedBgColor_override"		"0 0 0 0"
 		"depressedBgColor_override"	"0 0 0 0"
		"sound_armed"				"ui/buttonrollover.wav"
		"sound_depressed"			""
		"sound_released"			""
		"command"				"#L4D360UI_ViewSteamID"
		"paintborder"				"0"
	}
	
	"DrpSelectedPlayerName" 	[$WIN32]
	{
		"ControlName"			"DropDownMenu"
		"fieldName"				"DrpSelectedPlayerName"
		"xpos"					"c125"
		"ypos"					"112"
		"zpos"					"2"
		"wide"					"300"	[$WIN32WIDE]
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
		"wide"					"300"	[$WIN32WIDE]
		"wide"					"195"	[!$WIN32WIDE]
			"visible"			"1"
			"enabled"			"1"
			"tabPosition"		"0"
			"style"				"MediumButton"
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
		"ResourceFile"		"resource/UI/L4D360UI/DropDownFoundGamesPlayer.res"
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
		"ResourceFile"		"resource/UI/L4D360UI/DropDownFoundGamesPlayer_NotFriend.res"
	}
					
	"FlmPlayerFlyout_SteamGroup" 	[$WIN32]
	{
		"ControlName"		"FlyoutMenu"
		"fieldName"			"FlmPlayerFlyout_SteamGroup"
		"visible"			"0"
		"wide"				"0"
		"tall"				"0"
		"zpos"				"3"
		"InitialFocus"		"BtnViewSteamID"
		"ResourceFile"		"resource/UI/L4D360UI/DropDownFoundGamesPlayer_SteamGroup.res"
	}
					
	"LblCampaign"	[$WIN32]
	{
		"ControlName"					"Label"
		"fieldName"						"LblCampaign"
		"xpos"							"c90"	
		"ypos"							"235"	
		"zpos"							"2"
		"wide"							"200"
		"tall"							"18"
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
		
	"ImgLevelImage"	[$WIN32]
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"ImgLevelImage"
		"xpos"					"c90"	
		"ypos"					"142"	
		"wide"					"174"
		"tall"					"87"
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"0"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"maps/any"
		"scaleImage"			"1"
	}	
	"ImgFrame"	[$WIN32]
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"ImgFrame"
		"xpos"					"c83"	[$x360lodef]//xmas	
		"ypos"					"136"	[$x360lodef]//xmas	
		"wide"					"188"	[$x360lodef]//xmas
		"tall"					"99"	[$x360lodef]//xmas
		"xpos"					"c90"	
		"ypos"					"142"	
		"wide"					"174"
		"tall"					"87"
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"urikgamemenu_xmas/campaignframe_xmas" [$x360lodef]//xmas
		"image"					"urikgamemenu/campaignFrame"
		"scaleImage"			"1"
	}	
	"LblChapter"	[$WIN32]
	{
		"ControlName"					"Label"
		"fieldName"						"LblChapter"
		"xpos"							"c90"	
		"ypos"							"250"	
		"zpos"							"2"
		"wide"							"200"
		"tall"							"18"
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
		"fieldName"						"LblAuthor"
		"xpos"							"c90"
		"zpos"							"2"
		"ypos"							"265"
		"wide"							"200"
		"tall"							"18"
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
	
	"LblGameStatus"	[$WIN32]
	{
		"ControlName"					"Label"
		"fieldName"						"LblGameStatus"
		"xpos"							"c90"	
		"ypos"							"280"	
		"zpos"							"2"
		"wide"							"200"
		"tall"							"18"
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
		"xpos"							"c90"	
		"ypos"							"295"	
		"zpos"							"2"
		"wide"							"200"
		"tall"							"18"
		"autoResize"					"0"
		"pinCorner"						"0"
		"visible"						"0"
		"enabled"						"1"
		"tabPosition"					"0"
		"labelText"						""
		"textAlignment"					"north-west"
		"Font"							"DefaultMedium"
		"fgcolor_override"				"140 140 100 255"
	}
	
	"LblGameDifficulty"	[$WIN32]
	{
		"ControlName"					"Label"
		"fieldName"						"LblGameDifficulty"
		"xpos"							"c90"	
		"ypos"							"310"	
		"zpos"							"2"
		"wide"							"200"
		"tall"							"18"
		"autoResize"					"0"
		"pinCorner"						"0"
		"visible"						"0"
		"enabled"						"1"
		"tabPosition"					"0"
		"labelText"						""
		"textAlignment"					"north-west"
		"Font"							"DefaultMedium"
		"fgcolor_override"				"140 90 90 255"
	}
	
	"LblNumPlayers"	[$WIN32]
	{
		"ControlName"					"Label"
		"fieldName"						"LblNumPlayers"
		"xpos"							"c90"	
		"ypos"							"325"	
		"zpos"							"2"
		"wide"							"200"
		"tall"							"18"
		"autoResize"					"0"
		"pinCorner"						"0"
		"visible"						"0"
		"enabled"						"1"
		"tabPosition"					"0"
		"labelText"						""
		"textAlignment"					"north-west"
		"Font"							"DefaultMedium"
		"fgcolor_override"				"140 140 100 255"
	}
	"LblNewVersion"		[$WIN32]
	{
		"ControlName"					"Label"
		"fieldName"						"LblNewVersion"
		"xpos"							"c90"
		"ypos"							"375"
		"zpos"							"2"
		"wide"							"200"
		"tall"							"18"
		"autoResize"					"0"
		"pinCorner"						"0"
		"visible"						"0"
		"enabled"						"1"
		"tabPosition"					"0"
		"labelText"						"#L4D360UI_FoundGames_DownloadNewVersion"
		"textAlignment"					"north-west"
		"Font"							"DefaultMedium"
		"fgcolor_override"				"TextYellow"
	}
	
	"BtnWebsite" 	[$WIN32]
	{
		"ControlName"					"L4D360HybridButton"
		"fieldName"						"BtnWebsite"
		"xpos"							"c90"
		"ypos"							"360"
		"zpos"							"2"
		"wide"							"f0"
		"tall"							"15"
		"autoResize"					"0"
		"pinCorner"						"0"
		"visible"						"0"
		"enabled"						"1"
		"tabPosition"					"0"
		"command"						"DownloadSelected"
		"labelText"						""
		"textAlignment"					"north-west"
		"style"							"SmallButton"
	}
    
	"IconForwardArrow" 	[$WIN32]
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconForwardArrow"
		"xpos"					"c74"
		"ypos"					"346"
		"wide"					"14"
		"tall"					"14"
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
		"xpos"					"c90"
		"ypos"					"345"
		"zpos"					"2"
		"wide"					"200"
	//	"wide"					"180"  [(!$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE)]
	//	"wide"					"120"  [($ENGLISH || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE)]
		"tall"					"15"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"0"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"labelText"				"#L4D360UI_FoundGames_JoinGame"
		"tooltiptext"			"#L4D360UI_JoinGame"
		"style"					"MainMenuSmallButton"
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
		"xpos"					"c90"
		"ypos"					"345"
		"zpos"					"2"
		"wide"					"f0"//full
//		"wide"					"165"
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
		"image"					"urikgamemenu/searching_animation"
	}
		
	"LblNoGamesFound"	[$WIN32]
	{
		"ControlName"					"Label"
		"fieldName"						"LblNoGamesFound"
		"xpos"							"c0"		
		"ypos"							"-20"		
		"wide"							"380"
		"tall"							"20"
		"zpos"							"2"
		"autoResize"					"0"
		"pinCorner"						"0"
		"visible"						"0" 
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
		"xpos"							"c-320"		
		"ypos"							"38"		
		"zpos"							"0"
		"wide"							"380"		
		"tall"							"195"
		"zpos"							"2"
		"autoResize"					"0"
		"pinCorner"						"0"
		"visible"						"0" 
		"enabled"						"1"
		"tabPosition"					"0"
		"labelText"						""
		"textAlignment"					"center"
		"Font"							"MainBold"		
	}
	
	// top line
	"Divider1" 	[$WIN32]
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"Divider1"
		"xpos"					"c-320"
		"ypos"					"109"
		"zpos"					"-1"
		"wide"					"392"
		"tall"					"3"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"divider_urik"
		"drawcolor"				"050 050 050 255"
		"scaleImage"			"1"
	}
	
	// bottom line
	"Divider2" 	[$WIN32]
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"Divider2"
		"xpos"					"c-320"
		"ypos"					"358"
		"zpos"					"-1"
		"wide"					"392"
		"tall"					"3"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"divider_urik"
		"drawcolor"				"050 050 050 255"
		"scaleImage"			"1"
	}
	
	"DrpCreateGame"	[$WIN32]
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"DrpCreateGame"
		"xpos"					"c-250" 
		"ypos"					"375"	
		"wide"					"500"	 
		"tall"					"15"	
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
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
		"style"					"MainMenuSmallButton" 
		"command"				"CreateGame"
		"allcaps"				"1" 
	}
    "IconBackArrow" 	[$WIN32]
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconBackArrow"
		"xpos"					"c-268"
		"ypos"					"391"
		"wide"					"14"
		"tall"					"14"
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
		"xpos"					"c-250"
		"ypos"					"390"
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
		"style"					"MainMenuSmallButton"
		"command"				"Back"
		EnabledTextInsetX		"2"
		DisabledTextInsetX		"2"
		FocusTextInsetX			"2"
		OpenTextInsetX			"2"
		"navRight"				"BtnJoinSelected"
		"navLeft"				"GplGames"
		"navUp"					"DrpCreateGame"
	}	
	
	"GplGames"	[$WIN32]
	{
		"ControlName"					"GenericPanelList"
		"fieldName"						"GplGames"
		"xpos"							"c-320"		
		"ypos"							"110"		
		"zpos"							"0"
		"wide"							"392"		
		"tall"							"250"		
		"autoResize"					"1"
		"pinCorner"						"0"
		"visible"						"1"
		"enabled"						"1"
		"tabPosition"					"0"
		"bgcolor_override" 				"32 32 32 255"
		"NoWrap"						"1"
		"panelBorder"					"0"					
		"navRight"						"BtnJoinSelected"	
		"navLeft"						"DrpCreateGame"		
		"navDown"						"DrpCreateGame"		
	}
}