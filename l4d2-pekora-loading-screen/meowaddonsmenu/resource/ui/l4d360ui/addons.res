"Resource/UI/Addons.res"
{
	"Addons"
	{
		"ControlName"		"Frame"
		"fieldName"		"Addons"
		
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
	
	"Background_top"
	{
		"ControlName"			"EditablePanel"
		"fieldname"				"Background_top"
		"xpos"					"c-390"
		"ypos"					"5"
		"wide"					"775"
		"tall"					"35"
		"zpos"					"-11"
		"visible"				"1"
		"enabled"				"1"
		"bgcolor_override" "70 0 0 255" [$x360lodef]//xmas
		"bgcolor_override"		"20 20 20 255"
		"PaintBackgroundType"	"2"
	}

	"Background_left"
	{
		"ControlName"			"EditablePanel"
		"fieldname"				"Background_left"
		"xpos"					"c-390"
		"ypos"					"5"
		"wide"					"488" [$win32wide]
		"wide"					"458"
		"tall"					"470"
		"zpos"					"-10"
		"visible"				"1"
		"enabled"				"1"
		"bgcolor_override" "70 0 0 255" [$x360lodef]//xmas
		"bgcolor_override"		"20 20 20 255"
		"PaintBackgroundType"	"2"
	}
	
	"Background_bottom"
	{
		"ControlName"			"EditablePanel"
		"fieldname"				"Background_bottom"
		"xpos"					"c-390"
		"ypos"					"196" [$win32wide]
		"ypos"					"194"
		"wide"					"775"
		"tall"					"279" [$win32wide]
		"tall"					"281"
		"zpos"					"-12"
		"visible"				"1"
		"enabled"				"1"
		"bgcolor_override" "70 0 0 255" [$x360lodef]//xmas
		"bgcolor_override"		"20 20 20 255"
		"PaintBackgroundType"	"2"
	}	
	
	"Background_right"
	{
		"ControlName"			"EditablePanel"
		"fieldname"				"Background_right"
		"xpos"					"c379" [$win32wide]
		"xpos"					"c295"
		"ypos"					"5"
		"wide"					"7"
		"tall"					"470"
		"zpos"					"-13"
		"visible"				"1"
		"enabled"				"1"
		"bgcolor_override" "70 0 0 255" [$x360lodef]//xmas
		"bgcolor_override"		"20 20 20 255"
		"PaintBackgroundType"	"2"
	}

	"GplAddons"
	{
		"ControlName"			"GenericPanelList"
		"fieldName"				"GplAddons"
		"xpos"					"c-385"	[$WIN32WIDE]
		"xpos"					"c-296"
		"ypos"					"40"
		"wide"					"475"	[$WIN32WIDE]
		"wide"					"360"
		"tall"					"390"
		"zpos"					"1"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"panelBorder"			"0"//Urik: removed that buggy annoying gap
		"bgcolor_override" 				"0 0 0 255"
		"navLeft"				"BtnCancel"
		"navRight"				"DrpFilterTags"
		"NoWrap"				"1"
		"panelBorder"			"2" 
	}	

	"LblNoAddonsFiltered"
	{
		"ControlName"		"Label"
		"fieldName"			"LblNoAddonsFiltered"
		"xpos"				"c-385"	[$WIN32WIDE]
		"xpos"				"c-296"
		"wide"				"462"	[$WIN32WIDE]
		"wide"				"347"
		"ypos"				"195"
		"tall"				"60" 
		"zpos"				"5"
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"0"
		"enabled"			"1"
		"tabPosition"		"0"
		"font"				"DefaultVerySmall"
		"textAlignment"		"center"
		"labelText"			"#L4D360UI_No_Addons_Filtered"
		//"bgcolor_override"	"255 0 255 100"
	}
	
	"LblNoAddons"
	{
		"ControlName"		"Label"
		"fieldName"			"LblNoAddons"
		"xpos"				"c-385"	[$WIN32WIDE]
		"xpos"				"c-296"
		"wide"				"462"	[$WIN32WIDE]
		"wide"				"347"
		"ypos"				"195"
		"tall"				"60" 
		"zpos"				"5"
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
		"font"				"DefaultVerySmall"
		"textAlignment"		"center"
		//"labeltext"			"check one two"
		//"fgcolor_override"	"150 150 150 150"
	}
	
	"IconBackArrow"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconBackArrow"
		"xpos"					"c-380"	[$win32wide]
		"xpos"					"c-290"	
		"ypos"					"440" [$win32wide]
		"ypos"					"438"
		"wide"					"30"
		"tall"					"30"
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"addonsmenu/icon_done"
		"drawcolor"				"139 139 139 255"//icon_drawcolor
		"scaleImage"			"1"
	}		
	"BtnCancel"
	{
		"ControlName"				"Button"
		"fieldName"					"BtnCancel"
		"xpos"						"c-380"	[$win32wide]
		"xpos"						"c-290"	
		"ypos"						"440" [$win32wide]
		"ypos"						"435"
		"zpos"						"1"
		"wide"						"170" [$win32wide]
		"wide"						"170"
		"tall"						"30" [$win32wide]
		"tall"						"36"
		"visible"					"1"
		"enabled"					"1"
		"tabPosition"				"0"
		"navUp"						""
		"navDown"					""
		"labelText"					"APPLY CHANGES" [$english]
		"labelText"					"Сохранить Изменения" [$russian]
		"labelText"					"#L4D360UI_Done"
		"tooltiptext"				""
		"tooltiptext"				"Apply Changes" [$english]
		"tooltiptext"				"Сохранить Изменения" [$russian]
		"textalignment"				"center"
		"font"						"DefaultVerySmall"
		"style"						"Button"
		"allcaps"					"1"
		"ActivationType"			"1"
		"paintborder"				"1"
		"defaultBgColor_override"	"0 0 0 150"
		//"armedBgColor_override"		"0 255 0 100"
		"armedBgColor_override"		"0 255 0 100"
		"depressedBgColor_override"	"0 0 0 100"
		"sound_armed"				"ui/buttonrollover.wav"
		"sound_depressed"			""
		"sound_released"			""
		"command"					"Back"
	}
	
	//because in longer languages the button text overlaps the icon, I'm only making it visible for these languages
	"IconBrowseWorkshop" [$english || $spanish || $finnish || $brazilian || $japanese || $korean || $latam || $portuguese || $schinese || $tchinese || $swedish || $thai || $turkish]
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconBrowseWorkshop"
		"xpos"					"c-50" [$win32wide]
		"xpos"					"c-100"
		"ypos"					"440" [$win32wide]
		"ypos"					"455"
		"zpos"					"0"
		"wide"					"30" [$win32wide]
		"tall"					"30" [$win32wide]
		"wide"					"15"
		"tall"					"15"
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"addonsmenu/icon_browse_workshop"
	}
		
	"BtnBrowseWorkshop"
	{
		"ControlName"			"Button"
		"fieldName"				"BtnBrowseWorkshop"
		"xpos"					"c-50" [$win32wide]
		"xpos"					"c-100"
		"ypos"					"440" [$win32wide]
		"ypos"					"455"
		"zpos"					"1"
		"wide"					"140" [$win32wide]
		"wide"					"164"
		"tall"					"30" [$win32wide]
		"tall"					"15"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"navUp"					""
		"navDown"				""
		"labelText"				"Перейти в WORKSHOP" [$RUSSIAN]
		"labelText"				"#L4D360UI_ADDON_BROWSE_WORKSHOP" [!$RUSSIAN]
		"tooltiptext"			""
		"textalignment"			"center"
		"font"					"DefaultVerySmall"
		"style"					"Button"
		"allcaps"				"1"
		"ActivationType"		"1"
		"paintborder"				"1"
		"defaultBgColor_override"		"0 0 0 150"
		"armedBgColor_override"		"0 0 0 0"
		"depressedBgColor_override"	"0 0 0 100"
		"sound_armed"				"ui/buttonrollover.wav"
		"sound_depressed"			""
		"sound_released"			""
		"command"				"BrowseWorkshop"
		"proportionalToParent"	"1"
		"usetitlesafe" 			"0"
	}
	
	//because in longer languages the button text overlaps the icon, I'm only making it visible for these languages
	"IconVisitWorkshop" [$english || $spanish || $finnish || $brazilian || $japanese || $korean || $latam || $portuguese || $schinese || $tchinese || $swedish || $thai || $turkish]
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconVisitWorkshop"
		"xpos"					"c-200"	[$win32wide]
		"xpos"					"c-100"
		"ypos"					"440"	[$win32wide]
		"ypos"					"435"
		"zpos"					"0"
		"wide"					"30" [$win32wide]
		"tall"					"30" [$win32wide]
		"wide"					"15"
		"tall"					"15"
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"0"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"addonsmenu/icon_view_in_workshop"
	}	
	
	"BtnVisitWorkshop"
	{
		"ControlName"			"Button"
		"fieldName"				"BtnVisitWorkshop"
		"xpos"					"c-200"	[$win32wide]
		"xpos"					"c-100"
		"ypos"					"440" [$win32wide]
		"ypos"					"435"
		"zpos"					"1"
		"wide"					"140" [$win32wide]
		"wide"					"164"
		"tall"					"30" [$win32wide]
		"tall"					"15"
		"visible"				"0"
		"enabled"				"1"
		"tabPosition"			"0"
		"navUp"					""
		"navDown"				""
		"labelText"				"Смотреть в WORKSHOP" [$RUSSIAN]	//"VIEW ON WORKSHOP"
		"labelText"				"#L4D360UI_ADDON_VISIT_WORKSHOP" [!$RUSSIAN]	//"VIEW ON WORKSHOP"
		"tooltiptext"			""
		"textalignment"			"center"
		"font"					"DefaultVerySmall"
		"style"					"Button"
		"allcaps"				"1"
		"ActivationType"		"1"
		"paintborder"				"1"
		"defaultBgColor_override"		"0 0 0 150"
		"armedBgColor_override"		"0 0 0 0"
		"depressedBgColor_override"	"0 0 0 100"
		"sound_armed"				"ui/buttonrollover.wav"
		"sound_depressed"			""
		"sound_released"			""
		"command"				"VisitWorkshop"
		"proportionalToParent"	"1"
		"usetitlesafe" 			"0"
	}		
	"IconFilters"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconFilters"
		"xpos"					"c-379" [$win32wide]
		"xpos"					"c-291"
		"ypos"					"22"
		"zpos"					"1"
		"wide"					"10"
		"tall"					"10"
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"addonsmenu/icon_filters"
		"drawcolor"				"139 139 139 255"//icon_drawcolor
		"scaleImage"			"1"
	}
	
	"LblFilters"
	{
		"ControlName"				"Label"
		"fieldName"					"LblFilters"
		"xpos"						"1000"
		"ypos"						"600"
		"zpos"						"2"
		"wide"						"255"
		"tall"						"15"
		"autoResize"				"1"
		"pinCorner"					"0"
		"visible"					"0"
		"enabled"					"0"
		"tabPosition"				"0"
		"labelText"					"Фильтры" [$RUSSIAN]
		"labelText"					"#L4D360UI_Addons_Filter_Label" [!$RUSSIAN]
		"textAlignment"				"north-west"
		"Font"						"DefaultMedium"
		"fgcolor_override"			"64 64 64 255"
		"AllCaps"					"1"
	}

	"DrpFilterTags"
	{
		"ControlName"			"DropDownMenu"
		"fieldName"				"DrpFilterTags"
		"xpos"					"c-360" [$WIN32WIDE]
		"xpos"					"c-270"
		"ypos"					"20"
		"zpos"					"1"
		"wide"					"320"
		"tall"					"15"
		"visible"				"1"
		"enabled"				"1"
		"navUp"					"DrpFilterTags"
		"navDown"				"DrpFilterTags"
		
		// button and label
		"BtnDropButton"
		{
			"ControlName"				"L4D360HybridButton"
			"fieldName"					"BtnDropButton"
			"xpos"						"0"
			"ypos"						"0"
			"zpos"						"2"
			"wide"						"220"
			"wideatopen"				"200"
			"tall"						"15"
			"autoResize"				"1"
			"pinCorner"					"0"
			"visible"					"1"
			"enabled"					"1"
			"tabPosition"				"0"
			"labelText"					"ТЭГИ" [$RUSSIAN]
			"labelText"					"#L4D360UI_Addons_Filter_Tags"
			"tooltiptext"				""
			"textAlignment"				"west"
			"style"						"DropDownButton"
			"command"					"FlmFilterTags"
			"allcaps"					"1"
		}
	}

	"FlmFilterTags"
	{
		"ControlName"		"FlyoutMenu"
		"fieldName"			"FlmFilterTags"
		"visible"			"0"
		"wide"				"0"
		"tall"				"0"
		"zpos"				"4"
		"InitialFocus"		"BtnAny"
		"ResourceFile"		"resource/UI/L4D360UI/DropDownAddonsFilterTags.res"
	}

	"AddonSupportRequiredPanel"
	{
		"ControlName"		"EditablePanel"
		"fieldName"			"AddonSupportRequiredPanel"
		"xpos"				"c-180"
		"ypos"				"140"
		"wide"				"400"
		"tall"				"200" 
		"zpos"				"2"
		"visible"			"0"
		"enabled"			"1"
		
		"Icon"
		{
			"ControlName"			"ImagePanel"
			"fieldName"				"Icon"
			"xpos"					"8"	
			"ypos"					"12"
			"zpos"					"1"
			"wide"					"32"
			"tall"					"32"
			"pinCorner"				"0"
			"visible"				"1"
			"enabled"				"1"
			"tabPosition"			"0"
			"scaleImage"			"1"
			"image"					"icon_download"	
			"drawcolor"				"150 150 150 255"
		}
		
		"LblSupportRequired"
		{
			"ControlName"		"Label"
			"fieldName"			"LblInstalling"
			"xpos"				"50"
			"ypos"				"20"
			"wide"				"300"
			"tall"				"18" 
			"zpos"				"1"
			"autoResize"		"0"
			"pinCorner"			"0"
			"visible"			"1"
			"enabled"			"1"
			"tabPosition"		"0"
			"font"				"DefaultLarge"
			"textAlignment"		"west"
			"labelText"			"#L4D360UI_ADDON_SUPPORT_REQUIRED"	//ADD-ON SUPPORT REQUIRED
		}
		
		"LblSupportRequiredDetails"
		{
			"ControlName"		"Label"
			"fieldName"			"LblSupportRequiredDetails"
			"xpos"				"50"
			"ypos"				"44"
			"wide"				"330"
			"tall"				"100" 
			"zpos"				"1"
			"autoResize"		"0"
			"pinCorner"			"0"
			"visible"			"1"
			"enabled"			"1"
			"tabPosition"		"0"
			"font"				"DefaultMedium"
			"textAlignment"		"west"
			"labelText"			"#L4D360UI_ADDON_SUPPORT_REQUIRED_DETAILS"	//"Left 4 Dead 2 requires an additional support package to run third-party add-ons. You can install it from the Tools tab in Steam or by clicking the link below."
			"fgcolor_override"			"MediumGray"
			"wrap"				"1"
		}			
	}
		
	"InstallingAddonSupportPanel"
	{
		"ControlName"		"EditablePanel"
		"fieldName"			"InstallingAddonSupportPanel"
		"xpos"				"c-180"
		"ypos"				"190"
		"wide"				"300"
		"tall"				"50" 
		"zpos"				"2"
		"visible"			"0"
		"enabled"			"1"
		
		"SearchingIcon"
		{
			"ControlName"			"ImagePanel"
			"fieldName"				"SearchingIcon"
			"xpos"					"0"	
			"ypos"					"0"
			"zpos"					"1"
			"wide"					"32"
			"tall"					"32"
			"pinCorner"				"0"
			"visible"				"1"
			"enabled"				"1"
			"tabPosition"			"0"
			"scaleImage"			"1"
			"image"					"common/l4d_spinner"
		}
			
		"LblInstalling"
		{
			"ControlName"		"Label"
			"fieldName"			"LblInstalling"
			"xpos"				"50"
			"ypos"				"0"
			"wide"				"300"
			"tall"				"18" 
			"zpos"				"1"
			"autoResize"		"0"
			"pinCorner"			"0"
			"visible"			"1"
			"enabled"			"1"
			"tabPosition"		"0"
			"font"				"DefaultLarge"
			"textAlignment"		"west"
			"labelText"			"#L4D360UI_ADDON_SUPPORT_INSTALLING"	//"INSTALLING ADD-ON SUPPORT..."
		}
		
		"LblInstallingDetails"
		{
			"ControlName"		"Label"
			"fieldName"			"LblInstallingDetails"
			"xpos"				"50"
			"ypos"				"0"
			"wide"				"200"
			"tall"				"50" 
			"zpos"				"1"
			"autoResize"		"0"
			"pinCorner"			"0"
			"visible"			"1"
			"enabled"			"1"
			"tabPosition"		"0"
			"font"				"DefaultVerySmall"
			"textAlignment"		"west"
			"labelText"			"#L4D360UI_ADDON_SUPPORT_INSTALLING_DETAILS"	//"Check download progress in the Steam Tools tab."
			"fgcolor_override"			"MediumGray"
		}	
	}

	"CheckButtonAssociation"
	{
		"ControlName"		"CvarToggleCheckButton_GameUI"
		"fieldName"		"CheckButtonAssociation"
		"xpos"			"c-140"
		"ypos"			"300"
		"zpos"			"1"
		"wide"			"14"
		"tall"			"14"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"textAlignment"		"west"
		"dulltext"		"0"
		"brighttext"		"0"
		"wrap"			"0"
		"Default"		"0"
	}

	"LblCheckNoAssociation"
	{
		"ControlName"		"Label"
		"fieldName"		"LblCheckNoAssociation"
		"xpos"			"c-120"
		"ypos"			"300"
		"zpos"			"1"
		"wide"			"345"
		"tall"			"14"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"labelText"		"#L4D360UI_Addon_DoNotAssociate"
		"textAlignment"		"west"
		"font"			"DefaultVerySmall"
	}

	"ImgAddonIcon"
	{
		"ControlName"		"ImagePanel"
		"fieldName"			"ImgAddonIcon"
		"xpos"				"c98" [$win32wide]
		"xpos"				"c68"
		"ypos"				"39" [$win32wide]
		"ypos"				"38"
		"zpos"				"20"
		"wide"				"282" [$win32wide]
		"wide"				"228"
		"tall"				"158" [$win32wide]
		"tall"				"128"
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
		"scaleImage"		"1"
	}	
	
	"ImgAddonIconOverlay"
	{
		"ControlName"		"ImagePanel"
		"fieldName"			"ImgAddonIconOverlay"
		"image"				"workshop_overlay"
		"xpos"				"c96"	[$WIN32WIDE]
		"ypos"				"70"	[$WIN32WIDE]
		"xpos"				"c124"	[!$WIN32WIDE]
		"ypos"				"70"	[!$WIN32WIDE]
		"zpos"				"22"
		"wide"				"282"
		"tall"				"158"
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"0"
		"enabled"			"0"
		"tabPosition"		"0"
		"scaleImage"		"1"
	}
	
	"LblName"
	{
		"ControlName"		"Label"
		"fieldName"			"LblName"
		"xpos"				"c98" [$win32wide]	
		"xpos"				"c68"	
		"ypos"				"200" [$win32wide]		
		"ypos"				"170"	
		"wide"				"282" [$win32wide]	
		"wide"				"228"	
		"tall"				"15" 	
		"zpos"				"1"
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
		"font"				"DefaultVerySmall"
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
		"ypos"				"217" [$win32wide]	
		"ypos"				"187"
		"wide"				"282" [$win32wide]	
		"wide"				"228"		
		"tall"				"15" 	
		"zpos"				"1"
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
		"font"			"DefaultVerySmall"
		"textAlignment"		"west"
		"wrap"				"0"
		"dulltext"			"1"		
		//"bgcolor_override"	"222 0 255 50"
	}
	
	"LblType"
	{
		"ControlName"		"Label"
		"fieldName"			"LblType"
		"xpos"				"c98" [$win32wide]	
		"xpos"				"c68"	
		"ypos"				"234" [$win32wide]	
		"ypos"				"204"
		"wide"				"282" [$win32wide]	
		"wide"				"228"		
		"tall"				"15" 	
		"zpos"				"1"
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
		"font"				"DefaultVerySmall"
		"textAlignment"		"west"
		"wrap"				"0"
		"dulltext"			"1"
		//"bgcolor_override"	"0 0 255 50"		
	}
	
	"LblDescription"
	{
		"ControlName"		"Label"
		"fieldName"			"LblDescription"
		"xpos"				"c98" [$win32wide]	
		"xpos"				"c68"	
		"ypos"				"251" [$win32wide]	
		"ypos"				"221"
		"wide"				"282" [$win32wide]	
		"wide"				"228"		
		"tall"				"220" [$win32wide] 		
		"tall"				"250" 	
		"zpos"				"1"
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
	// "IconVPKContent"
	// {
		// "ControlName"			"ImagePanel"
		// "fieldName"				"IconVPKContent"
		// "xpos"					"c100"	[$WIN32WIDE]
		// "ypos"					"196"	[$WIN32WIDE]
		// "xpos"					"c70"	[!$WIN32WIDE]
		// "ypos"					"196"	[!$WIN32WIDE]
		// "wide"					"11"
		// "tall"					"11"
		// "scaleImage"			"1"
		// "pinCorner"				"0"
		// "visible"				"1"
		// "enabled"				"1"
		// "tabPosition"			"0"
		// "image"					"icon_vpkcontent"
		// "frame"					"0"
	// }

		
	"ImgAddonIconSpinner"
	{
		//urik - got rid of that
		"ControlName"		"ImagePanel"
		"fieldName"			"ImgAddonIconSpinner"
		"xpos"				"f0"
		"ypos"				"f0"
		"wide"				"0"
		"tall"				"0"
		"zpos"				"-99"
		"visible"			"0"
		"enabled"			"0"
		"scaleImage"		"1"
		"image"					"black"
	}	


	"IconInstallSupport"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconInstallSupport"
		"xpos"					"c-226"
		"ypos"					"415"
		"wide"					"15"
		"tall"					"15"
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"0"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"icon_download"
		"drawcolor"				"150 150 150 255"
		"scaleImage"			"1"
	}

	"BtnInstallSupport"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnInstallSupport"
		"xpos"					"c-211"
		"ypos"					"415"
		"zpos"					"2"
		"wide"					"250"
		"tall"					"15"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"0"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"labelText"				"#L4D360UI_ADDON_SUPPORT_INSTALL"	//"INSTALL ADD-ON SUPPORT"
		"style"					"RedButton"		// actually teal!
		"command"				"InstallSupport"
		"proportionalToParent"	"1"
		"usetitlesafe" 			"0"
		EnabledTextInsetX		"2"
		DisabledTextInsetX		"2"
		FocusTextInsetX			"2"
		OpenTextInsetX			"2"
		"allcaps"				"1"
	}

	"ImgGlobalAddonIconSpinner"
	{
		"ControlName"		"ImagePanel"
		"fieldName"			"ImgGlobalAddonIconSpinner"
		"xpos"				"c100" [$win32wide]
		"xpos"				"c80"
		"ypos"				"21"
		"zpos"				"10"
		"wide"				"32"
		"tall"				"32"
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"0"
		"enabled"			"1"
		"tabPosition"		"0"
		"scaleImage"		"1"
		"image"					"common/l4d_spinner"
	}		
}
