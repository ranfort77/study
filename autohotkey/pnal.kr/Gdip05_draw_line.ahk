#Include Gdip_All.ahk
Gui, Add, Picture, x0 y0 w300 h300 vPic,
Gui, Show, w300 h300, test
return

A::
pToken := Gdip_StartUp()
pBitmap := Gdip_CreateBitmap(300, 300)
pPen := Gdip_CreatePen(0xff00C896, 4)
G := Gdip_GraphicsFromImage(pBitmap)
Gdip_DrawLine(G, pPen, 10, 10, 280, 280)
hBitmap := Gdip_CreateHBITMAPFromBitmap(pBitmap)
Guicontrol, , pic, HBITMAP:%hBitmap%
return

GuiClose:
Gdip_Shutdown(pToken)
Gdip_DisposeImage(pBitmap)
Gdip_DeletePen(pPen)
Gdip_DeleteGraphics(G)
ExitApp