; 혼자 구현할 당시 대부분의 기능은 구현하였으나, 아래 두 가지 요소를 구현하지 못하였다.
;  1. 만들기 버튼을 Enter로 누르도록 하기 
;  2. 결과를 MsgBox로 알려줄 때, MsgBox가 Gui 보다 위에 오기
;
; 정답을 본 후, 1번은 Btn1 subroutine 위에 hotkey로 정의하면 되는 것을 알게됨
; 2번은 MsgBox,262144 를 이용하면 되는데 이거는 본문에 안 가르쳐 줬던 내용이었던 것 같다.
; 그리고 만들기 버튼을 Enter hotkey로 지정하면 MsgBox의 확인을 Enter키로 못 누른다.
;
; 그리고 정답코드를 보고 안 사실은 한 콘트롤의 gLable과 vLable의 이름이 같아도 된다는 것이다.
; 그러나 여러모로 조금 위험한 코딩 방법이 아닐까 생각되고, 부작용이 있지 않을까 염려스럽다.

Gui, Add, ListBox, x10 y10 w140 h60 gList1 vList1Var, 과채류|고기류|가공식품|기타
Gui, Add, Button, x160 y10 w70 h50 gBtn1 vBtn1Var, 만들기
Gui, Add, Edit, x10 y70 w220 h20 Disabled vEdit1Var, 기타 품목 입력
Gui, Show, w240 h100, 품목 관리
Gui, +AlwaysOnTop
return 

List1:
Gui, Submit, NoHide
if (List1Var = "기타") {
	GuiControl, Enable, Edit1Var
	GuiControl, , Edit1Var
}
else {
	GuiControl, Disable, Edit1Var
	GuiControl, , Edit1Var, 기타 품목 입력
}
return

Enter::
Btn1:
Gui, Submit, NoHide
if (List1Var = "과채류")
	output("사과, 당근, 오이, 배")
else if (List1Var = "고기류")
	output("돼지, 소, 닭, 오리")
else if (List1Var = "가공식품")
	output("라면, 과자, 음료수")
else if (List1Var = "기타")
	output(Edit1Var)
else
	MsgBox, 항목을 선택해주세요
return


GuiClose:
ExitApp

output(products) {
	fname := "품목.txt"
	FileDelete, %fname%
	FileAppend, %products%, %fname%
	MsgBox, 262144,,%products%
	return
}
