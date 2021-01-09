F1::
gugudan(1)
return 

F2::
gugudan(2)
return 

F3::
gugudan(3)
return 

F4::
gugudan(4)
return 

F5::
gugudan(5)
return 

F6::
gugudan(6)
return 

F7::
gugudan(7)
return 

F8::
gugudan(8)
return 

F9::
gugudan(9)
return 

F10::
ExitApp

gugudan(dan)
{
	Loop, 9
		s .= dan " x " A_index " = " dan * A_index "`n"
	MsgBox, %s%
}