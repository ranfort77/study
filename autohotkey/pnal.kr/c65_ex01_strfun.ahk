﻿var := "abcdefghijklmnopqrstuvwxyz4567894253850561805423123048945612030234897460123231748940312680748421023150484640648946102313878997464646612312312331897496774"
MsgBox % SubStr(var, 27)
RegExMatch(var, "[0-9]+", nums)
MsgBox % nums "`n`n숫자는 총 " StrLen(nums) "글자 입니다."