﻿F1::
s := "느닷없이`n"
s .= "북어들이 커다랗게 입을 벌리고`n"
s .= "거봐,"
loop, 3
{
	s .= " 너도 북어지"
}
s .= "`n귀가 먹먹하도록 부르짖고 있었다.`n`n"
s .= "- 최승호, '북어' 중"
send, %s%
return 

F2::
ExitApp
