#NoEnv
#Warn
s := "https://pnal.kr"
re := "([a-z]+)://[a-z]+\.[a-z]{2,3}"
pos := RegExMatch(s, re, match)

msgbox % format("{}`n{}", match, match1)

