/*
settimer 커맨드는 settimer, <label>, <ms> 형식이다.
입력한 라벨의 서브루틴을 입력한 밀리초 간격으로 반복 실행한다.
settimer 를 끄려면 settimer, <label>, OFF 를 하면 된다.

아래 코드는 1초간격으로 마우스 위치 pixel의 RGB 값을 리스트뷰에 기록한다.
사실 이 구현은 sleep를 이용한 loop 구현이 더 직관적인데, 그냥 settimer를 
응용해 보았다. settimer는 프로그램 실행에 관계없이 독립적인 스레드로 수행되므로
다른 응용처가 있을 것으로 보인다.
*/

#NoEnv
#Warn
CoordMode, Mouse, Screen
CoordMode, Pixel, Screen
Gui, Add, ListView, x10 y10 w210 h100 Grid, time|RGB
Gui, Add, Button, x10 y120 w100 h30, Start
Gui, Add, Button, x120 y120 w100 h30, End
Gui, Show, , untitle
return

GetRGB:
{
	MouseGetPos, px, py
	PixelGetColor, RGBVar, px, py, RGB
	FormatTime, outTime, , M-d H:m:s
	LV_Add("", outTime, RGBVar)
	LV_ModifyCol()
}
return

ButtonStart:
{
	SetTimer, GetRGB, 1000
}
return

ButtonEnd:
{
	SetTimer, GetRGB, Off
}
return

GuiClose:
{
	ExitApp
}
return