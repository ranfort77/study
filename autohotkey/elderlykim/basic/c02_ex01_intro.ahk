/*
본 코드는 "킴영감 GUI, 마우스클릭 - 오토핫키 기초강의 #2" 의 내용이다.
링크: https://www.youtube.com/watch?v=etRYUeddQzk

이 강의에서 새롭게 알게된 사실은

1. gLable을 쓰지 않고 "콘트롤이름+콘트롤타이틀"로 버튼의 서브루틴명을
정의할 수 있고 gLabel을 쓴 효과와 같다는 것이다. 
이것의 장점은 개발자가 gui를 개발할 때 gui에 콘트롤과 코드를
매치시킬 수 있기 때문에 직관적이라는 점이다.
단점으로, 콘트롤타이틀이 겹치면 어떻게 처리하는가 이다.

2. 킴영감은 서브루틴의 내용을 정의할 때 brace로 감싸는 것을
추천하였는데, 이것은 indentation의 목적 이외에 다른 의미가 있는가?
예를 들어 brace로 감싸지 않은 것과 감싼 것 사이에 변수 scope가
차이가 난다던지 아니면 관례상 더 좋다던지 하는 장점이 있는가? 내가 
확인한 바로는 차이가 없다.

3. send 커맨드로도 click을 할 수 있다.

*/

Gui, add, text, x30 y5 w110 h20, 매크로 프로그램
Gui, add, button, x20 y25 w110 h20, 시작
Gui, add, button, x20 y55 w110 h20, 종료
Gui, show, , 매크로
return

button시작:
{
	CoordMode, mouse, screen
	click 640, 50
	sleep 100
	send {click 640, 50}
}
return

button종료:
{
	ExitApp
}
return

GuiClose:
{
	ExitApp
}
return