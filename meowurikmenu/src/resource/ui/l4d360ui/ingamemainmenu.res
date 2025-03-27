"Resource/UI/InGameMainMenu.res"
{
	"InGameMainMenu"
	{
		"ControlName"			"Frame"
		"fieldName"				"InGameMainMenu"
		"xpos"					"0"
		"ypos"					"0"
		"wide"					"f0"
		"tall"					"f0"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"PaintBackgroundType"	"0"
	}
	
	"PnlBackground_tweaks1"
	{
		"ControlName"			"EditablePanel"
		"fieldName"				"PnlBackground_tweaks1"
		"xpos"					"c-326"	[$WIN32WIDE]
		"xpos"					"100"	[!$WIN32WIDE]
		"ypos"					"94"
		"zpos"					"0"
		"wide"					"602"	[$WIN32WIDE]
		"wide"					"392"	[!$WIN32WIDE]
		"tall"					"28"
		"visible"				"1"			
		"enabled"				"1"
		"bgcolor_override"		"0 0 0 0"
		"PaintBackgroundType"	"0"
		
		"PnlBackground_tweaks2"
		{
			"ControlName"			"EditablePanel"
			"fieldName"				"PnlBackground_tweaks2"
			"xpos"					"-10"
			"ypos"					"0"
			"zpos"					"0"
			"wide"					"602"	[$WIN32WIDE]
			"wide"					"420"	[!$WIN32WIDE]
			"tall"					"28"
			"visible"				"1"			
			"enabled"				"1"
			"bgcolor_override"		"0 0 0 167"
			"PaintBackgroundType"	"3"
		}
	}	
	
	"PnlBackground_main"
	{
		"ControlName"			"EditablePanel"
		"fieldName"				"PnlBackground_main"
		"xpos"					"0"
		"ypos"					"94"
		"zpos"					"-1"
		"wide"					"f0"
		"tall"					"280"
		"visible"				"1"			
		"enabled"				"1"
		"bgcolor_override"		"0 0 0 167"
		"PaintBackgroundType"	"0"
	}

	"PnlBackground_Sliders"
	{
		"ControlName"			"EditablePanel"
		"fieldName"				"PnlBackground_Sliders"
		"xpos"					"c266"	[$WIN32WIDE]
		"xpos"					"r118"	[!$WIN32WIDE]
		"ypos"					"94"
		"zpos"					"1"
		"wide"					"f0"
		"tall"					"280"
		"visible"				"1"			
		"enabled"				"1"
		"bgcolor_override"		"0 0 0 167"
		"PaintBackgroundType"	"0"
	}

	"DrpCrosshair"
	{
		"ControlName"		"DropDownMenu"
		"fieldName"			"DrpCrosshair"
		"xpos"				"c-316"	[$WIN32WIDE]
		"xpos"				"100"	[!$WIN32WIDE]
		"ypos"				"100"//buttons_ypos
		"zpos"				"3"
		"wide"				"60"
		"tall"				"15"
		"visible"			"1"
		"enabled"			"1"
		"usetitlesafe"		"0"
		"tabPosition"		"0"
		//"bgcolor_override"		"0 0 0 128"//q_buttons_bgcolor
		"navLeft"			"QuickKickPlayer"
		"navRight"			"DrpNetGraph"
		"navUp"				"BtnExitToMainMenu"
		"navDown"			"BtnReturnToGame"
		//button and label
		"BtnDropButton"
		{
			"ControlName"				"L4D360HybridButton"
			"fieldName"					"BtnDropButton"
			"xpos"						"0"
			"ypos"						"0"
			"zpos"						"3"
			"wide"						"60"
			"wideatopen"				"0"//wideatopen
			"tall"						"15"
			"autoResize"				"1"
			"pinCorner"					"0"
			"visible"					"1"
			"enabled"					"1"
			"tabPosition"				"1"
			"AllCaps"					"1"
			"textalignment"				"center"
			"labelText"					"Прицел" [$RUSSIAN]
			"labelText"					"Crosshair" [!$RUSSIAN]
			"tooltiptext"				""
			"style"					"SmallButton"
			"command"					"FlmCrosshair"
			"ActivationType"			"0"
			"OnlyActiveUser"			"1"
		}
	}
	
	"DrpNetGraph"
	{
		"ControlName"		"DropDownMenu"
		"fieldName"			"DrpNetGraph"
		"xpos"				"c-246"	[$WIN32WIDE]
		"xpos"				"160"	[!$WIN32WIDE]
		"ypos"				"100"//buttons_ypos
		"zpos"				"3"
		"wide"				"60"
		"tall"				"15"
		"visible"			"1"
		"enabled"			"1"
		"usetitlesafe"		"0"
		"tabPosition"		"0"
		//"bgcolor_override"		"0 0 0 128"//q_buttons_bgcolor
		"navLeft"				"DrpCrosshair"
		"navRight"				"QuickKickPlayer"

		"navUp"				"BtnExitToMainMenu"
		"navDown"			"BtnReturnToGame"
		//button and label
		"BtnDropButton"
		{
			"ControlName"				"L4D360HybridButton"
			"fieldName"					"BtnDropButton"
			"xpos"						"0"
			"ypos"						"0"
			"zpos"						"3"
			"wide"						"60"
			"wideatopen"				"0"//wideatopen
			"tall"						"15"
			"autoResize"				"1"
			"pinCorner"					"0"
			"visible"					"1"
			"enabled"					"1"
			"tabPosition"				"1"
			"AllCaps"					"1"
			"textalignment"				"center"
			"labelText"					"net_graph"
			"tooltiptext"				""
		"style"					"SmallButton"
			"command"					"FlmNetGraph"
			"ActivationType"			"0"
			"OnlyActiveUser"			"1"
		}
	}

	// "ImgKick"
	// {
		// "ControlName"			"ImagePanel"
		// "fieldName"				"ImgKick"
		// "xpos"					"c-24"	[$WIN32WIDE]
		// "xpos"					"380"	[!$WIN32WIDE]
		// "ypos"					"102"
		// "wide"					"10"
		// "tall"					"10"
		// "visible"				"1"
		// "enabled"				"1"
		// "image"					"ingamemenu/icon_button_kick"
		// "scaleimage"				"1"
		// "zpos"					"2"
	// }

	"QuickKickPlayer"
	{
		"ControlName"				"L4D360HybridButton"
		"fieldName"					"QuickKickPlayer"
		"xpos"				"c-176"	[$WIN32WIDE]
		"xpos"				"220"	[!$WIN32WIDE]
		//"xpos"					"c-60"	[$WIN32WIDE]
		//"xpos"					"310"	[!$WIN32WIDE]
		"ypos"						"100"
		"zpos"						"3"
		"wide"						"120"
		"tall"						"20"
		//"autoResize"				"1"
		//"pinCorner"					"0"
		"visible"					"1"
		"enabled"					"1"
		//"tabPosition"				"1"
		"AllCaps"					"1"
		"textalignment"				"west"
		"labelText"					"#L4D360UI_BootPlayer"
		"tooltiptext"				"#L4D360UI_BootPlayer_Tip"
		"style"					"SmallButton"
		"command"					"BootPlayer"
		"ActivationType"			"0"
		"OnlyActiveUser"			"1"
		"navLeft"				"DrpSplitScreenMode"
		"navRight"				"DrpCrosshair"
	
		"navUp"				"BtnExitToMainMenu"
		"navDown"			"BtnReturnToGame"
		//"Font"					"BlogPostText"
		//"centerwrap"				"0"
		//"textalignment"			"center"
		//"defaultBgColor_override"		"0 0 0 100"
		//"armedBgColor_override"		"0 0 0 0"
 		//"depressedBgColor_override"	"0 0 0 50"
		// "paintborder"				"0"
		// "sound_armed"				""
		// "sound_depressed"			""
		// "sound_released"			""
	}

	"ImgSpeaker"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"ImgSpeaker"
		"xpos"					"c282"	[$WIN32WIDE]
		"xpos"					"r102"	[!$WIN32WIDE]
		"ypos"					"158"
		"wide"					"10"
		"tall"					"10"
		"visible"				"1"
		"enabled"				"1"
		"image"					"ingamemenu/icon_sound"
		"scaleimage"				"1"
		"zpos"					"2"
		"drawcolor" "140 20 0 255" [$x360lodef]//xmas
		"drawcolor" "139 139 139 255"//icon_drawcolor
	}

	"SldGameVolume"
	{
		"ControlName"			"SliderControl"
		"fieldName"				"SldGameVolume"
		"xpos"					"c286"	[$WIN32WIDE]
		"xpos"					"r98"	[!$WIN32WIDE]
		"ypos"					"160"
		"zpos"					"3"
		"wide"					"90"//slider_width
		"tall"					"6"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"minValue"				"0.0"
		"maxValue"				"1.0"
		"stepSize"				"0.1"
		"conCommand"			"volume"
		"inverseFill"			"0"
		"navUp"				"BtnReturnToGame"
		"navDown"			"SldMusicVolume"
		//button and label
		"BtnDropButton"
		{
			"ControlName"			"L4D360HybridButton"
			"fieldName"				"BtnDropButton"
			"visible"				"1"
			"enabled"				"1"
			"labeltext"				" "
			"style"					"smallbutton"
			"ActivationType"		"1"
			"OnlyActiveUser"		"1"
		}
	}

	"ImgMusic"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"ImgMusic"
		"xpos"					"c282"	[$WIN32WIDE]
		"xpos"					"r102"	[!$WIN32WIDE]
		"ypos"					"178"
		"wide"					"10"
		"tall"					"10"
		"visible"				"1"
		"enabled"				"1"
		"image"					"ingamemenu/icon_music"
		"scaleimage"				"1"
		"zpos"					"2"
		"drawcolor" "140 20 0 255" [$x360lodef]//xmas
		"drawcolor" "139 139 139 255"//icon_drawcolor
	}
	
	"SldMusicVolume"
	{
		"ControlName"			"SliderControl"
		"fieldName"				"SldMusicVolume"
		"xpos"					"c286"	[$WIN32WIDE]
		"xpos"					"r98"	[!$WIN32WIDE]
		"ypos"					"180"
		"zpos"					"3"
		"wide"					"90"//slider_width
		"tall"					"6"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"minValue"				"0.0"
		"maxValue"				"1.0"
		"stepSize"				"0.1"
		"conCommand"			"snd_musicvolume"
		"inverseFill"			"0"
		"navUp"				"SldGameVolume"
		"navDown"			"SldGamma"
		//button and label
		"BtnDropButton"
		{
			"ControlName"			"L4D360HybridButton"
			"fieldName"				"BtnDropButton"
			"visible"				"1"
			"enabled"				"1"
			"labeltext"				" "
			"style"					"smallbutton"
			"ActivationType"		"1"
			"OnlyActiveUser"		"1"
		}
	}

	"ImgGamma"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"ImgGamma"
		"xpos"					"c282"	[$WIN32WIDE]
		"xpos"					"r102"	[!$WIN32WIDE]
		"ypos"					"218"
		"wide"					"10"
		"tall"					"10"
		"visible"				"1"
		"enabled"				"1"
		"image"					"ingamemenu/icon_brightness"
		"scaleimage"				"1"
		"zpos"					"2"
		"drawcolor" "140 20 0 255" [$x360lodef]//xmas
		"drawcolor" "139 139 139 255"//icon_drawcolor
	}

	"SldGamma"
	{
		"ControlName"			"SliderControl"
		"fieldName"				"SldGamma"
		"xpos"					"c286"	[$WIN32WIDE]
		"xpos"					"r98"	[!$WIN32WIDE]
		"ypos"					"220"
		"zpos"					"3"
		"wide"					"90"//slider_width
		"tall"					"6"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"minValue"				"1.6"
		"maxValue"				"2.6"
		"stepSize"				"0.1"
		"conCommand"			"mat_monitorgamma"
		"inverseFill"			"0"
		"navUp"				"SldMusicVolume"
		"navDown"			"SldGamma1"
		//button and label
		"BtnDropButton"
		{
			"ControlName"			"L4D360HybridButton"
			"fieldName"				"BtnDropButton"
			"visible"				"1"
			"enabled"				"1"
			"labeltext"				" "
			"style"					"smallbutton"
			"ActivationType"		"1"
			"OnlyActiveUser"		"1"
		}
	}
	
	"ImgBrightness"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"ImgBrightness"
		"xpos"					"c282"	[$WIN32WIDE]
		"xpos"					"r102"	[!$WIN32WIDE]
		"ypos"					"238"
		"wide"					"10"
		"tall"					"10"
		"visible"				"1"
		"enabled"				"1"
		"image"					"ingamemenu/icon_brightness2"
		"scaleimage"				"1"
		"zpos"					"2"
		"drawcolor"				"80 5 0 255" [$x360lodef]//xmas
		"drawcolor"				"96 96 96 255"
	}
	
	"Plus"
	{
		"ControlName"			"ImagePanel"
		"fieldName"			"Plus"
		"xpos"				"c292"	[$WIN32WIDE]
		"xpos"				"r92"	[!$WIN32WIDE]
		"ypos"				"240"
		"wide"				"6"
		"tall"				"6"
		"visible"			"1"
		"enabled"			"1"
		"image"				"ingamemenu/plus"
		"scaleimage"			"1"
		"zpos"				"2"
		"drawcolor"			"80 5 0 255" [$x360lodef]//xmas
		"drawcolor"			"96 96 96 255"
	}

	"DrpTvGammaHint"
	{
		"ControlName"			"DropDownMenu"
		"fieldName"			"DrpTvGammaHint"
		"xpos"				"c274"	[$WIN32WIDE]
		"xpos"				"r110"	[!$WIN32WIDE]
		"ypos"				"236"
		"wide"				"6"
		"tall"				"12"
		"zpos"				"3"
		"visible"			"1"
		"enabled"			"1"
		"usetitlesafe"			"0"
		"tabPosition"			"0"
		//"bgcolor_override"		"255 0 255 128"//q_buttons_bgcolor
		//button and label
		"BtnDropButton"
		{
			"ControlName"				"L4D360HybridButton"
			"fieldName"				"BtnDropButton"
			"xpos"					"0"
			"ypos"					"0"
			"zpos"					"3"
			"wide"					"6"
			"wideatopen"				"0"//wideatopen
			"tall"					"12"
			"autoResize"				"1"
			"pinCorner"				"0"
			"visible"				"1"
			"enabled"				"1"
			"tabPosition"				"1"
			"AllCaps"				"1"
			"textalignment"				"center"
			"labelText"				"?"
			"tooltiptext"				""
			"style"					"SmallButton"
			"command"				"FlmTvGammaHint"
			"ActivationType"			"0"
			"OnlyActiveUser"			"1"
		}
	}
	
	"SldGamma1"
	{
		"ControlName"			"SliderControl"
		"fieldName"			"SldGamma1"
		"xpos"				"c286"	[$WIN32WIDE]
		"xpos"				"r98"	[!$WIN32WIDE]
		"ypos"				"240"
		"zpos"				"3"
		"wide"				"90"//slider_width
		"tall"				"6"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"			"0"
		"minValue"			"0"
		"maxValue"			"1"
		"stepSize"			"1"
		"conCommand"			"mat_monitorgamma_tv_enabled"
		"inverseFill"			"0"
		"navUp"				"SldGamma"
		"navDown"			"SldCaptions"
		//button and label
		"BtnDropButton"
		{
			"ControlName"			"L4D360HybridButton"
			"fieldName"			"BtnDropButton"
			"visible"			"1"
			"enabled"			"1"
			"labeltext"			" "
			"style"				"smallbutton"
			"ActivationType"		"1"
			"OnlyActiveUser"		"1"
		}
	}
	
	"ImgCaptions"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"ImgCaptions"
		"xpos"					"c282"	[$WIN32WIDE]
		"xpos"					"r102"	[!$WIN32WIDE]
		"ypos"					"278"
		"wide"					"10"
		"tall"					"10"
		"visible"				"1"
		"enabled"				"1"
		"image"					"ingamemenu/icon_ccaptions"
		"scaleimage"				"1"
		"zpos"					"2"
		"drawcolor" "140 20 0 255" [$x360lodef]//xmas
		"drawcolor" "139 139 139 255"//icon_drawcolor
	}

	"DrpCaptionsHint"
	{
		"ControlName"		"DropDownMenu"
		"fieldName"			"DrpCaptionsHint"
		"xpos"					"c274"	[$WIN32WIDE]
		"xpos"					"r110"	[!$WIN32WIDE]
		"ypos"					"276"
		"wide"					"6"
		"tall"					"12"
		"zpos"				"3"
		"visible"			"1"
		"enabled"			"1"
		"usetitlesafe"		"0"
		"tabPosition"		"0"
		//"bgcolor_override"		"255 0 255 128"//q_buttons_bgcolor
		//button and label
		"BtnDropButton"
		{
			"ControlName"				"L4D360HybridButton"
			"fieldName"					"BtnDropButton"
			"xpos"						"0"
			"ypos"						"0"
			"zpos"						"3"
			"wide"						"6"
			"wideatopen"				"0"//wideatopen
			"tall"						"12"
			"autoResize"				"1"
			"pinCorner"					"0"
			"visible"					"1"
			"enabled"					"1"
			"tabPosition"				"1"
			"AllCaps"					"1"
			"textalignment"				"center"
			"labelText"					"?"
			"tooltiptext"				""
		"style"					"SmallButton"
			"command"					"FlmCaptionsHint"
			"ActivationType"			"0"
			"OnlyActiveUser"			"1"
		}
	}
	
	"SldCaptions"
	{
		"ControlName"			"SliderControl"
		"fieldName"				"SldCaptions"
		"xpos"					"c286"	[$WIN32WIDE]
		"xpos"					"r98"	[!$WIN32WIDE]
		"ypos"					"280"
		"zpos"					"3"
		"wide"					"90"//slider_width
		"tall"					"6"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"minValue"				"0"
		"maxValue"				"1"
		"stepSize"				"1"
		"conCommand"			"closecaption"
		"inverseFill"			"0"
		"navUp"				"SldGamma1"
		"navDown"			"SldGameInstructor"
		//button and label
		"BtnDropButton"
		{
			"ControlName"			"L4D360HybridButton"
			"fieldName"				"BtnDropButton"
			"visible"				"1"
			"enabled"				"1"
			"labeltext"				" "
			"style"					"smallbutton"
			"ActivationType"		"1"
			"OnlyActiveUser"		"1"
		}
	}
	
	"ImgGameInstructor"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"ImgGameInstructor"
		"xpos"					"c282"	[$WIN32WIDE]
		"xpos"					"r102"	[!$WIN32WIDE]
		"ypos"					"298"
		"wide"					"10"
		"tall"					"10"
		"visible"				"1"
		"enabled"				"1"
		"image"					"ingamemenu/icon_info"
		"scaleimage"				"1"
		"zpos"					"2"
		"drawcolor" "140 20 0 255" [$x360lodef]//xmas
		"drawcolor" "139 139 139 255"//icon_drawcolor
	}
	
	"DrpGameInstructorHint"
	{
		"ControlName"		"DropDownMenu"
		"fieldName"			"DrpGameInstructorHint"
		"xpos"					"c275"	[$WIN32WIDE]
		"xpos"					"r109"	[!$WIN32WIDE]
		"ypos"					"297"
		"wide"					"6"
		"tall"					"12"
		"zpos"				"3"
		"visible"			"1"
		"enabled"			"1"
		"usetitlesafe"		"0"
		"tabPosition"		"0"
		//"bgcolor_override"		"255 0 255 128"//q_buttons_bgcolor
		//button and label
		"BtnDropButton"
		{
			"ControlName"				"L4D360HybridButton"
			"fieldName"					"BtnDropButton"
			"xpos"						"0"
			"ypos"						"0"
			"zpos"						"3"
			"wide"						"6"
			"wideatopen"				"0"//wideatopen
			"tall"						"12"
			"autoResize"				"1"
			"pinCorner"					"0"
			"visible"					"1"
			"enabled"					"1"
			"tabPosition"				"1"
			"AllCaps"					"1"
			"textalignment"				"center"
			"labelText"					"!"
			"tooltiptext"				""
			"style"					"SmallButton"
			"command"					"FlmGameInstructorHint"
			"ActivationType"			"0"
			"OnlyActiveUser"			"1"
		}
	}
	
	"SldGameInstructor"
	{
		"ControlName"			"SliderControl"
		"fieldName"				"SldGameInstructor"
		"xpos"					"c286"	[$WIN32WIDE]
		"xpos"					"r98"	[!$WIN32WIDE]
		"ypos"					"300"
		"zpos"					"3"
		"wide"					"90"//slider_width
		"tall"					"6"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"minValue"				"0"
		"maxValue"				"1"
		"stepSize"				"1"
		"conCommand"			"gameinstructor_enable"
		"inverseFill"			"0"
		"navUp"				"SldCaptions"
		"navDown"			"SldFOV"
		//button and label
		"BtnDropButton"
		{
			"ControlName"			"L4D360HybridButton"
			"fieldName"				"BtnDropButton"
			"visible"				"1"
			"enabled"				"1"
			"labeltext"				" "
			"style"					"smallbutton"
			"ActivationType"		"1"
			"OnlyActiveUser"		"1"
		}
	}
	
	"ImgFOV"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"ImgFOV"
		"xpos"					"c282"	[$WIN32WIDE]
		"xpos"					"r102"	[!$WIN32WIDE]
		"ypos"					"338"
		"wide"					"10"
		"tall"					"10"
		"visible"				"1"
		"enabled"				"1"
		"image"					"ingamemenu/icon_fov"
		"scaleimage"				"1"
		"zpos"					"2"
		"drawcolor" "140 20 0 255" [$x360lodef]//xmas
		"drawcolor" "139 139 139 255"//icon_drawcolor
	}
	
	"SldFOV"
	{
		"ControlName"			"SliderControl"
		"fieldName"				"SldFOV"
		"xpos"					"c286"	[$WIN32WIDE]
		"xpos"					"r98"	[!$WIN32WIDE]
		"ypos"					"340"
		"zpos"					"3"
		"wide"					"90"//slider_width
		"tall"					"6"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"minValue"				"10"
		"maxValue"				"180"
		"stepSize"				"1"
		"conCommand"			"cl_viewmodelfovsurvivor"
		"inverseFill"			"0"
		"navUp"				"SldGameInstructor"
		"navDown"			"BtnReturnToGame"
		//button and label
		"BtnDropButton"
		{
			"ControlName"			"L4D360HybridButton"
			"fieldName"				"BtnDropButton"
			"visible"				"1"
			"enabled"				"1"
			"labeltext"				" "
			"style"					"smallbutton"
			"ActivationType"		"1"
			"OnlyActiveUser"		"1"
		}
	}
	
	"ImgTimeScale"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"ImgTimeScale"
		"xpos"					"c282"	[$WIN32WIDE]
		"xpos"					"r102"	[!$WIN32WIDE]
		"ypos"					"358"
		"wide"					"10"
		"tall"					"10"
		"visible"				"0"//timescaleslider
		"enabled"				"0"//timescaleslider
		"image"					"ingamemenu/icon_timescale"
		"scaleimage"				"1"
		"zpos"					"2"
		"drawcolor" "140 20 0 255" [$x360lodef]//xmas
		"drawcolor" "139 139 139 255"//icon_drawcolor
	}	
	
	"SldTimeScale"
	{
		"ControlName"			"SliderControl"
		"fieldName"				"SldTimeScale"
		"xpos"					"c286"	[$WIN32WIDE]
		"xpos"					"r98"	[!$WIN32WIDE]
		"ypos"					"360"
		"zpos"					"3"
		"wide"					"90"//slider_width
		"tall"					"6"
		"visible"				"0"//timescaleslider
		"enabled"				"0"//timescaleslider
		"tabPosition"			"0"
		"minValue"				"0.1"
		"maxValue"				"1"
		"stepSize"				"1"
		"conCommand"			"host_timescale"
		"inverseFill"			"0"
		"navUp"				"SldGameInstructor"
		"navDown"			"BtnReturnToGame"
		//button and label
		"BtnDropButton"
		{
			"ControlName"			"L4D360HybridButton"
			"fieldName"				"BtnDropButton"
			"visible"				"1"
			"enabled"				"1"
			"labeltext"				" "
			"style"					"smallbutton"
			"ActivationType"		"1"
			"OnlyActiveUser"		"1"
		}
	}
	
	"BtnReturnToGame"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnReturnToGame"
		"xpos"					"c-326"	[$WIN32WIDE]
		"xpos"					"100"	[!$WIN32WIDE]
		"ypos"					"150"	//was 135
		"wide"					"220"	[$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"wide"					"350"	[!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"1"
		"navRight"				"SldGameVolume"
		"navUp"					"DrpCrosshair"
		"navDown"				"BtnGoIdle"
		"wrap"					"1"
		"labelText"				"#L4D360UI_InGameMainMenu_ReturnToGame"
		"tooltiptext"			"#L4D360UI_InGameMainMenu_ReturnToGame_Tip"
		"style"					"MainMenuButton"
		"command"				"ReturnToGame"	// was ReturnToGame
		"ActivationType"		"1"
		"zpos"				"3"
	}
	
	"BtnGoIdle"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnGoIdle"
		"xpos"					"c-326"	[$WIN32WIDE]
		"xpos"					"100"	[!$WIN32WIDE]
		"ypos"					"170"	//was 160
		"wide"					"220"	[$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"wide"					"350"	[!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"1"
		"navRight"				"SldGameVolume"
		"navUp"					"BtnReturnToGame"
		"navDown"				"BtnCallAVote"
		"labelText"				"#L4D360UI_InGameMainMenu_GoIdle"
		"tooltiptext"			"#L4D360UI_InGameMainMenu_GoIdle_Tip"
		"disabled_tooltiptext"	"#L4D360UI_InGameMainMenu_GoIdle_Disabled"
		"style"					"MainMenuButton"
		"command"				"GoIdle"
		"ActivationType"		"1"
		"zpos"				"3"
	}
	
	"BtnCallAVote"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnCallAVote"
		"xpos"					"c-326"	[$WIN32WIDE]
		"xpos"					"100"	[!$WIN32WIDE]
		"ypos"					"190"	//was 180
		"wide"					"220"	[$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"wide"					"350"	[!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"navRight"				"SldGameVolume"
		"navUp"					"BtnGoIdle"
		"navDown"				"BtnInviteFriends"
		"labelText"				"#L4D360UI_InGameMainMenu_CallAVote"
		"tooltiptext"			"#L4D360UI_InGameMainMenu_CallAVote_Tip"
		"disabled_tooltiptext" "#L4D360UI_InGameMainMenu_CallAVote_Tip"
		"style"					"MainMenuButton"
		"command" 				"FlmVoteFlyout"
		"ActivationType"		"1"
		"zpos"				"3"
	}
	
	"BtnInviteFriends"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnInviteFriends"
		"xpos"					"c-326"	[$WIN32WIDE]
		"xpos"					"100"	[!$WIN32WIDE]
		"ypos"					"210"	// was 210
		"wide"					"220"	[$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"wide"					"350"	[!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"navRight"				"SldGameVolume"
		"navUp"					"BtnCallAVote"
		"navDown"				"BtnLeaderboard"
		"labelText"				"#L4D360UI_Lobby_InviteFriends"
		"tooltiptext"			"#L4D360UI_Lobby_InviteFriends_Tip"	
		"style"					"MainMenuButton"
		"ActivationType"		"1"
		"zpos"				"3"
		"command"				"InviteUI_Steam"
	}
	
	"BtnLeaderboard"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnLeaderboard"
		"xpos"					"c-326"	[$WIN32WIDE]
		"xpos"					"100"	[!$WIN32WIDE]
		"ypos"					"230"	//was 235
		"wide"					"220"	[$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"wide"					"350"	[!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"tall"					"20"	
		"autoResize"			"1"		
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"navRight"				"SldGameVolume"
		"navUp"					"BtnInviteFriends"
		"navDown"				"BtnStatsAndAchievements"
		"labelText"				"#L4D360UI_Leaderboard_Title"
		"tooltiptext"			"#L4D360UI_MainMenu_SurvivalLeaderboards_Tip"
		"style"					"MainMenuButton"
		"command"				"Leaderboards_"
		"ActivationType"		"1"
		"zpos"				"3"
	}
	
	"BtnStatsAndAchievements"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnStatsAndAchievements"
		"xpos"					"c-326"	[$WIN32WIDE]
		"xpos"					"100"	[!$WIN32WIDE]
		"ypos"					"250"	//was 260
		"wide"					"220"	[$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"wide"					"350"	[!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"navRight"				"SldGameVolume"
		"navUp"					"BtnLeaderboard"
		"navDown"				"BtnAddons"
		"labelText"				"#L4D360UI_MainMenu_StatsAndAchievements"
		"tooltiptext"			"#L4D360UI_MainMenu_PCStatsAndAchievements_Tip"	
		"style"					"MainMenuButton"
		"command"				"StatsAndAchievements"
		"ActivationType"		"1"
		"zpos"				"3"
	}
	
	// "IconAddons"
	// {
		// "ControlName"			"ImagePanel"
		// "fieldName"				"IconAddons"
		// "xpos"					"c-304"	[$WIN32WIDE]
		// "xpos"					"80"	[!$WIN32WIDE]
		// "ypos"					"252"
		// "wide"					"15"
		// "tall"					"15"
		// "scaleImage"			"1"
		// "pinCorner"				"0"
		// "visible"				"1"
		// "enabled"				"1"
		// "tabPosition"			"0"
		// "image"					"addons"
		// "frame"					"0"
		// "scaleImage"			"1"
	// }
	
	"BtnAddons"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnAddons"
		"xpos"					"c-326"	[$WIN32WIDE]
		"xpos"					"100"	[!$WIN32WIDE]
		"ypos"					"270"
		"wide"					"220"	[$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"wide"					"350"	[!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"navRight"				"SldGameVolume"
		"navUp"					"BtnStatsAndAchievements"
		"navDown"				"BtnAudio1"
		"tooltiptext"			"#L4D360UI_Extras_Addons_Tip"
		"labelText"				"Дополнения"  [$RUSSIAN]
		"labelText"				"#L4D360UI_Extras_Addons"  [!$RUSSIAN]
		"style"					"MainMenuButton"
		"command"				"Addons"
		"ActivationType"		"1"
		"allcaps"			"1" // Urik: to ensure caps'd letters
		"zpos"				"3"
	}
	
	"BtnAudio1"	
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnAudio1"
		"xpos"					"c-326"	[$WIN32WIDE]
		"xpos"					"100"	[!$WIN32WIDE]
		"ypos"					"290"
		"wide"					"220"	[$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"wide"					"350"	[!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"navRight"				"SldGameVolume"
		"navUp"					"BtnAddons"
		"navDown"				"BtnOptions"
		"tooltiptext"			"#L4D_Audio_tip"
		"labelText"				"#GameUI_Audio"
		"style"					"MainMenuButton"
		"command"				"Audio"
		"allcaps"				"1"
		"zpos"				"3"
	}
	
	"BtnOptions"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnOptions"
		"xpos"					"c-326"	[$WIN32WIDE]
		"xpos"					"100"	[!$WIN32WIDE]
		"ypos"					"310"
		"wide"					"220"	[$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"wide"					"350"	[!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"navRight"				"SldGameVolume"
		"navUp"					"BtnAudio1"
		"navDown"				"BtnExitToMainMenu"
		"labelText"				"#L4D360UI_MainMenu_Options"
		"tooltiptext"			"#L4D360UI_MainMenu_Options_Tip"
		"style"					"MainMenuButton"
		"command"				"FlmOptionsFlyout"
		"ActivationType"		"1"
		"zpos"				"3"
	}
	
	"BtnExitToMainMenu"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnExitToMainMenu"
		"xpos"					"c-326"	[$WIN32WIDE]
		"xpos"					"100"	[!$WIN32WIDE]
		"ypos"					"342"	// was 322
		"wide"					"220"	[$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"wide"					"350"	[!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"navRight"				"SldGameVolume"
		"navUp"					"BtnOptions"
		"navDown"				"DrpCrosshair"
		"labelText"				"#L4D360UI_InGameMainMenu_ExitToMainMenu"
		"tooltiptext"			"#L4D360UI_InGameMainMenu_ExitToMainMenu_Tip"
		"style"					"MainMenuButton"
		"command"				"ExitToMainMenu"
		"ActivationType"		"1"
		"zpos"				"3"
	}
	
	"FlmOptionsFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmOptionsFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnVideo" 
		"ResourceFile"			"resource/UI/L4D360UI/OptionsFlyout.res"		
	}
	
	"FlmOptionsGuestFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmOptionsGuestFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnAudioVideo"
		"ResourceFile"			"resource/UI/L4D360UI/OptionsGuestFlyout.res"
	}
	
	"FlmVoteFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmVoteFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnReturnToLobby"
		"ResourceFile"			"resource/UI/L4D360UI/InGameVoteFlyout.res"
	}
	
	"FlmVoteFlyoutVersus"
	{
		"ControlName"		"FlyoutMenu"
		"fieldName"			"FlmVoteFlyoutVersus"
		"visible"			"0"
		"wide"				"0"
		"tall"				"0"
		"zpos"				"3"
		"InitialFocus"		"BtnReturnToLobby"
		"ResourceFile"		"resource/UI/L4D360UI/InGameVoteFlyoutVersus.res"
	}
	
	"FlmVoteFlyoutSurvival"
	{
		"ControlName"		"FlyoutMenu"
		"fieldName"			"FlmVoteFlyoutSurvival"
		"visible"			"0"
		"wide"				"0"
		"tall"				"0"
		"zpos"				"3"
		"InitialFocus"		"BtnReturnToLobby"
		"ResourceFile"		"resource/UI/L4D360UI/InGameVoteFlyoutSurvival.res"
	}
	
	"FlmVoteFlyoutVersusSurvival"
	{
		"ControlName"		"FlyoutMenu"
		"fieldName"			"FlmVoteFlyoutVersusSurvival"
		"visible"			"0"
		"wide"				"0"
		"tall"				"0"
		"zpos"				"3"
		"InitialFocus"		"BtnReturnToLobby"
		"ResourceFile"		"resource/UI/L4D360UI/InGameVoteFlyoutVersusSurvival.res"
	}

	"FlmVoteFlyoutSurvivalSolo"
	{
		"ControlName"		"FlyoutMenu"
		"fieldName"			"FlmVoteFlyoutSurvivalSolo"
		"visible"			"0"
		"wide"				"0"
		"tall"				"0"
		"zpos"				"3"
		"InitialFocus"		"BtnReturnToLobby"
		"ResourceFile"		"resource/UI/L4D360UI/InGameVoteFlyoutSurvivalSolo.res"
	}
	
	"FlmCrosshair"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCrosshair"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"4"
		"InitialFocus"			"SldRed"
		"ResourceFile"			"resource/UI/L4D360UI/ingamemenu/dropdownCrosshair.res"
		"OnlyActiveUser"		"0"
	}
	
	"FlmNetGraph"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmNetGraph"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"4"
		"InitialFocus"			"SldMode"
		"ResourceFile"			"resource/UI/L4D360UI/ingamemenu/DropDownNetGraph.res"
		"OnlyActiveUser"		"1"
	}
	
	"FlmCaptionsHint"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCaptionsHint"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"4"
		"InitialFocus"			"SldMode"
		"ResourceFile"			"resource/UI/L4D360UI/ingamemenu/DropDown_captionshint.res"
		"OnlyActiveUser"		"1"
	}
	
	"FlmGameInstructorHint"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmGameInstructorHint"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"4"
		"InitialFocus"			"SldMode"
		"ResourceFile"			"resource/UI/L4D360UI/ingamemenu/DropDown_InstructorSliderHint.res"
		"OnlyActiveUser"		"1"
	}
	
	"FlmTvGammaHint"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmTvGammaHint"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"4"
		"InitialFocus"			"SldMode"
		"ResourceFile"			"resource/UI/L4D360UI/ingamemenu/DropDown_tvgammaHint.res"
		"OnlyActiveUser"		"1"
	}
	
	"FlmFAQ"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmFAQ"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"4"
		"InitialFocus"			"PnlBackground"
		"ResourceFile"			"resource/UI/L4D360UI/ingamemenu/DropDownSlidersFAQ.res"
		"OnlyActiveUser"		"1"
	}
}
