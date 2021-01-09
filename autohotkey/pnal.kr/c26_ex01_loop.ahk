i := 6
loop, 3
{
	j := 1
	s := ""
	loop, 9
	{
		s .= i " x " j " = " i*j "`n"
		j++
	}
	MsgBox, % s
	i++
}
ExitApp