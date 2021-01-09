#include Gdip_All.ahk
pToken := Gdip_StartUp()

pBitmap := Gdip_BitmapFromScreen("123|456|234|567")
Gdip_SaveBitmapToFile(pBitmap, "Result.png")
Gdip_DisposeImage(pBitmap)

Gdip_Shutdown(pToken)
Exitapp