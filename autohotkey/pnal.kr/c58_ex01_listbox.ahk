Gui, Add, ListBox, x10 y10 w100 h100 vListVar, 사과|오렌지|바나나|복숭아
Gui, Add, Button,  x120 y10 w100 h100 gBtn, 출력/지우기
Gui, Add, Checkbox, x10 y120 w100 h20 vCheckVar1, 출력모드
Gui, Add, Checkbox, x120 y120 w100 h20 vCheckVar2, 지우기모드
Gui, Show, w230 h150, 문제 정답
return

Btn:
Gui, Submit, NoHide
if (CheckVar1 ^ CheckVar2) {
	if (CheckVar1 = 1)
		MsgBox, %ListVar%
	else
		SendMessage, 0x184, , ,listbox1
}
else {
	MsgBox, 체크박스를 하나만 선택해 주세요
}
return

GuiClose:
ExitApp

