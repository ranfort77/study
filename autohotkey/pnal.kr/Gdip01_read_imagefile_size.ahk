#include Gdip_All.ahk

image := "image\daum_id_login.png"

pToken := Gdip_StartUp()

pBitmap := Gdip_CreateBitmapFromFile(image)
Gdip_GetImageDimensions(pBitmap, outputWidth, outputHeight)
Gdip_DisposeImage(pBitmap)
Gdip_Shutdown(pToken)

MsgBox, % "너비: " outputWidth ", 높이: " outputHeight
Exitapp