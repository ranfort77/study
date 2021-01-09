i := 6
loop, 3
{
	s := ""
	loop, 9
	{
		s .= i " x " A_Index " = " i*A_Index "`n"
	}
	MsgBox, % s
	i++
}
ExitApp