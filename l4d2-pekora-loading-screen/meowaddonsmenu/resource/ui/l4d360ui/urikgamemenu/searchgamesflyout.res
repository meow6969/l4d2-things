"Resource/UI/SearchGames.res"
{
	"PnlBackground"
	{
		"ControlName"			"Panel"
		"fieldName"				"PnlBackground"
		"xpos"					"0"
		"ypos"					"0"
		"zpos"					"-1"
		"wide"					"270" //width//CustomMutations
		"tall"					"51"
		"visible"				"1"
		"enabled"				"1"
		"paintbackground"		"1"
		"paintborder"			"1"
	}

	"IconGameBrowser"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconGameBrowser"
		"xpos"					"7"
		"ypos"					"4"
		"wide"					"12"
		"tall"					"12"
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"icon_anymode"
		"frame"					"0"
		"drawcolor" "140 20 0 255" [$x360lodef]//xmas
		"drawcolor" "139 139 139 255"//icon_drawcolor
	}	

	"BtnGameBrowser"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnGameBrowser"
		"xpos"					"20"
		"ypos"					"2"
		"wide"					"150"
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"navUp"					"BtnServerBrowser"
		"navDown"				"BtnServerBrowser"
		"labelText"				"#L4D360UI_Any"
		"tooltiptext"			""
		"disabled_tooltiptext"	""
		"style"					"FlyoutMenuButton"
		"command"				"CustomMatch_"
	}

	"IconServerBrowser"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconServerBrowser"
		"xpos"					"7"
		"ypos"					"20"
		"wide"					"12"
		"tall"					"12"
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"serverbrowser"
		"frame"					"0"
		"drawcolor" "140 20 0 255" [$x360lodef]//xmas
		"drawcolor" "139 139 139 255"//icon_drawcolor
	}	

	"BtnServerBrowser"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnServerBrowser"
		"xpos"					"20"
		"ypos"					"24"
		"wide"					"150"
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"navUp"					"BtnGameBrowser"
		"navDown"				"BtnGameBrowser"
		"labelText"				"#L4D360UI_MainMenu_ServerBrowser"
		"tooltiptext"			""
		"disabled_tooltiptext"	""
		"style"					"FlyoutMenuButton"
		"command"				"OpenServerBrowser"
	}
}