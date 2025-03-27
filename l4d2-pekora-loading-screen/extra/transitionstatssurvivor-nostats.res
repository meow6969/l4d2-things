"Resource/UI/TransitionStatsSurvivor.res"
{
	// https://steamcommunity.com/sharedfiles/filedetails/?id=2063045394 taken from here
	"transition_stats"
	{
		"ControlName"	"CTransitionStatsPanel"
		"fieldName"		"transition_stats"
		"xpos"			"0"
		"ypos"			"0"
		"wide"			"f0"
		"tall"			"f0"
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"	"0"
		
		"statpanel_y_in_vsmode"		"220"
	}

	"HeaderBackground"
	{
		"ControlName"	"Panel"
		"fieldName"		"HeaderBackground"
		"wide"			"0"
		"tall"			"0"
		"visible"		"0"
		"enabled"		"0"
	}
	
	"HeaderBorder"
	{
		"ControlName"	"Panel"
		"fieldName"		"HeaderBorder"
		"wide"			"0"
		"tall"			"0"
		"visible"		"0"
		"enabled"		"0"
	}

	"ClockIcon"
	{
		"ControlName"	"CIconPanel"
		"fieldName"		"ClockIcon"
		"wide"			"0"
		"tall"			"0"
		"visible"		"0"
		"enabled"		"0"
	}
	
	"Splat"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"Splat"
		"xpos"			"0"
		"ypos"			"0"
		"zpos"			"-1"
		"wide"			"f0"
		"tall"			"f0"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"
		"autoResize"	"1"
		"pinCorner"		"1"
		"image"			"common/loading_background"
		"zpos"			"-1"
	}
	
	"WorkingAnim"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"WorkingAnim"
		"xpos"					"c-100"
		"ypos"					"15"
		"zpos"					"5"
		"wide"					"50"
		"tall"					"50"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"usetitlesafe"			"1"
		"scaleImage"			"1"
		"image"					"common/l4d_spinner"
		"frame"					"0"
	}
	
	"WorkingAnim_Custom"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"WorkingAnim_Custom"
		"xpos"					"c-100"
		"ypos"					"15"
		"zpos"					"5"
		"wide"					"50"
		"tall"					"50"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"usetitlesafe"			"1"
		"scaleImage"			"1"
		"image"					"common/l4d_spinner"
		"frame"					"0"
	}
	
	"LoadingText_Custom"
	{
		"ControlName"			"Label"
		"fieldName"				"LoadingText_Custom"
		"xpos"					"c-40"
		"ypos"					"20"
		"zpos"					"5"
		"wide"					"120"
		"tall"					"40"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"Font"					"SurvivalNumbers"
		"labelText"				"Loading"
		"textAlignment"			"west"
		"usetitlesafe"			"1"
	}
	
	"LoadingText"
	{
		"ControlName"			"Label"
		"fieldName"				"CheckpointCleared"
		"wide"			"0"
		"tall"			"0"
		"visible"		"0"
		"enabled"		"0"
	}

	"CheckpointCleared"
	{
		"ControlName"			"Label"
		"fieldName"				"CheckpointCleared"
		"wide"			"0"
		"tall"			"0"
		"visible"		"0"
		"enabled"		"0"
	}

	"NextMap"
	{
		"ControlName"			"Label"
		"fieldName"				"NextMap"
		"xpos"					"c-250"
		"ypos"					"75"
		"wide"					"500"
		"tall"					"12"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"textAlignment"			"center"
		"dulltext"				"0"
		"brighttext"			"0"
		"wrap"					"0"
		"fgcolor_override"		"MediumGray"
		"font"					"Default"
		"usetitlesafe"			"1"
	}

	"SurvivorHighlightStatsPanel"
	{
		"ControlName"		"DontAutoCreate"
		"fieldName"			"SurvivorHighlightStatsPanel"
		"xpos"				"c-220"
		"ypos"				"125"
		"zpos"				"-2"
		"wide"				"440"
		"tall"				"190"
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
		"autoresize"		"0"
		"paintbackground"	"0"
	}
		
	"CVersusModeResults"
	{
		"ControlName"	"CVersusModeResults"
		"fieldName"		"VersusModeResults"
		"xpos"			"c-182"
		"ypos"			"115"
		"wide"			"364"
		"tall"			"120"
		"visible"		"1"
		"enabled"		"1"
	}

	"FooterBackground"
	{
		"ControlName"		"Panel"
		"fieldName"			"FooterBackground"
		"wide"			"0"
		"tall"			"0"
		"visible"		"0"
		"enabled"		"0"
	}
	
	"FooterBorder"
	{
		"ControlName"		"Panel"
		"fieldName"			"FooterBorder"
		"wide"			"0"
		"tall"			"0"
		"visible"		"0"
		"enabled"		"0"
	}

	"TipPanel"
	{
		"fieldName"			"TipPanel"
		"wide"			"0"
		"tall"			"0"
		"visible"		"0"
		"enabled"		"0"
	}
}
