"Resource/UI/DropDown_InstructorSliderHint.res"
{
	"PnlBackground"
	{
		"ControlName"			"Panel"
		"fieldName"				"PnlBackground"
		"xpos"					"0"
		"ypos"					"0"
		"zpos"					"-1"
		"wide"					"90"
		"tall"					"140"  [$RUSSIAN]
		"tall"					"120"  [!$RUSSIAN]
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
		"wide"					"90"
		"tall"					"140"  [$RUSSIAN]
		"tall"					"120"  [!$RUSSIAN]
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
		"wide"			"88"
		"tall"			"95"  [$RUSSIAN]
		"tall"			"80"  [!$RUSSIAN]
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"textAlignment"			"north-west"
		"wrap"					"1"
		"Font"					"defaultverysmall"
		"tabPosition"	"0"
		"labelText"				"Инструктор: используй стрелки влево-вправо чтобы ВЫКЛ/ВКЛ. Мышкой не работает." [$RUSSIAN]
		"labelText"				"Game instructor slider: use left-right arrow keys to enable/disable, otherwise doesn't work!" [!$RUSSIAN]
		"fgcolor_override"		"255 255 255 255"//desc_color
		//"bgcolor_override"		"0 0 255 200"
		"zpos"					"1"
	}
}
