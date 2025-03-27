"Resource/UI/WorkshopDownloadPanel.res"
{
	"WorkshopDownloadPanel"
	{
		"ControlName"			"Frame"
		"fieldName"				"WorkshopDownloadPanel"
		"xpos"					"c90" [$WIN32 && !$WIN32WIDE]
		"xpos"					"c200" [$WIN32 && $WIN32WIDE]
		"ypos"					"0"	[$WIN32]
		"wide"					"180"
		"tall"					"45"	[$WIN32]
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"0"
		"enabled"				"1"
		"tabPosition"			"0"
		"zpos"					"100"
	}
	"DownloadLabel"
	{
		"ControlName"		"Label"
		"fieldName"			"DownloadLabel"
		"xpos"				"0"
		"ypos"				"25"
		"wide"				"100"
		"tall"				"15"
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
		"labelText"			""
		"font"				"Default"
		"dulltext"			"1"
		"brighttext"		"0"
		"textAlignment" "center"
		"zpos"					"4"
	}
	"DownloadFileLabel"
	{
		"ControlName"		"Label"
		"fieldName"			"DownloadFileLabel"
		"xpos"				"33"
		"ypos"				"0"
		"wide"				"146"
		"tall"				"34"
		"autoResize"			"0"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"			"0"
		"labelText"			""
		"font"				"DefaultVerySmall"
		"dulltext"			"1"
		"brighttext"			"0"
		"textAlignment" 		"center"
		"centerwrap"			"1"
		"zpos"				"4"
		"fgcolor_override"	"200 200 200 255"
		//"bgcolor_override"	"0 0 255 50"
	}
	"DownloadProgress"
	{
		"ControlName"			"ContinuousProgressBar"
		"fieldName"				"DownloadProgress"
		"xpos"					"10" [$WIN32]
		"ypos"					"34"
		"wide"					"160" [$WIN32]
		"tall"					"10" [$WIN32]
		"zpos"					"5"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"bgcolor_override"	"0 0 0 0"
		"fgcolor_override"	"139 139 139 255"
	}	
	"DownloadProgress_bg1"
	{
		"ControlName"	"ScalableImagePanel"
		"fieldName"		"DownloadProgress_bg1"
		"xpos"					"10" [$WIN32]
		"ypos"					"34"
		"wide"					"160" [$WIN32]
		"tall"					"10" [$WIN32]
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"
		"image"			"../vgui/workshopdownloadbar_outline_flash"
		"drawcolor"		"255 255 255 255"
		"src_corner_height"		"4"				// pixels inside the image
		"src_corner_width"		"4"	
		"draw_corner_width"		"2"				// screen size of the corners ( and sides ), proportional
		"draw_corner_height" 	"2"	
		"zpos"			"4"
	}
	"Workshop_logo"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"Workshop_logo"
		"xpos"					"2"
		"ypos"					"2"
		"wide"					"32"
		"tall"					"32"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"	
		"scaleImage"			"1"
		"image"				"workshop_logo"
		//"drawcolor"			"255 255 255 255"
		"zpos"					"3"
		"drawcolor" "140 20 0 255" [$x360lodef]//xmas
		"drawcolor" "139 139 139 255"//icon_drawcolor
	}	
	"Workshop_grid"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"Workshop_grid"
		"xpos"					"0"
		"ypos"					"0"
		"wide"					"180"
		"tall"					"45"
		"zpos"					"1"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"	
		"scaleImage"			"1"
		"image"				"workshop_grid"
		"drawcolor" "140 20 0 255" [$x360lodef]//xmas
		"drawcolor" "139 139 139 255"//icon_drawcolor
	}	
	"BackGround"
	{
		"ControlName"			"EditablePanel"
		"fieldName"				"BackGround"
		"xpos"					"0"
		"ypos"					"0"
		"wide"					"180"
		"tall"					"45"
		"zpos"					"0"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"0"
		"enabled"				"0"
		"tabPosition"			"0"
		"bgcolor_override"	"0 0 0 0"
		"PaintBackgroundType"	"2"
	}
}