; 문제 조건과는 다르게 daum에 로그인 하도록 코드를 작성하였다.
; 그리고 id, pw를 입력한 후 대화상자를 클릭하고 확인 버튼을 누르면
; 곧바로 daum 페이지를 열고 로그인 콘트롤를 imagesearch 로 찾은 후
; id, pw를 입력하도록 하였다.
; imagesearch 되는 창은 (0, 0)~(1920, 1080)으로 싱글모니터 FHD 해상도
; 임을 가정한다. 나중에 스크린 해상도를 얻어서 자동으로 해상도 설정을
; 하는 방법도 있을 것이다.
; 로그인 id 또는 pw에 특수문자가 있으면 sendraw를 사용해야 한다.

mg := 10  ; global margin
we := 120 ; width of edit
he := 20  ; height of edit
wb := 80  ; width of button
hb := 2*he + mg ; height of button

Gui, Add, Edit, % "x"mg " y"0*(mg+he)+mg " w"we " h"he " vuserid", % "ID"
Gui, Add, Edit, % "x"mg " y"1*(mg+he)+mg " w"we " h"he " vuserpw", % "PW"
Gui, Add, Button, % "x"1*(mg+we)+mg " y"mg " w"wb " h"hb " gBtn", % "대화상자"
Gui, Show, % "w"mg+we+mg+wb+mg "h"2*(mg+he)+mg, 문제 1 정답
return

Btn:
Gui, Submit, NoHide
MsgBox, % "ID: " userid "`nPW: " userpw
send, {F1}
return

GuiClose:
ExitApp

F1::
Run, https://www.daum.net/
sleep, 3000 ; 웹페이지 대기 시간
ImageSearch, px, py, 0, 0, 1920, 1080, *30 image\daum_id_login.png
if (errorlevel = 1) {
	MsgBox, 이미지를 찾을 수 없습니다
	return
}
if (errorlevel = 2) {
	MsgBox, 다른 이유로 이미지서치를 할 수 없습니다.
	return
}
;~ 이미지를 찾은 경우
MouseClick, Left, px, py
sleep, 3000 ; 웹페이지 대기 시간
sendRaw, % userid
send, % "{TAB}"
sendRaw, % userpw
send, % "{Enter}"
return