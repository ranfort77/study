; 이 문제는 Gui 커맨드를 이용해서 버튼 콘트롤의 위치를 적절히 설정하는 것이 관건이다. 
; 즉, pnal.kr의 정답에 있는 것처럼 콘트롤의 x, y 좌표를 수동으로 설정해도 된다.
; 만약 버튼 콘트롤의 width, height가 수치가 바뀌었을 때 자동으로 재배치 되도록
; x, y 위치를 자동 계산되도록 수식을 설정하면 더 좋다. 
; 이를 위해 x, y, w, h, gButton 옵션의 문자열을 expression으로 표현할 수 있다.
w := 60 ; button width
h := 60 ; button height
m := 10 ; margin
n := 3  ; number of horizontal buttons
Gui, Add, Button, % "x"0*(m+w)+m " y"m " w"w " h"h " gBtn1", 1
Gui, Add, Button, % "x"1*(m+w)+m " y"m " w"w " h"h " gBtn2", 2
Gui, Add, Button, % "x"2*(m+w)+m " y"m " w"w " h"h " gBtn3", 3
Gui, Show, % "w"n*(m+w)+m " h"1*(m+h)+m, 문제1
return

Btn1:
fpush("첫")
return

Btn2:
fpush("두")
return

Btn3:
fpush("세")
return

GuiClose:
ExitApp

fpush(s)
{
	MsgBox, % s " 번째 버튼을 눌렀습니다"
}