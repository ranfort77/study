Gui, Add, ListView, x10 y10 w200 h100 vLog Grid, 시간|동작
Gui, Add, Button, x10 y120 w90 h20, Add
Gui, Add, Button, x110 y120 w90 h20, Del
Gui, show, , 매크로

FormatTime, outTime, , M-d H:m:s
LV_Add("", outTime, "프로그램 실행")
LV_ModifyCol()
return

ButtonAdd:
{
	FormatTime, outTime, , M-d H:m:s
	LV_Add("", outTime, "Add 누름")
}
return

ButtonDel:
{
	FormatTime, outTime, , M-d H:m:s
	LV_Add("", outTime, "Del 누름")
}
return

GuiClose:
{
	ExitApp
}
return