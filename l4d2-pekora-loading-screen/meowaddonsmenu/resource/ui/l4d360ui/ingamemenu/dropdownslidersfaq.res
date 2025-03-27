"Resource/UI/DropDownSlidersFAQ.res"
{
	"PnlBackground"
	{
		"ControlName"			"Panel"
		"fieldName"				"PnlBackground"
		"xpos"					"0"
		"ypos"					"0"
		"zpos"					"-1"
		"wide"					"320"
		"tall"					"340"
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
		"wide"					"320"
		"tall"					"340"
		"visible"				"1"
		"enabled"				"1"
		"bgcolor_override"	"0 0 0 255"
		"PaintBackgroundType"	"1"
	}
	"Info"
	{
		"ControlName"		"Label"
		"fieldName"		"Info"
		"xpos"			"6"
		"ypos"			"2"//themlabelsypos
		"wide"			"308"
		"tall"			"220"
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"textAlignment"			"north-west"
		"wrap"					"1"
		"Font"					"BlogPostText"
		"tabPosition"	"0"
		"labelText"				"Слайдеры в развертывающихся меню можно двигать мышкой и стрелками влево-вправо. Настройка активна, пока не отпустите левую кнопку (даже если слайдер уже не отображается). Используйте только стрелки для активации слайдера инструктора по игре! Для большинства слайдеров был установлен шаг одного нажатия стрелки 25-50, кроме net_graph и FOV, где шаг 1ед. Слайдеры не масштабируются корректно, так что в зависимости от разрешения монитора возможен бардак. Изначально было настроено на 1920x1080." [$RUSSIAN]
		"labelText"				"You can drag flyout menu sliders as long you don't let go of left mouse button, even if they don't draw anymore. Alternatively, you can use keyboard arrows or D-pad on controller. Game Instructor slider is very buggy - use arrows instead of mouse. Arrowkey increments for sliders have been set for efficient changing min-max within few clicks, except position sliders for net_graph and FOV, which work in small increments to allow more precise settings. Couldn't implement any buttons, so sliders were the only choice. Sliders don't scale, so they do get mispositioned more or less depending on screen resolution. Initially they have been adjusted for 1920x1080." [!$RUSSIAN]
		"fgcolor_override"		"255 255 255 255"//desc_color
		//"bgcolor_override"		"0 0 255 200"
		"zpos"					"1"
	}
}
