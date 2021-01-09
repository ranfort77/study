#NoEnv
#Warn
s := "200, 360"
re := "([0-9]+), ([0-9]+)"
RegExMatch(s, re, match)
x := match1
y := match2

msgbox, % format("x={}`ny={}", x, y)



