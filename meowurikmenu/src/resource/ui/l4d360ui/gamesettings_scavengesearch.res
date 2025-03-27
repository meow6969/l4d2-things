"Resource/UI/GameSettings_ScavengeSearch.res"
{
	"GameSettings"
	{
		"ControlName"				"Frame"
		"fieldName"					"GameSettings"
		"xpos"						"0"
		"ypos"						"0"
		"wide"						"f0"
		"tall"						"260"
		"autoResize"				"0"
		"pinCorner"					"0"
		"visible"					"1"
		"enabled"					"1"
		"tabPosition"				"0"
	}
	
	"ImgBackground"
	{
		"ControlName"			"L4DMenuBackground"
		"fieldName"				"ImgBackground"
		"xpos"					"0"
		"ypos"					"179"
		"zpos"					"-1"
		"wide"					"f0"
		"tall"					"144"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"1"		
		"enabled"				"1"
		"tabPosition"			"0"
		"fillColor"				"0 0 0 0"
	} 
		
	"ImgLevelImage"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"ImgLevelImage"
		"xpos"					"c55"//thumb_x
		"ypos"					"115"//thumb_y
		"wide"					"218"//thumb_width
		"tall"					"109"//thumb_height
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"maps/any"
		"scaleImage"			"1"
	}
	"ImgLevelImageFrame"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"ImgLevelImageFrame"
		"xpos"					"c55"//frame_x
		"ypos"					"115"//frame_y
		"wide"					"218"//frame_width
		"tall"					"109"//frame_height
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"urikgamemenu/campaignFrame"
		"scaleImage"			"1"
	}
	
	// Campaign dropdown
	"DrpMission"
	{
		"ControlName"			"DropDownMenu"
		"fieldName"				"DrpMission"
		"xpos"					"c-250"	
		"ypos"					"115"
		"zpos"					"1"
		"wide"					"280"  [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"wide"					"350"  [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"tall"					"15"			
		"visible"				"1"
		"enabled"				"1"
		"navUp"					"BtnCancel"		
		"navDown"				"DrpMissionExtended"
		
		//button and label
		"BtnDropButton"
		{
			"ControlName"					"L4D360HybridButton"
			"fieldName"						"BtnDropButton"
			"xpos"							"0"
			"ypos"							"0"
			"zpos"							"2"
			"wide"							"280"  [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"wide"					"350"  [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
			"wideatopen"					"160" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
			"wideatopen"					"180" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]//wideatopen
			"tall"							"15"	
			"autoResize"					"1"
			"pinCorner"						"0"
			"visible"						"1"
			"enabled"						"1"
			"tabPosition"					"0"
			"labelText"						"#L4D360UI_GameSettings_Mission"
			"tooltiptext"					"#L4D360UI_GameSettings_Tooltip_Mission"
			"disabled_tooltiptext"			"#L4D360UI_GameSettings_Tooltip_Mission_Disabled"
			"style"							"DropDownButton"
			"command"						"FlmMissionScavenge"
		}
	}
	
	// Campaign flyout	
	"FlmMissionScavenge"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmMissionScavenge"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"4"
		"InitialFocus"			"BtnCampaign1"
		"ResourceFile"			"resource/UI/L4D360UI/DropDownMissionScavenge.res"
	}
	
	"DrpMissionExtended"
	{
		"ControlName"			"DropDownMenu"
		"fieldName"				"DrpMissionExtended"
		"xpos"					"c-250"  [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"xpos"					"c-298"  [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"ypos"					"115"		
		"zpos"					"1"
		"wide"					"280"  [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"wide"					"350"  [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"tall"					"15"		
		"visible"				"0"
		"enabled"				"1"
		"navUp"					"DrpMission"
		"navDown"				"DrpChapter"
		
		//button and label
		"BtnDropButton"
		{
			"ControlName"					"L4D360HybridButton"
			"fieldName"						"BtnDropButton"
			"xpos"							"0"
			"ypos"							"0"
			"zpos"							"2"
			"wide"							"280"  [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"wide"					"350"  [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
			"wideatopen"					"160" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
			"wideatopen"					"180" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]//wideatopen
			"tall"							"15"		
			"autoResize"					"1"
			"pinCorner"						"0"
			"visible"						"1"
			"enabled"						"1"
			"tabPosition"					"0"
			"labelText"						"#L4D360UI_GameSettings_Mission"
			"tooltiptext"					"#L4D360UI_GameSettings_Tooltip_Mission"
			"disabled_tooltiptext"			"#L4D360UI_GameSettings_Tooltip_Mission_Disabled"
			"style"							"DropDownButton"
			"command"						"FlmMissionScavengeExtended"
		}
	}
	
	"FlmMissionScavengeExtended"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmMissionScavengeExtended"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"4"
		"InitialFocus"			"BtnCampaign1"
		"ResourceFile"			"resource/UI/L4D360UI/DropDownMissionScavengeExtended.res"
	}
	// Chapter Dropdown
	"DrpChapter"
	{
		"ControlName"			"DropDownMenu"
		"fieldName"				"DrpChapter"
		"xpos"					"c-250"  [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"xpos"					"c-298"  [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"ypos"					"135"		
		"zpos"					"1"
		"wide"					"280"  [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"wide"					"350"  [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"tall"					"15"		
		"visible"				"1"
		"enabled"				"1"
		"navUp"					"DrpMissionExtended"
		"navDown"				"BtnCreateLobby"
		
		//button and label
		"BtnDropButton"
		{
			"ControlName"					"L4D360HybridButton"
			"fieldName"						"BtnDropButton"
			"xpos"							"0"
			"ypos"							"0"
			"zpos"							"2"
			"wide"							"280"  [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"wide"					"350"  [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
			"wideatopen"					"160" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
			"wideatopen"					"180" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]//wideatopen
			"tall"							"15"	
			"autoResize"					"1"
			"pinCorner"						"0"
			"visible"						"1"
			"enabled"						"1"
			"tabPosition"					"0"
			"labelText"						"#L4D360UI_GameSettings_Chapter"
			"tooltiptext"					"#L4D360UI_GameSettings_Tooltip_Chapter"
			"disabled_tooltiptext"			"#L4D360UI_GameSettings_Tooltip_Chapter_Disabled"
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
	"BtnCreateLobby"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnCreateLobby"
		"xpos"					"c-250"  [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"xpos"					"c-298"  [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"ypos"					"155"		
		"zpos"					"0"
		"wide"					"220"  [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"wide"					"350"  [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]//createlobby
		"tall"					"15"		
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"navUp"					"DrpChapter"
		"navDown"				"BtnJoinAnywhere"
		"labelText"				"#L4D360UI_Join_Create"
		"tooltiptext"			"#L4D360UI_GameSettings_Tooltip_Create_Lobby"
		"disabled_tooltiptext"	"#L4D360UI_GameSettings_Tooltip_Create_Lobby"
		"style"					"DefaultButton"
		"command"				"Create"
		EnabledTextInsetX		"2"
		DisabledTextInsetX		"2"
		FocusTextInsetX			"2"
		OpenTextInsetX			"2"
	}
	
    "IconForwardArrow_JoinAny"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconForwardArrow_JoinAny"
		"xpos"					"c-268"  [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"xpos"					"c-316"  [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"ypos"					"175"	
		"wide"					"15" 	
		"tall"					"15" 	
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
	"BtnJoinAnywhere"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnJoinAnywhere"
		"xpos"					"c-250"  [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"xpos"					"c-298"  [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"ypos"					"175"	
		"zpos"					"0"
		"wide"					"220"  [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"wide"					"335"  [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]//btnswithicons
		"tall"					"15"		
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"navUp"					"BtnCreateLobby"
		"navDown"				"BtnJoinStart"
		"labelText"				"#L4D360UI_Join_Anywhere"
		"tooltiptext"			"#L4D360UI_GameSettings_Tooltip_Join_Anywhere"
		"disabled_tooltiptext"	"#L4D360UI_GameSettings_Tooltip_Join_Anywhere_Disabled"
		"style"					"DefaultButton"
		"command"				"JoinAny"
		EnabledTextInsetX		"2"
		DisabledTextInsetX		"2"
		FocusTextInsetX			"2"
		OpenTextInsetX			"2"
	}
	
	"IconForwardArrow_JoinStart"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconForwardArrow_JoinStart"
		"xpos"					"c-268"  [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"xpos"					"c-316"  [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"ypos"					"195"	
		"wide"					"15" 	
		"tall"					"15" 	
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
	"BtnJoinStart"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnJoinStart"
		"xpos"					"c-250"  [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"xpos"					"c-298"  [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"ypos"					"195"		
		"zpos"					"0"
		"wide"					"220"  [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"wide"					"335"  [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]//btnswithicons
		"tall"					"15"		
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"1"
		"wrap"					"1"
		"navUp"					"BtnJoinAnywhere"
		"navDown"				"BtnCancel"			
		"labelText"				"#L4D360UI_Join_At_Start"
		"tooltiptext"			"#L4D360UI_GameSettings_Tooltip_Join_At_Start"
		"disabled_tooltiptext"	"#L4D360UI_GameSettings_Tooltip_Join_At_Start_Disabled"
		"style"					"DefaultButton"
		"command"				"Done"
		EnabledTextInsetX		"2"
		DisabledTextInsetX		"2"
		FocusTextInsetX			"2"
		OpenTextInsetX			"2"
	}
	"IconBackArrow" 
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconBackArrow"
		"xpos"					"c-268"  [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"xpos"					"c-316"  [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"ypos"					"215"
		"wide"					"15"
		"tall"					"15"
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
	"BtnCancel" 
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnCancel"
		"xpos"					"c-250"  [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"xpos"					"c-298"  [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"ypos"					"215"
		"zpos"					"0"
		"wide"					"220"  [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"wide"					"335"  [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]//btnswithicons
		"tall"					"15"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"0"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"navUp"					"BtnJoinStart"
		"navDown"				"DrpMission"
		"labelText"				"#L4D360UI_Back_Caps"
		"tooltiptext"			"#L4D360UI_Tooltip_Back"
		"style"					"DefaultButton"
		"command"				"Back"
		EnabledTextInsetX		"2"
		DisabledTextInsetX		"2"
		FocusTextInsetX			"2"
		OpenTextInsetX			"2"
	}
}
