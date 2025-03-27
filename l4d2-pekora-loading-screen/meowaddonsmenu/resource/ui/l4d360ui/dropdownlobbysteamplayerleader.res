"Resource/UI/DropDownLobbySteamPlayerLeader.res"
{
	"PnlBackground"
	{
		"ControlName"			"Panel"
		"fieldName"				"PnlBackground"
		"xpos"					"0"
		"ypos"					"0"
		"zpos"					"1"
		"wide"					"150"
		"tall"					"85"
		"visible"				"1"
		"enabled"				"1"
		"paintbackground"		"1"
		"paintborder"			"1"
	}

	"IconSendMessage"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconSendMessage"
		"xpos"					"5"
		"ypos"					"4"
		"wide"					"10"
		"tall"					"10"
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"icon_sendmsg"
		"frame"					"0"
		"drawcolor" "140 20 0 255" [$x360lodef]//xmas
		"drawcolor" "139 139 139 255"//icon_drawcolor
	}	


	"BtnSendMessage"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"			"BtnSendMessage"
		"xpos"				"12"
		"ypos"				"0"
		"zpos"				"2"
		"wide"				"140"
		"tall"				"20"
		"autoResize"			"1"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"			"0"
		"wrap"				"1"
		"navUp"				"BtnKick"
		"navDown"			"BtnViewSteamID"
		"labelText"			"#L4D360UI_SendMessage"
		"style"				"FlyoutMenuButton"
		"command"			"#L4D360UI_SendMessage"
	}	

	"IconViewSteamID"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconViewSteamID"
		"xpos"					"5"
		"ypos"					"18"
		"wide"					"10"
		"tall"					"10"
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"icon_viewprofile"
		"frame"					"0"
		"drawcolor" "140 20 0 255" [$x360lodef]//xmas
		"drawcolor" "139 139 139 255"//icon_drawcolor
	}	
	
	"BtnViewSteamID"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"			"BtnViewSteamID"
		"xpos"				"12"
		"ypos"				"20"
		"zpos"				"2"
		"wide"				"140"
		"tall"				"20"
		"autoResize"			"1"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"			"0"
		"wrap"				"1"
		"navUp"				"BtnSendMessage"
		"navDown"			"BtnMute"
		"labelText"			"#L4D360UI_ViewSteamID"
		"style"				"FlyoutMenuButton"
		"command"			"#L4D360UI_ViewSteamID"
	}	
	
	"IconMutePlayer"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconMutePlayer"
		"xpos"					"5"
		"ypos"					"32"
		"wide"					"10"
		"tall"					"10"
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"icon_muteplayer"
		"frame"					"0"
		"drawcolor" "140 20 0 255" [$x360lodef]//xmas
		"drawcolor" "139 139 139 255"//icon_drawcolor
	}	
	
	"BtnMute"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"			"BtnMute"
		"xpos"				"12"
		"ypos"				"40"
		"zpos"				"2"
		"wide"				"140"
		"tall"				"20"
		"autoResize"			"1"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"0"
		"tabPosition"			"0"
		"wrap"				"1"
		"navUp"				"BtnViewSteamID"
		"navDown"			"BtnKick"
		"labelText"			"#L4D360UI_MutePlayer"
		"style"				"FlyoutMenuButton"
		"command"			"#L4D360UI_MutePlayer"
	}	
	
	"IconKickPlayer"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconKickPlayer"
		"xpos"					"5"
		"ypos"					"46"
		"wide"					"10"
		"tall"					"10"
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"icon_kickplayer"
		"frame"					"0"
		"drawcolor" "140 20 0 255" [$x360lodef]//xmas
		"drawcolor" "139 139 139 255"//icon_drawcolor
	}	
	

	"BtnKick"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"			"BtnKick"
		"xpos"				"12"
		"ypos"				"60"
		"zpos"				"2"
		"wide"				"140"
		"tall"				"20"
		"autoResize"			"1"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"			"0"
		"wrap"				"1"
		"navUp"				"BtnMute"
		"navDown"			"BtnSendMessage"
		"labelText"			"#L4D360UI_BootPlayer"
		"style"				"FlyoutMenuButton"
		"command"			"#L4D360UI_BootPlayer"
	}	
}
