#NoEnv
#Warn
s := "김아무개, 010-0000-0000, ID: qwer1234"
re := "(.+?), (010-[0-9]{4}-[0-9]{4}), ID: ([a-zA-Z0-9_]+)"

pos := RegExMatch(s, re, match)

templet := "matchAll={}`nName={}`nNumber={}`nID={}"
msgbox % format(templet, match, match1, match2, match3)

