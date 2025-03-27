"Resource/UI/dropdown_tvgammahint.res"
{
	"PnlBackground"
	{
		"ControlName"			"Panel"
		"fieldName"				"PnlBackground"
		"xpos"					"0"
		"ypos"					"0"
		"zpos"					"-1"
		"wide"					"100"
		"tall"					"190"  [$RUSSIAN]
		"tall"					"150"  [!$RUSSIAN]
		"visible"				"1"
		"enabled"				"1"
		"paintbackground"		"1"
		"paintborder"			"1"
	}
	"Background1"
	{
		"ControlName"		"EditablePanel"
		"fieldName"			"Background1"
		"xpos"					"0"
		"ypos"					"0"
		"zpos"					"0"
		"wide"					"100"
		"tall"					"190"  [$RUSSIAN]
		"tall"					"140"  [!$RUSSIAN]
		"visible"				"1"
		"enabled"				"1"
		"bgcolor_override"	"0 0 0 255"
		"PaintBackgroundType"	"1"
	}
	"Info"
	{
		"ControlName"		"Label"
		"fieldName"		"Info"
		"xpos"			"2"
		"ypos"			"2"//themlabelsypos
		"wide"			"98"
		"tall"			"150" [$RUSSIAN]
		"tall"			"104" [!$RUSSIAN]
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"textAlignment"			"north-west"
		"wrap"					"1"
		"Font"					"defaultverysmall"
		"tabPosition"	"0"
		"labelText"				"mat_monitorgamma_tv_enabled (ВЫКЛ/ВКЛ). Только в полноэкранном режиме. Используйте только когда нужна дополнительная яркость, в ином случае пользуйтесь основной яркостью (выше)."  [$RUSSIAN]
		"labelText"				"mat_monitorgamma_tv_enabled: works only as off/on and only in fullscreen. Enable ONLY if additional brightness is required, otherwise use normal gamma slider above."  [!$RUSSIAN]
		"fgcolor_override"		"255 255 255 255"//desc_color
		//"bgcolor_override"		"0 0 255 200"
		"zpos"					"1"
	}
}
