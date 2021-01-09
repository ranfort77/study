; 전 문제와 마찬가지로 버튼 콘트롤의 위치를 계산하는 함수를 만들어서
; 호출하는 식으로 만들어 보았다.
w := 150 ; button width
h := 20  ; button height
m := 10 ; margin
n := 3  ; number of vertical buttons
Gui, Add, Button, % getBtnDesc(w, h, m, 1, "gBtn6"), 6단
Gui, Add, Button, % getBtnDesc(w, h, m, 2, "gBtn7"), 7단
Gui, Add, Button, % getBtnDesc(w, h, m, 3, "gBtn8"), 8단
Gui, Show, % " w"1*(m+w)+m " h"n*(m+h)+m, 문제 2 정답
return

Btn6:
MsgBox, % gugudan(6)
return

Btn7:
MsgBox, % gugudan(7)
return

Btn8:
MsgBox, % gugudan(8)
return

GuiClose:
ExitApp

getBtnDesc(w, h, m, num, gLable)
{
	return "x"m " y"(num-1)*(m+h)+m " w"w " h"h " "gLable
}

gugudan(dan)
{
	Loop, 9
		s .= dan " x " A_index " = " dan*A_index "`n"
	return s
}