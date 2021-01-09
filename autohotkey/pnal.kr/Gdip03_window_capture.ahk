#Include Gdip_All.ahk

windowTitle := "Gdip03_window_capture.ahk - SciTE4AutoHotkey"

pToken := Gdip_Startup()

pBitmap := Gdip_BitmapFromHwnd(WinExist(windowTitle))
Gdip_SaveBitmapToFile(pBitmap, "result.png")
Gdip_DisposeImage(pBitmap)

Gdip_Shutdown(pToken)
ExitApp