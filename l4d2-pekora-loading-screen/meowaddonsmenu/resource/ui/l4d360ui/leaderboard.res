"Resource/UI/Leaderboard.res"
{

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
		"image"				"urikgamemenu_xmas/snowflakes_main"
		"scaleimage"			"1"
		"zpos"				"-20"//snow_zpos
	}
	"Leaderboard"
	{
		"ControlName"					"Frame"
		"fieldName"						"Leaderboard"
		"xpos"							"0"
		"ypos"							"0"
		"wide"							"f0"
		"tall"							"450" 
		"autoResize"					"0"
		"pinCorner"						"0"
		"visible"						"1"
		"enabled"						"1"
		"tabPosition"					"0"
	}

	"ImgLevelImage"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"ImgLevelImage"
		"xpos"					"c-242"
		"ypos"					"137"
		"wide"					"160"
		"tall"					"80"
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"maps/any"
		"scaleImage"			"1"
	}
	"ImgLevelLargeImageFrame"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"ImgLevelLargeImageFrame"
		"xpos"					"c-242"
		"ypos"					"137"
		"wide"					"160"
		"tall"					"80"
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"urikgamemenu/campaignFrame"
		"scaleImage"			"1"
	}		
	"LblMapName"
	{
		"ControlName"			"Label"
		"fieldName"				"LblMapName"
		"xpos"					"c-245"
		"ypos"					"105"
		"zpos"					"2"
		"wide"					"139"
		"tall"					"30"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"labelText"				""
		"textAlignment"			"center"
		"Font"					"Default"
	}

	"SearchingIcon"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"SearchingIcon"
		"xpos"					"c166"
		"ypos"					"16"
		"zpos"					"2"
		"wide"					"108"
		"tall"					"54"
		"pinCorner"				"0"
		"visible"				"0"
		"enabled"				"1"
		"tabPosition"			"0"
		"scaleImage"			"1"
		"image"					"urikgamemenu/searching_animation"
	}
		
	// Column headers
	
	"LblRankHeader"
	{
		"ControlName"			"Label"
		"fieldName"				"LblRankHeader"
		"xpos"					"c-62"
		"ypos"					"105"
		"zpos"					"2"
		"wide"					"100"
		"tall"					"30"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"labelText"				"#L4D360UI_Leaderboard_Rank"
		"textAlignment"			"west"
		"Font"					"Default"
	}
	
	"LblGamerTagHeader"
	{
		"ControlName"			"Label"
		"fieldName"				"LblGamerTagHeader"
		"xpos"					"c26"
		"ypos"					"105"
		"zpos"					"2"
		"wide"					"200"
		"tall"					"30"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"labelText"				"#L4D360UI_Leaderboard_Gamertag"
		"textAlignment"			"west"
		"Font"					"Default"
	}
	
	"LblTimeHeader"
	{
		"ControlName"			"Label"
		"fieldName"				"LblTimeHeader"
		"xpos"					"c182"
		"ypos"					"105"
		"zpos"					"2"
		"wide"					"100"
		"tall"					"30"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"labelText"				"#L4D360UI_Leaderboard_Time"
		"textAlignment"			"west"
		"Font"					"Default"
	}
	
	// top line
	"ImgTopDivider"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"ImgTopDivider"
		"xpos"					"c-100"
		"ypos"					"125"
		"zpos"					"-1"
		"wide"					"370"
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
	"ImgBottomDivider"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"ImgBottomDivider"
		"xpos"					"c-100"
		"ypos"					"434"
		"zpos"					"-1"
		"wide"					"370"
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
			
	"LblNoEntriesFound"
	{
		"ControlName"					"Label"
		"fieldName"						"LblNoEntriesFound"
		"xpos"							"c-50"
		"ypos"							"130" 
		"wide"							"290"
		"tall"							"60"
		"zpos"							"2"
		"autoResize"					"0"
		"pinCorner"						"0"
		"visible"						"1" 
		"enabled"						"1"
		"tabPosition"					"0"
		"labelText"						"#L4D360UI_Leaderboard_No_Times"
		"textAlignment"					"west"
		"Font"							"Default"
		"wrap"							"1"
	}
	
	"PanelList"
	{
		"ControlName"			"GenericPanelList"
		"fieldName"				"PanelList"
		"xpos"					"c-110"
		"ypos"					"126"	
		"zpos"					"0"
		"wide"					"390"
		"tall"					"310"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"bgcolor_override" 		"32 32 32 255"
		"NoWrap"				"1"
		"panelBorder"			"2"
		"navRight"				"BtnJoinSelected"
		"navLeft"				"DrpCreateGame"	
		"navDown"				"DrpCreateGame"	
	}

	"ImgGoldMedal"
	{
		"ControlName"					"ImagePanel"
		"fieldName"						"ImgGoldMedal"
		"xpos"							"c-244"
		"ypos"							"c-12"
		"zpos"							"2"
		"wide"							"20"
		"tall"							"20"
		"pinCorner"						"0"
		"visible"						"1"
		"enabled"						"1"
		"tabPosition"					"0"
		"image"							"hud/survival_medal_gold"
		"scaleImage"					"1"
	}

	"LblGoldMedalTime"
	{
		"ControlName"					"Label"
		"fieldName"						"LblGoldMedalTime"
		"xpos"							"c-220"
		"ypos"							"c-12"
		"wide"							"50"
		"tall"							"20"
		"zpos"							"2"
		"autoResize"					"0"
		"pinCorner"						"0"
		"visible"						"1" 
		"enabled"						"1"
		"tabPosition"					"0"
		"labelText"						"0:00"
		"textAlignment"					"west"
		"Font"							"Default"
	}
	
	"ImgSilverMedal"
	{
		"ControlName"					"ImagePanel"
		"fieldName"						"ImgSilverMedal"
		"xpos"							"c-244"
		"ypos"							"c5"
		"zpos"							"2"
		"wide"							"20"
		"tall"							"20"
		"pinCorner"						"0"
		"visible"						"1"
		"enabled"						"1"
		"tabPosition"					"0"
		"image"							"hud/survival_medal_silver"
		"scaleImage"					"1"
	}
	
	"LblSilverMedalTime"
	{
		"ControlName"					"Label"
		"fieldName"						"LblSilverMedalTime"
		"xpos"							"c-220"
		"ypos"							"c5"
		"wide"							"50"
		"tall"							"20"
		"zpos"							"2"
		"autoResize"					"0"
		"pinCorner"						"0"
		"visible"						"1" 
		"enabled"						"1"
		"tabPosition"					"0"
		"labelText"						"0:00"
		"textAlignment"					"west"
		"Font"							"Default"
	}
	
	"ImgBronzeMedal"
	{
		"ControlName"					"ImagePanel"
		"fieldName"						"ImgBronzeMedal"
		"xpos"							"c-244"
		"ypos"							"c22"
		"zpos"							"2"
		"wide"							"20"
		"tall"							"20"
		"pinCorner"						"0"
		"visible"						"1"
		"enabled"						"1"
		"tabPosition"					"0"
		"image"							"hud/survival_medal_bronze"
		"scaleImage"					"1"
	}
	
	"LblBronzeMedalTime"
	{
		"ControlName"					"Label"
		"fieldName"						"LblBronzeMedalTime"
		"xpos"							"c-220"
		"ypos"							"c22"
		"wide"							"50"
		"tall"							"20"
		"zpos"							"2"
		"autoResize"					"0"
		"pinCorner"						"0"
		"visible"						"1" 
		"enabled"						"1"
		"tabPosition"					"0"
		"labelText"						"0:00"
		"textAlignment"					"west"
		"Font"							"Default"
	}
	
	// Campaign dropdown
	"DrpMission"
	{
		"ControlName"			"DropDownMenu"
		"fieldName"				"DrpMission"
		"xpos"					"c-283"
		"ypos"					"290"
		"zpos"					"1"
		"wide"					"214"
		"tall"					"15"
		"visible"				"1"
		"enabled"				"1"
		"navUp"					"BtnExit"
		"navDown"				"DrpChapter"
		
		//button and label
		"BtnDropButton"
		{
			"ControlName"					"L4D360HybridButton"
			"fieldName"						"BtnDropButton"
			"xpos"							"0"
			"ypos"							"0"
			"zpos"							"2"
			"wide"							"214"
			"wideatopen"					"150"
			"tall"							"15"
			"autoResize"					"1"
			"pinCorner"						"0"
			"visible"						"1"
			"enabled"						"1"
			"tabPosition"					"0"
			"labelText"						"#L4D360UI_GameSettings_Mission"
			"tooltiptext"					"#L4D360UI_Leaderboard_Tooltip_Mission"
			"disabled_tooltiptext"			""
			"style"							"DropDownButton"
			"command"						"FlmMissionSurvival"
		}
	}
	
	// Survival flyout	
	"FlmMissionSurvival" [$WIN32]
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmMissionSurvival"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"4"
		"InitialFocus"			"BtnCampaign1"
		"ResourceFile"			"resource/UI/L4D360UI/DropDownMissionSurvivalLeaderboard.res"
	}
	
	// Chapter Dropdown
	"DrpChapter"
	{
		"ControlName"			"DropDownMenu"
		"fieldName"				"DrpChapter"
		"xpos"					"c-283"
		"ypos"					"305"
		"zpos"					"1"
		"wide"					"214"
		"tall"					"15"
		"visible"				"1"
		"enabled"				"1"
		"navUp"					"DrpMission"
		"navDown"				"BtnFindServer"
		
		//button and label
		"BtnDropButton"
		{
			"ControlName"					"L4D360HybridButton"
			"fieldName"						"BtnDropButton"
			"xpos"							"0"
			"ypos"							"0"
			"zpos"							"2"
			"wide"							"214"
			"wideatopen"					"150"
			"tall"							"15"
			"autoResize"					"1"
			"pinCorner"						"0"
			"visible"						"1"
			"enabled"						"1"
			"tabPosition"					"0"
			"labelText"						"#L4D360UI_GameSettings_Chapter"
			"tooltiptext"					"#L4D360UI_Leaderboard_Tooltip_Chapter"
			"disabled_tooltiptext"			""
			"style"							"DropDownButton"
			"command"						""
		}
	}
	
	//flyouts		
	"FlmChapterXXautogenerated"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmChapterFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"4"
		"InitialFocus"			"BtnChapter1"
		"ResourceFile"			"resource/UI/L4D360UI/DropDownChapter.res"
	}
	"IconForwardArrow"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconForwardArrow"
		"xpos"					"c-302" [$WIN32WIDE]
		"xpos"					"c-299" [!$WIN32WIDE]
		"ypos"					"331"
		"wide"					"14"       
		"tall"					"14"
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"icon_button_arrow_right"
		"drawcolor" "140 20 0 255" [$x360lodef]//xmas
		"drawcolor" "139 139 139 255"//icon_drawcolor
		"scaleImage"			"1"
	}
	"BtnFindServer"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnFindServer"
		"command"				"FindGameForThisChapter"
		"xpos"					"c-283"
		"ypos"					"330"
		"wide"					"214"
		"tall"					"15"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"navUp"					"DrpChapter"
		"navDown"				"BtnExit"
		"tooltiptext"			"#L4D360UI_Leaderboard_Join_Game_Tip"
		"disabled_tooltiptext"	"#L4D360UI_Leaderboard_Join_Game_Tip_Disabled"
		"labelText"				"#L4D360UI_Leaderboard_Join_Game"
		"style"					"MainMenuSmallButton"
		"allcaps"				"1"
	}
	
	
	"IconBackArrow"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconBackArrow"
		"xpos"					"c-302" [$WIN32WIDE]
		"xpos"					"c-299" [!$WIN32WIDE]		
		"ypos"					"346"
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
	
	"BtnExit"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnExit"
		"command"				"Exit"
		"xpos"					"c-283"
		"ypos"					"345"
		"wide"					"180"
		"tall"					"15"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"navUp"					"BtnFindServer"
		"navDown"				"DrpMission"
		"tooltiptext"			""
		"labelText"				"#L4D360UI_Back_Caps"
		"style"					"MainMenuSmallButton"
	}
	
	"FlmPlayerFlyout"
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
	
	"FlmPlayerFlyout_NotFriend"
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
}