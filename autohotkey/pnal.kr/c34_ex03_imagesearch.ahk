; pnal.kr 과는 다르게 크롬의 웹페이지 텝 아이콘을 찾는 이미지로 설정하였다.
; ImageSearch 커맨드의 내부 알고리즘이 어떻게 되는지 모르겠으나
; 전체화면에서도 비교적 빠르게 찾아진다.
; pnal.kr의 설명에도 언급되어 있다시피 찾을 이미지는 "특징있게, 작게" 따야한다.
CoordMode, pixel, screen
CoordMode, mouse, screen
F1::
;~ ImageSearch, px, py, 0, 0, 90, 30, *30 image\naver_icon.png
ImageSearch, px, py, 0, 0, 1920, 1080, *30 image\naver_icon.png
if (errorlevel = 0) 
{
	msgbox, % "site active, errorlevel=" errorlevel
	MouseMove, px, py
}
else if  (errorlevel = 1)
{
	msgbox, % "site inactive, errorlevel=" errorlevel
}
else
{
	msgbox, % "errorlevel=" errorlevel
}	
ExitApp