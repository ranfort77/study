/*
subroutine의 위험성

autohotkey에서 서브루틴은 포트란 서브루틴의 개념과는 전혀 다르다.
자체 변수공간이 없는 것 같고 그냥 global 변수공간에 접근 및 치환이
가능한 코드 덩어리 일 뿐이다. 내 생각에 어떤 로직을 작성할 때
되도록이면 서브루틴은 피해야 하며, gui의 콘트롤 동작을 작성할 때만
사용해야 한다.
아래 코드는 서브루틴의 위험성을 확인하는 예제이다.
sub2Var는 마치 global variable 처럼 거동하며
Warn이 있더라도 runtime 곧바로 warning을 보여주지 않고, 
Sub1 버튼을 먼저 누르면 그때서야 warning을 체크해 준다.
*/

#Warn
gui, add, button, x10 y10 w100 h20, Sub2
gui, add, button, x10 y40 w100 h20, Sub1
gui, show, , test
return

buttonSub1:
msgbox, % format("sub2Var={} in Sub1", sub2Var)
return

buttonSub2:
sub2Var := 22
msgbox, % format("sub2Var={} in Sub2", sub2Var)
return


GuiClose:
ExitApp
