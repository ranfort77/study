/*
여기서는 키보드 버튼다운에 대해 알아본다. 
일반적으로 마우스 클릭에 대해서는 down, up을 자주 정의하고 사용하지만
키보드 버튼에 대해서는 그렇지 않다. 
호라이즌 제로던 뿐 아니라 여러 pc게임에서 움직이는 버튼이
a, s, d, w 키를 누르고 있는 것으로 하고, Shift 유지를
달리기 버튼으로 한다. 이것을 autohotkey로 지정하려면 
어떻게 해야 하는가?
*/

#NoEnv 
#Warn
switch := false
return

shift::
switch := !switch
if switch
	send, {shift down}
else
	send, {shift up}
return






