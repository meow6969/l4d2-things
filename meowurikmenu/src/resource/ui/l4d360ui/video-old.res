"Resource/UI/Video.res"
{
	"Video"
	{
		"ControlName"		"Frame"
		"fieldName"			"Video"
		"xpos"				"0"
		"ypos"				"0"
		"wide"				"f0"
		"tall"				"428" [$OSX]
		"tall"				"448" [!$OSX]
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
	}
	
	"ImgBackground"	[$WIN32]
	{
		"ControlName"			"L4DMenuBackground"
		"fieldName"				"ImgBackground"
		"xpos"					"0"
		"ypos"					"79"
		"zpos"					"-1"
		"wide"					"f0"
		"tall"					"340"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"fillColor"				"0 0 0 0"
	}
	
	"DrpAspectRatio"
	{
		"ControlName"		"DropDownMenu"
		"fieldName"			"DrpAspectRatio"
		"xpos"				"c-205" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"xpos"				"c-280" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"ypos"				"110"
		"zpos"				"3"
		"wide"				"410" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"wide"				"550" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"tall"				"15"
		"visible"			"1"
		"enabled"			"1"
		"usetitlesafe"		"0"
		"tabPosition"		"0"
		"navUp"				"Btn3rdPartyCredits"
		"navDown"			"DrpResolution"
				
		//button and label
		"BtnDropButton"
		{
			"ControlName"				"L4D360HybridButton"
			"fieldName"					"BtnDropButton"
			"xpos"						"0"
			"ypos"						"0"
			"zpos"						"0"
			"wide"						"410" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
			"wide"						"550" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
			"wideatopen"				"410"	[$WIN32WIDE]//wideatopen_wide
			"wideatopen"				"380"	[!$WIN32WIDE]//wideatopen_4x3
			"tall"						"15"
			"autoResize"				"1"
			"pinCorner"					"0"
			"visible"					"1"
			"enabled"					"1"
			"tabPosition"				"1"
			"AllCaps"					"1"
			"labelText"					"#GameUI_AspectRatio"
			"tooltiptext"				"#L4D_aspect_ratio_tip"
			"style"						"DropDownButton"
			"command"					"FlmAspectRatio"
			"ActivationType"			"1"
			"OnlyActiveUser"			"1"
		}
	}
	
	//flyouts		
	"FlmAspectRatio"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmAspectRatio"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"4"
		"InitialFocus"			"BtnOff"
		"ResourceFile"			"resource/UI/L4D360UI/DropDownAspectRatio.res"
		"OnlyActiveUser"		"1"
	}
	
	"DrpResolution"
	{
		"ControlName"		"DropDownMenu"
		"fieldName"			"DrpResolution"
		"xpos"				"c-205" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"xpos"				"c-280" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"ypos"				"130"
		"zpos"				"3"
		"wide"				"410" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"wide"				"550" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"tall"				"15"
		"visible"			"1"
		"enabled"			"1"
		"usetitlesafe"		"0"
		"tabPosition"		"0"
		"navUp"				"DrpAspectRatio"
		"navDown"			"DrpDisplayMode"
				
		//button and label
		"BtnDropButton"
		{
			"ControlName"				"L4D360HybridButton"
			"fieldName"					"BtnDropButton"
			"xpos"						"0"
			"ypos"						"0"
			"zpos"						"0"
			"wide"						"410" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
			"wide"						"550" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
			"wideatopen"				"410"	[$WIN32WIDE]//wideatopen_wide
			"wideatopen"				"380"	[!$WIN32WIDE]//wideatopen_4x3
			"tall"						"15"
			"autoResize"				"1"
			"pinCorner"					"0"
			"visible"					"1"
			"enabled"					"1"
			"tabPosition"				"1"
			"AllCaps"					"1"
			"labelText"					"#GameUI_Resolution"
			"tooltiptext"				"#L4D_resolution_tip"
			"style"						"DropDownButton"
			"command"					"FlmResolution"
			"ActivationType"			"1"
			"OnlyActiveUser"			"1"
		}
	}
	
	//flyouts		
	"FlmResolution"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmResolution"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"4"
		"InitialFocus"			"BtnOff"
		"ResourceFile"			"resource/UI/L4D360UI/DropDownResolution.res"
		"OnlyActiveUser"		"1"
	}
	
	"DrpDisplayMode"
	{
		"ControlName"		"DropDownMenu"
		"fieldName"			"DrpDisplayMode"
		"xpos"				"c-205" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"xpos"				"c-280" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"ypos"				"150"
		"zpos"				"3"
		"wide"				"410" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"wide"				"550" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"tall"				"15"
		"visible"			"1"
		"enabled"			"1"
		"usetitlesafe"		"0"
		"tabPosition"		"0"
		"navUp"				"DrpResolution"
		"navDown"			"SldFilmGrain"
				
		//button and label
		"BtnDropButton"
		{
			"ControlName"				"L4D360HybridButton"
			"fieldName"					"BtnDropButton"
			"xpos"						"0"
			"ypos"						"0"
			"zpos"						"0"
			"wide"						"410" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
			"wide"						"550" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
			"wideatopen"				"410"	[$WIN32WIDE]//wideatopen_wide
			"wideatopen"				"380"	[!$WIN32WIDE]//wideatopen_4x3
			"tall"						"15"
			"autoResize"				"1"
			"pinCorner"					"0"
			"visible"					"1"
			"enabled"					"1"
			"tabPosition"				"1"
			"AllCaps"					"1"
			"labelText"					"#GameUI_DisplayMode"
			"tooltiptext"				"#L4D_display_mode_tip"
			"style"						"DropDownButton"
			"command"					"FlmDisplayMode"
			"ActivationType"			"1"
			"OnlyActiveUser"			"1"
		}
	}
	
	//flyouts		
	"FlmDisplayMode"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDisplayMode"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"4"
		"InitialFocus"			"BtnOff"
		"ResourceFile"			"resource/UI/L4D360UI/DropDownDisplayMode.res"
		"OnlyActiveUser"		"1"
	}
	
	"SldFilmGrain"
	{
		"ControlName"			"SliderControl"
		"fieldName"				"SldFilmGrain"
		"xpos"					"c-205" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"xpos"					"c-280" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"wide"					"410" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"wide"					"550" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"xpos"					"c-205"
		"ypos"					"170"
		"zpos"					"3"
		"tall"					"15"
		"visible"				"1"
		"enabled"				"1"
		"usetitlesafe"			"0"
		"tabPosition"			"0"
		"minValue"				"0.0"
		"maxValue"				"3.0"
		"stepSize"				"0.2"
		"navUp"					"DrpDisplayMode"
		"navDown"				"DrpAntialias"
		"conCommand"			"mat_grain_scale_override"
		"usetitlesafe"			"0"
		"inverseFill"			"0"
		
		//button and label
		"BtnDropButton"
		{
			"ControlName"			"L4D360HybridButton"
			"fieldName"				"BtnDropButton"
			"xpos"					"0"
			"ypos"					"0"
			"zpos"					"0"
			"wide"					"410" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
			"wide"					"550" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
			"wideatopen"			"410"	[$WIN32WIDE]//wideatopen_wide
			"wideatopen"				"380"	[!$WIN32WIDE]//wideatopen_4x3
			"tall"					"15"
			"autoResize"			"1"
			"pinCorner"				"0"
			"visible"				"1"
			"enabled"				"1"
			"tabPosition"			"0"
			"AllCaps"					"1"
			"labelText"				"#L4D360UI_VideoOptions_FilmGrain"

			"tooltiptext"			"#L4D_film_grain_tip"						[$WIN32]
			"disabled_tooltiptext"	"#L4D360UI_VideoOptions_Tooltip_FilmGrain_Disabled"
			"style"					"DefaultButton"
			"command"				""
			"ActivationType"		"1"	
			"OnlyActiveUser"		"1"
			"usablePlayerIndex"		"nobody"
		}
	}
	
	"BtnAdvanced"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnAdvanced"
		"xpos"					"c-205"
		"ypos"					"320" [$OSX]
		"ypos"					"340" [!$OSX]
		"zpos"					"0"
		"wide"					"260"
		"tall"					"15"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"0"
		"enabled"				"0"
		"tabPosition"			"0"
		"wrap"					"1"
		"navUp"					"SldFilmGrain"
		"navDown"				"DrpAntialias"
		"AllCaps"				"1"
		"labelText"				"#L4D_advanced_settings"
		"tooltiptext"			"#L4D_advanced_settings_tip"
		"style"					"DefaultButton"
		"command"				"ShowAdvanced"
		EnabledTextInsetX		"2"
		DisabledTextInsetX		"2"
		FocusTextInsetX			"2"
		OpenTextInsetX			"2"
	}
	
	"DrpAntialias"
	{
		"ControlName"		"DropDownMenu"
		"fieldName"			"DrpAntialias"
		"xpos"				"c-205" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"xpos"				"c-280" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"ypos"				"190"
		"zpos"				"3"
		"wide"				"410" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"wide"				"550" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"tall"				"15"
		"visible"			"1"
		"enabled"			"1"
		"usetitlesafe"		"0"
		"tabPosition"		"0"
		"navUp"				"SldFilmGrain"
		"navDown"			"DrpFiltering"
				
		//button and label
		"BtnDropButton"
		{
			"ControlName"				"L4D360HybridButton"
			"fieldName"					"BtnDropButton"
			"xpos"						"0"
			"ypos"						"0"
			"zpos"						"0"
			"wide"						"410" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
			"wide"						"550" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
			"wideatopen"				"410"	[$WIN32WIDE]//wideatopen_wide
			"wideatopen"				"380"	[!$WIN32WIDE]//wideatopen_4x3
			"tall"						"15"
			"autoResize"				"1"
			"pinCorner"					"0"
			"visible"					"1"
			"enabled"					"1"
			"tabPosition"				"1"
			"AllCaps"					"1"
			"labelText"					"#L4D360UI_VideoOptions_Antialiasing"
			"tooltiptext"				"#L4D_anti_alias_tip"
			"style"						"DropDownButton"
			"command"					"FlmAntialias"
			"ActivationType"			"1"
			"OnlyActiveUser"			"1"
		}
	}
	
	//flyouts		
	"FlmAntialias"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmAntialias"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"4"
		"InitialFocus"			"BtnOff"
		"ResourceFile"			"resource/UI/L4D360UI/DropDownAntialias.res"
		"OnlyActiveUser"		"1"
	}
	
	"DrpFiltering"
	{
		"ControlName"		"DropDownMenu"
		"fieldName"			"DrpFiltering"
		"xpos"				"c-205" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"xpos"				"c-280" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"ypos"				"210"
		"zpos"				"3"
		"wide"				"410" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"wide"				"550" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"tall"				"15"
		"visible"			"1"
		"enabled"			"1"
		"usetitlesafe"		"0"
		"tabPosition"		"0"
		"navUp"				"DrpAntialias"
		"navDown"			"DrpVSync"
				
		//button and label
		"BtnDropButton"
		{
			"ControlName"				"L4D360HybridButton"
			"fieldName"					"BtnDropButton"
			"xpos"						"0"
			"ypos"						"0"
			"zpos"						"0"
			"wide"						"410" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
			"wide"						"550" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
			"wideatopen"				"410"	[$WIN32WIDE]//wideatopen_wide
			"wideatopen"				"380"	[!$WIN32WIDE]//wideatopen_4x3
			"tall"						"15"
			"autoResize"				"1"
			"pinCorner"					"0"
			"visible"					"1"
			"enabled"					"1"
			"tabPosition"				"1"
			"AllCaps"					"1"
			"labelText"					"#GameUI_Filtering_Mode"
			"tooltiptext"				"#L4D_filtering_tip"
			"style"						"DropDownButton"
			"command"					"FlmFiltering"
			"ActivationType"			"1"
			"OnlyActiveUser"			"1"
		}
	}
	
	//flyouts		
	"FlmFiltering"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmFiltering"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"4"
		"InitialFocus"			"BtnOff"
		"ResourceFile"			"resource/UI/L4D360UI/DropDownFiltering.res"
		"OnlyActiveUser"		"1"
	}
	
	"DrpVSync"
	{
		"ControlName"		"DropDownMenu"
		"fieldName"			"DrpVSync"
		"xpos"				"c-205" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"xpos"				"c-280" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"ypos"				"230"
		"zpos"				"3"
		"wide"				"410" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"wide"				"550" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"tall"				"15"
		"visible"			"1"
		"enabled"			"1"
		"usetitlesafe"		"0"
		"tabPosition"		"0"
		"navUp"				"DrpFiltering"
		"navDown"			"DrpQueuedMode"
				
		//button and label
		"BtnDropButton"
		{
			"ControlName"				"L4D360HybridButton"
			"fieldName"					"BtnDropButton"
			"xpos"						"0"
			"ypos"						"0"
			"zpos"						"0"
			"wide"						"410" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
			"wide"						"550" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
			"wideatopen"				"260"	[!$GERMAN]
			"wideatopen"				"260"	[$GERMAN]
			"tall"						"15"
			"autoResize"				"1"
			"pinCorner"					"0"
			"visible"					"1"
			"enabled"					"1"
			"tabPosition"				"1"
			"AllCaps"					"1"
			"labelText"					"#GameUI_Wait_For_VSync"
			"tooltiptext"				"#L4D_vertical_sync_tip"
			"style"						"DropDownButton"
			"command"					"FlmVSync"
			"ActivationType"			"1"
			"OnlyActiveUser"			"1"
		}
	}
	
	//flyouts		
	"FlmVSync"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmVSync"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"4"
		"InitialFocus"			"BtnOff"
		"ResourceFile"			"resource/UI/L4D360UI/DropDownVSync.res"
		"OnlyActiveUser"		"1"
	}

	"DrpShaderDetail"
	{
		"ControlName"		"DropDownMenu"
		"fieldName"			"DrpShaderDetail"
		"xpos"				"c-205" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"xpos"				"c-280" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"ypos"				"250"
		"zpos"				"3"
		"wide"				"410" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"wide"				"550" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"tall"				"15"
		"visible"			"1"
		"enabled"			"1"
		"usetitlesafe"		"0"
		"tabPosition"		"0"
		"navUp"				"DrpVSync"
		"navDown"			"DrpCPUDetail"
				
		//button and label
		"BtnDropButton"
		{
			"ControlName"				"L4D360HybridButton"
			"fieldName"					"BtnDropButton"
			"xpos"						"0"
			"ypos"						"0"
			"zpos"						"0"
			"wide"						"410" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
			"wide"						"550" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
			"wideatopen"				"410"	[$WIN32WIDE]//wideatopen_wide
			"wideatopen"				"380"	[!$WIN32WIDE]//wideatopen_4x3
			"tall"						"15"
			"autoResize"				"1"
			"pinCorner"					"0"
			"visible"					"1"
			"enabled"					"1"
			"tabPosition"				"1"
			"AllCaps"					"1"
			"labelText"					"#GameUI_Shader_Detail"
			"tooltiptext"				"#L4D_shader_detail_tip"
			"style"						"DropDownButton"
			"command"					"FlmShaderDetail"
			"ActivationType"			"1"
			"OnlyActiveUser"			"1"
		}
	}
	
	//flyouts		
	"FlmShaderDetail"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmShaderDetail"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"4"
		"InitialFocus"			"BtnOff"
		"ResourceFile"			"resource/UI/L4D360UI/DropDownShaderDetail.res"
		"OnlyActiveUser"		"1"
	}
	
	"DrpCPUDetail"
	{
		"ControlName"		"DropDownMenu"
		"fieldName"			"DrpCPUDetail"
		"xpos"				"c-205" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"xpos"				"c-280" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"ypos"				"270"
		"zpos"				"3"
		"wide"				"410" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"wide"				"550" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"tall"				"15"
		"visible"			"1"
		"enabled"			"1"
		"usetitlesafe"		"0"
		"tabPosition"		"0"
		"navUp"				"DrpShaderDetail"
		"navDown"			"DrpModelDetail"
				
		//button and label
		"BtnDropButton"
		{
			"ControlName"				"L4D360HybridButton"
			"fieldName"					"BtnDropButton"
			"xpos"						"0"
			"ypos"						"0"
			"zpos"						"0"
			"wide"						"410" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
			"wide"						"550" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
			"wideatopen"				"410"	[$WIN32WIDE]//wideatopen_wide
			"wideatopen"				"380"	[!$WIN32WIDE]//wideatopen_4x3
			"tall"						"15"
			"autoResize"				"1"
			"pinCorner"					"0"
			"visible"					"1"
			"enabled"					"1"
			"tabPosition"				"1"
			"AllCaps"					"1"
			"labelText"					"#L4D360UI_VideoOptions_CPU_Detail"
			"tooltiptext"				"#L4D_effect_detail_tip"
			"style"						"DropDownButton"
			"command"					"FlmCPUDetail"
			"ActivationType"			"1"
			"OnlyActiveUser"			"1"
		}
	}
	
	//flyouts		
	"FlmCPUDetail"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCPUDetail"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"4"
		"InitialFocus"			"BtnOff"
		"ResourceFile"			"resource/UI/L4D360UI/DropDownCPUDetail.res"
		"OnlyActiveUser"		"1"
	}
	
	"DrpModelDetail"
	{
		"ControlName"		"DropDownMenu"
		"fieldName"			"DrpModelDetail"
		"xpos"				"c-205" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"xpos"				"c-280" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"ypos"				"290"
		"zpos"				"3"
		"wide"				"410" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"wide"				"550" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"tall"				"15"
		"visible"			"1"
		"enabled"			"1"
		"usetitlesafe"		"0"
		"tabPosition"		"0"
		"navUp"				"DrpCPUDetail"
		"navDown"			"DrpPagedPoolMem"   [!$OSX]
		"navDown"			"BtnUseRecommended"  [$OSX]
				
		//button and label
		"BtnDropButton"
		{
			"ControlName"				"L4D360HybridButton"
			"fieldName"					"BtnDropButton"
			"xpos"						"0"
			"ypos"						"0"
			"zpos"						"0"
			"wide"						"410" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
			"wide"						"550" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
			"wideatopen"				"410"	[$WIN32WIDE]//wideatopen_wide
			"wideatopen"				"380"	[!$WIN32WIDE]//wideatopen_4x3
			"tall"						"15"
			"autoResize"				"1"
			"pinCorner"					"0"
			"visible"					"1"
			"enabled"					"1"
			"tabPosition"				"1"
			"AllCaps"					"1"
			"labelText"					"#L4D360UI_VideoOptions_Model_Texture_Detail"
			"tooltiptext"				"#L4D_model_texture_tip"
			"style"						"DropDownButton"
			"command"					"FlmModelDetail"
			"ActivationType"			"1"
			"OnlyActiveUser"			"1"
		}
	}
	
	//flyouts		
	"FlmModelDetail"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmModelDetail"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"4"
		"InitialFocus"			"BtnOff"
		"ResourceFile"			"resource/UI/L4D360UI/DropDownModelDetail.res"
		"OnlyActiveUser"		"1"
	}

	"DrpQueuedMode"
	{
		"ControlName"		"DropDownMenu"
		"fieldName"			"DrpQueuedMode"
		"xpos"				"c-205" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"xpos"				"c-280" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"ypos"				"310"
		"zpos"				"3"
		"wide"				"410" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"wide"				"550" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"tall"				"15"
		"visible"			"1"
		"enabled"			"1"
		"usetitlesafe"		"0"
		"tabPosition"		"0"
		"navUp"				"DrpVSync"
		"navDown"			"DrpShaderDetail"
				
		//button and label
		"BtnDropButton"
		{
			"ControlName"				"L4D360HybridButton"
			"fieldName"					"BtnDropButton"
			"xpos"						"0"
			"ypos"						"0"
			"zpos"						"0"
			"wide"						"410" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
			"wide"						"550" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
			"wideatopen"				"410"	[$WIN32WIDE]//wideatopen_wide
			"wideatopen"				"380"	[!$WIN32WIDE]//wideatopen_4x3
			"tall"						"15"
			"autoResize"				"1"
			"pinCorner"					"0"
			"visible"					"1"
			"enabled"					"1"
			"tabPosition"				"1"
			"AllCaps"					"1"
			"labelText"					"#L4D360UI_VideoOptions_Queued_Mode"
			"tooltiptext"				"#L4D360UI_VideoOptions_Queued_Mode_Tooltip"
			"style"						"DropDownButton"
			"command"					"FlmQueuedMode"
			"ActivationType"			"1"
			"OnlyActiveUser"			"1"
		}
	}
	
	//flyouts		
	"FlmQueuedMode"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmQueuedMode"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"4"
		"InitialFocus"			"BtnOn"
		"ResourceFile"			"resource/UI/L4D360UI/DropDownQueuedMode.res"
		"OnlyActiveUser"		"1"
	}

	"DrpPagedPoolMem" [!$OSX]
	{
		"ControlName"		"DropDownMenu"
		"fieldName"			"DrpPagedPoolMem"
		"xpos"				"c-205" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"xpos"				"c-280" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"ypos"				"330"
		"zpos"				"3"
		"wide"				"410" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"wide"				"550" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"tall"				"15"
		"visible"			"1"
		"enabled"			"1"
		"usetitlesafe"		"0"
		"tabPosition"		"0"
		"navUp"				"DrpModelDetail"
		"navDown"			"BtnUseRecommended"
				
		//button and label
		"BtnDropButton"
		{
			"ControlName"				"L4D360HybridButton"
			"fieldName"					"BtnDropButton"
			"xpos"						"0"
			"ypos"						"0"
			"zpos"						"0"
			"wide"						"410" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
			"wide"						"550" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
			"wideatopen"				"410"	[$WIN32WIDE]//wideatopen_wide
			"wideatopen"				"380"	[!$WIN32WIDE]//wideatopen_4x3
			"tall"						"15"
			"autoResize"				"1"
			"pinCorner"					"0"
			"visible"					"1"
			"enabled"					"1"
			"tabPosition"				"1"
			"AllCaps"					"1"
			"labelText"					"#L4D360UI_VideoOptions_Paged_Pool_Mem"
			"tooltiptext"				"#L4D_paged_pool_mem_tip"
			"style"						"DropDownButton"
			"command"					"FlmPagedPoolMem"
			"ActivationType"			"1"
			"OnlyActiveUser"			"1"
		}
	}
	
	//flyouts		
	"FlmPagedPoolMem"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPagedPoolMem"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"4"
		"InitialFocus"			"BtnOff"
		"ResourceFile"			"resource/UI/L4D360UI/DropDownPagedPoolMem.res"
		"OnlyActiveUser"		"1"
	}
		
	"IconUseRecommended"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconUseRecommended"
		"xpos"					"c-225" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"xpos"					"c-300" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"ypos"					"361"
		"zpos"					"0"
		"wide"					"13"
		"tall"					"13"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"scaleImage"			"1"
		"image"					"icon_button_reset"
		"drawcolor" "140 20 0 255" [$x360lodef]//xmas
		"drawcolor" "139 139 139 255"//icon_drawcolor
	}
	
	"BtnUseRecommended"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnUseRecommended"
		"xpos"					"c-205" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"xpos"					"c-280" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"ypos"					"350"
		"zpos"					"0"
		"wide"					"280" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"wide"					"500" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"tall"					"15"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"navUp"					"DrpPagedPoolMem"  [!$OSX]
		"navUp"					"DrpModelDetail"    [$OSX]
		"navDown"				"BtnCancel"
		"AllCaps"				"1"
		"labelText"				"#L4D360UI_UseRecommended"
		"tooltiptext"			"#L4D360UI_UseRecommended_Tooltip"
		"style"					"DefaultButton"
		"command"				"UseRecommended"
		EnabledTextInsetX		"2"
		DisabledTextInsetX		"2"
		FocusTextInsetX			"2"
		OpenTextInsetX			"2"
	}
	
	"IconCancel"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconCancel"
		"xpos"					"c-225" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"xpos"					"c-300" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"ypos"					"381"
		"zpos"					"0"
		"wide"					"13"
		"tall"					"13"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"scaleImage"			"1"
		"image"					"icon_button_cancel"
		"drawcolor" "140 20 0 255" [$x360lodef]//xmas
		"drawcolor" "139 139 139 255"//icon_drawcolor
	}
	
	"BtnCancel"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnCancel"
		"xpos"					"c-205" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"xpos"					"c-280" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"ypos"					"370"
		"zpos"					"0"
		"wide"					"260"
		"tall"					"15"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"navUp"					"BtnUseRecommended"
		"navDown"				"BtnDone"
		"AllCaps"				"1"
		"labelText"				"#L4D360UI_Cancel"
		"tooltiptext"			"#L4D360UI_Tooltip_Cancel"
		"style"					"DefaultButton"
		"command"				"Cancel"
		EnabledTextInsetX		"2"
		DisabledTextInsetX		"2"
		FocusTextInsetX			"2"
		OpenTextInsetX			"2"
	}
	
	"IconBackArrow"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconBackArrow"
		"xpos"					"c-225" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"xpos"					"c-300" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE] 
		"ypos"					"401"
		"wide"					"13"
		"tall"					"13"
		"zpos"					"0"
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"icon_button_done"
		"drawcolor" "140 20 0 255" [$x360lodef]//xmas
		"drawcolor" "139 139 139 255"//icon_drawcolor
		"scaleImage"			"0"
	}

	"BtnDone"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnDone"
		"xpos"					"c-205" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $SCHINESE || $TCHINESE]
		"xpos"					"c-280" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$SCHINESE && !$TCHINESE]
		"ypos"					"390"
		"zpos"					"0"
		"wide"					"260"
		"tall"					"15"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"navUp"					"BtnCancel"
		"navDown"				"Btn3rdPartyCredits"
		"AllCaps"				"1"
		"labelText"				"#L4D360UI_Done"
		"tooltiptext"			"#L4D360UI_Tooltip_Back"
		"style"					"RedButton"
		"command"				"Back"
		EnabledTextInsetX		"2"
		DisabledTextInsetX		"2"
		FocusTextInsetX			"2"
		OpenTextInsetX			"2"
	}
	
	"Btn3rdPartyCredits"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"Btn3rdPartyCredits"
		"xpos"					"c-140"
		"ypos"					"430"
		"zpos"					"0"
		"wide"					"280"
		"tall"					"15"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"navUp"					"BtnDone"
		"navDown"				"DrpAspectRatio"
		"AllCaps"				"1"
		"labelText"				"#GameUI_ThirdPartyVideo_Title"
		"tooltiptext"			"#GameUI_ThirdPartyTechCredits"
		"style"					"DialogButton"
		"command"				"3rdPartyCredits"
		EnabledTextInsetX		"2"
		DisabledTextInsetX		"2"
		FocusTextInsetX			"2"
		OpenTextInsetX			"2"
	}
}
