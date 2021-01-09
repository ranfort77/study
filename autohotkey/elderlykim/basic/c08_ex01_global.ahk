
; ---------------------------------
; 테스트 2
Gui, Add, Button, x10 y10 w100 h30, Btn1
Gui, Add, Button, x10 y40 w100 h30, Btn2
Gui, Show, w120 h80, Test
return 

ButtonBtn1:
{
	level1var := 1
	{
		level2var := 2
	}
}
return

ButtonBtn2:
{
	MsgBox, level1var= %level1var%
	MsgBox, level2var= %level2var%
}
return

GuiClose:
{
	ExitApp
}
return
; ---------------------------------