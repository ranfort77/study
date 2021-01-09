; 연습 문제의 기능 구현에 추가해서
; nChkbox 변수를 통해 CheckBox의 개수를 확장할 수 있도록 만들었다. 그리고,
; maxChk 변수를 통해 애니메이션 될 때 체크되는 최대 박스 수를 설정할 수 있다.
; snapTime 변수는 애니메이션 되도록 sleep time을 설정한다. 연습문제의 동영상은
; 100 ms 정도로 보인다.
nChkbox := 20 ; 체크 박스 수
maxChk := 8 ; 애니메이션 되는 체크박스 최대 수
snapTime := 100 ; 밀리초

Loop, %nChkbox%
{
    a := A_index * 20
    gui, add, Checkbox, x%a% y20 w20 h20 vSet%A_index%,
}
Gui, Add, Button, x95 y50 w96 h30 gBtn, 누른다!
Gui, Add, Edit, x-1 y90 w999 h20 Disabled vEdit, 현재 상태: 준비 중
Gui, Show, % "w"nChkbox*20+31 " h109", 굴러간다!
return

Btn:
curChk := 0 ; 현재 체크된 박스 수
i := 0 ; loop index
Loop
{
	i += 1
	; check on
	if (i <= nChkbox) {
		GuiControl, , % "Set"i, 1
		curChk += 1
	}
	; check off
	if (curChk > maxChk || i > nChkbox) {
		GuiControl, , % "Set"i-maxChk, 0
		curChk -= 1
	}
	; 초기화 시점
	; 루프인덱스가 13+5=18 이 되면 13번째 체크박스가 off된 시점
	if (i = (nChkbox + maxChk))
		i := 0
    ; debug print
	GuiControl, , Edit, % "현재 상태: 굴리는 중, curChk="curChk ", sleep=" snapTime " ms"
	; animation time
	Sleep, %snapTime%
}
return

GuiClose:
ExitApp

