st := A_Hour * 3600 + A_Min * 60 + A_Sec
loop {
	ct := A_Hour * 3600 + A_Min * 60 + A_Sec
	if ((ct - st) >= 5) {
		MsgBox, 프로그램을 켠 지 5초가 지났습니다
		break
	}
}
exitapp
