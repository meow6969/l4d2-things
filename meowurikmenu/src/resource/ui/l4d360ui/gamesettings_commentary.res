"Resource/UI/GameSettings_Commentary.res"
{	
	"Tinsel1" [$x360lodef]//xmas
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"Tinsel1"
		"xpos"					"0"
		"ypos"					"r58"
		"wide"					"f0"
		"tall"					"53"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"			"1"
		"visible"			"0"
		"enabled"				"1"
		"tabPosition"			"0"
		"PaintBackgroundType"	"0"
		"image"				"urikgamemenu_xmas/xmas_tinsel_red"
		"scaleimage"			"1"
		"zpos"				"-9"//tinsel1_zpos
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
		"visible"			"1"
		"visible"			"0"
		"enabled"				"1"
		"tabPosition"			"0"
		"PaintBackgroundType"	"0"
		"image"				"urikgamemenu_xmas/snowflakes_main"
		"scaleimage"			"1"
		"zpos"				"-20"//snow_zpos
	}
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
		"xpos"					"c-250"  [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"xpos"					"c-298"  [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"ypos"					"115"
		"zpos"					"1"
		"wide"					"280"  [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"wide"					"350"  [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"tall"					"15"			
		"visible"				"1"
		"enabled"				"0"
		"navUp"					"BtnCancel"		
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
			"enabled"						"0"
			"tabPosition"					"0"
			"labelText"						"#L4D360UI_GameSettings_Mission"
			"tooltiptext"					"#L4D360UI_GameSettings_Tooltip_Mission"
			"disabled_tooltiptext"			"#L4D360UI_Extras_Commentary"
			"style"							"DropDownButton"
			"command"						"FlmMission"
		}
	}
	
	// Campaign flyout	
	"FlmMission"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmMission"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"4"
		"InitialFocus"			"BtnCampaign1"
		"ResourceFile"			"resource/UI/L4D360UI/DropDownMission.res"
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
		"navUp"					"DrpMission"
		"navDown"				"DrpDifficulty"
		
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
	// Difficulty dropdown
	"DrpDifficulty"
	{
		"ControlName"			"DropDownMenu"
		"fieldName"				"DrpDifficulty"
		"xpos"					"c-250"  [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"xpos"					"c-298"  [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"ypos"					"155"			
		"zpos"					"1"
		"wide"					"280"  [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"wide"					"350"  [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"tall"					"15"			
		"visible"				"1"
		"enabled"				"0"
		"navUp"					"DrpChapter"
		"navDown"				"DrpCharacter"
		
		// button and label
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
			"enabled"						"0"
			"tabPosition"					"0"
			"labelText"						"#L4D360UI_GameSettings_Difficulty"
			"tooltiptext"					"#L4D360UI_GameSettings_Tooltip_Difficulty"
			"disabled_tooltiptext"			"#L4D360UI_Extras_Commentary"
			"style"							"DropDownButton"
			"command"						"FlmDifficulty"
		}
	}
	// Difficulty flyout		
	"FlmDifficulty"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDifficulty"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"4"
		"InitialFocus"			"BtnNormal"
		"ResourceFile"			"resource/UI/L4D360UI/DropDownDifficulty.res"
	}
	
	// Character dropdown
	"DrpCharacter"
	{
		"ControlName"			"DropDownMenu"
		"fieldName"				"DrpCharacter"
		"xpos"					"c-250"	
		"ypos"					"175"		
		"zpos"					"1"
		"wide"					"280"  [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"wide"					"350"  [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"tall"					"15"		
		"visible"				"1"
		"enabled"				"1"
		"navUp"					"DrpDifficulty"
		"navDown"				"BtnStartGame"
		
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
			"labelText"						"#L4D360UI_GameSettings_Character"
			"tooltiptext"					"#L4D360UI_GameSettings_Tooltip_Character"
			"disabled_tooltiptext"			"#L4D360UI_GameSettings_Tooltip_Character_Disabled"
			"style"							"DropDownButton"
			"command"						"FlmCharacterFlyout"
		}
	}
	
	// Character flyout		
	"FlmCharacterFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCharacterFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"4"
		"InitialFocus"			"BtnRandom"
		"ResourceFile"			"resource/UI/L4D360UI/DropDownCharacters.res"
	}
	
	"IconForwardArrow"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconForwardArrow"
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
	"BtnStartGame"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnStartGame"
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
		"navUp"					"DrpCharacter"
		"navDown"				"BtnCancel"		
		"labelText"				"#L4D360UI_StartGame"
		"tooltiptext"			"#L4D360UI_GameSettings_Tooltip_StartGame"
		"disabled_tooltiptext"	"#L4D360UI_GameSettings_Tooltip_StartGame_Disabled"
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
		"navUp"					"BtnStartGame"
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
