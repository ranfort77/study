; color link: https://pnal.kr/34
F1::
MouseGetPos, vx, vy
PixelGetColor, col, vx, vy, RGB
MsgBox, %col%
ExitApp

