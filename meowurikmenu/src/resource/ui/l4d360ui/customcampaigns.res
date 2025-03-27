"Resource/UI/L4D360UI/CustomCampaigns.res"
{
	"CustomCampaigns" //#L4D360UI_CustomCampaigns_FriendsTitle #L4D360UI_CustomCampaigns_SystemLinkTitle
	{
		"ControlName"	"Frame"
		"fieldName"		"CustomCampaigns"
		"xpos"			"0"		
		"ypos"			"0"		
		"wide"			"f0"	
		"tall"			"f0"	
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"	"0"
	}
	
	"Background_Panel"
	{
		"ControlName"			"EditablePanel"
		"fieldname"				"Background_Panel"
		"xpos"					"c-390"
		"ypos"					"5"
		"wide"					"775"
		"tall"					"470"
		"zpos"					"-11"
		"visible"				"1"
		"enabled"				"1"
		"bgcolor_override" 		"70 0 0 255" [$x360lodef]//xmas
		"bgcolor_override"		"20 20 20 255"
		"PaintBackgroundType"	"2"
	}

	"GplCustomCampaigns"
	{
		"ControlName"				"GenericPanelList"
		"fieldName"				"GplCustomCampaigns"
		"xpos"					"c-385"	[$WIN32WIDE]
		"xpos"					"c-296"
		"ypos"					"20"
		"wide"					"475"	[$WIN32WIDE]
		"wide"					"360"
		"tall"					"440"
		"zpos"					"1"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"1"
		"bgcolor_override" 		"0 0 0 255"
		"NoWrap"				"1"
		"panelBorder"			"0"//Urik: removed that buggy annoying gap
		"navLeft"				"BtnCancel"
		"navRight"				"BtnSelect"
		"navUp"					"BtnCancel"
		"navDown"				"BtnSelect"
	}	

	"LblNoCampaignsFound"
	{
		"ypos"				"800"
		"visible"			"0"
		"enabled"			"0"
		"zpos"				"-22"
	}
	
	"LblName"
	{
		"ControlName"		"Label"
		"fieldName"			"LblName"
		"xpos"				"c98" [$win32wide]
		"xpos"				"c68"	
		"ypos"				"180" [$win32wide]		
		"ypos"				"150"	
		"wide"				"274" [$win32wide]	
		"wide"				"228"	
		"tall"				"15" 	
		"zpos"				"2"
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
		"font"				"Default"
		"textAlignment"		"west"
		"fgcolor_override"	"255 255 255 255"
		//"bgcolor_override"	"0 0 255 50"
	}
	
	"LblAuthor"
	{
		"ControlName"		"Label"
		"fieldName"			"LblAuthor"
		"xpos"				"c98" [$win32wide]	
		"xpos"				"c68"	
		"ypos"				"197" [$win32wide]	
		"ypos"				"167"
		"wide"				"274" [$win32wide]	
		"wide"				"228"		
		"tall"				"15"	
		"zpos"				"2"
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
		"font"				"DefaultVerySmall"
		"textAlignment"		"west"
		"wrap"				"0"
		"dulltext"			"1"		
		//"bgcolor_override"	"222 0 255 50"
	}
	
	"LblDescription"
	{
		"ControlName"		"Label"
		"fieldName"			"LblDescription"
		"xpos"				"c98" [$win32wide]	
		"xpos"				"c68"	
		"ypos"				"214" [$win32wide]	
		"ypos"				"184"
		"wide"				"274" [$win32wide]
		"wide"				"228"		
		"tall"				"200" [$win32wide] 		
		"tall"				"220" 	
		"zpos"				"2"
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
		"Font"				"DefaultVerySmall"
		"textAlignment"		"north-west"
		"wrap"				"1"
		"brighttext"		"1"
		"dulltext"			"0"
		//"bgcolor_override"	"0 0 255 50"
	}

	"ImgLevelImage"
	{
		"ControlName"		"ImagePanel"
		"fieldName"			"ImgLevelImage"
		"xpos"				"c98" [$win32wide]
		"xpos"				"c68"
		"ypos"				"19" [$win32wide]
		"ypos"				"18"
		"wide"				"274" [$win32wide]
		"wide"				"228"
		"tall"				"154" [$win32wide]
		"tall"				"128"
		"zpos"				"2"
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
		"scaleImage"		"1"
	}	
	
	"ImgLevelImageFrame"
	{
		"ControlName"		"ImagePanel"
		"fieldName"			"ImgLevelImageFrame"
		"xpos"				"c98" [$win32wide]
		"xpos"				"c68"
		"ypos"				"19" [$win32wide]
		"ypos"				"18"
		"wide"				"274" [$win32wide]
		"wide"				"228"
		"tall"				"154" [$win32wide]
		"tall"				"128"
		"zpos"				"3"
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
		"scaleImage"		"1"
		"image"				"urikgamemenu/campaignframe"
	}
		
	"IconForwardArrow"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconForwardArrow"
		"xpos"					"c98" [$win32wide]
		"xpos"					"c68"	
		"ypos"					"422" [$win32wide]
		"ypos"					"422"
		"wide"					"14"
		"tall"					"14"
		"zpos"					"2"
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"icon_button_arrow_right"
		"drawcolor"				"139 139 139 255"//icon_drawcolor
		"scaleImage"			"1"
	}
		
	"BtnSelect"
	{
		//"ControlName"				"Button"
		"ControlName"				"L4D360HybridButton"
		"fieldName"					"BtnSelect"
		"xpos"						"c116" [$win32wide]
		"xpos"						"c86"	
		"ypos"						"420" [$win32wide]
		"ypos"						"420"
		"wide"						"180" [$win32wide]
		"wide"						"208"
		"tall"						"18"
		"zpos"						"3"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"labelText"				"#L4D360UI_CustomCampaign_Select"
		"tooltiptext"			"#L4D360UI_CustomCampaign_Select_Tooltip"
		"style"					"MainMenuSmallButton"
		"command"				"Select"
		EnabledTextInsetX		"2"
		DisabledTextInsetX		"2"
		FocusTextInsetX			"2"
		OpenTextInsetX			"2"
		"navUp"				"BtnCancel"
		"navDown"			"BtnCancel"
		"navLeft"			"GplCustomCampaigns"
		"navRight"			"GplCustomCampaigns"
	}
	
	"IconBackArrow"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconBackArrow"
		"xpos"					"c98" [$win32wide]
		"xpos"					"c68"	
		"ypos"					"444" [$win32wide]
		"ypos"					"444"
		"wide"					"14"
		"tall"					"14"
		"zpos"					"2"
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"icon_button_arrow_left"
		"drawcolor"				"139 139 139 255"//icon_drawcolor
		"scaleImage"			"1"
	}
	
	"BtnCancel"
	{
		//"ControlName"				"Button"
		"ControlName"				"L4D360HybridButton"
		"fieldName"					"BtnCancel"
		"xpos"						"c116" [$win32wide]
		"xpos"						"c86"
		"ypos"						"442" [$win32wide]
		"ypos"						"442"
		"wide"						"256" [$win32wide]
		"wide"						"208"
		"tall"						"18"
		"zpos"						"3"
		"visible"					"1"
		"enabled"					"1"
		"tabPosition"				"0"
		"wrap"					"1"
		"labelText"				"#L4D360UI_Cancel_Caps"
		"tooltiptext"			"#L4D360UI_Tooltip_Cancel"
		"style"					"MainMenuSmallButton"
		"command"				"Back"
		EnabledTextInsetX		"2"
		DisabledTextInsetX		"2"
		FocusTextInsetX			"2"
		OpenTextInsetX			"2"
		"navUp"				"BtnSelect"
		"navDown"			"BtnSelect"
		"navLeft"			"GplCustomCampaigns"
		"navRight"			"GplCustomCampaigns"
	}
}