#Include Gdip_All.ahk
#Include Gdip_ImageSearch.ahk

; window 탐색기의 물음표 찾기
windowTitle := "01-pnal"
image := "image\question_mark_in_polder_explorer.png"

pToken := Gdip_Startup()
pHaystack := Gdip_BitmapFromHwnd(WinExist(windowTitle))
pNeedle := Gdip_CreateBitmapFromFile(image)
result := Gdip_ImageSearch(pHaystack, pNeedle, outputVar)

Gdip_DisposeImage(pHaystack)
Gdip_DisposeImage(pNeedle)
Gdip_Shutdown(pToken)

if (result = 1)
{
    RegExMatch(outputVar, "(.*),(.*)", out)
    MsgBox, X: %out1% Y: %out2%
}

ExitApp