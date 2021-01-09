wintitle := "제목 없음.txt - Windows 메모장"
ctl := "Edit1"
i := 5
Loop, 5
{
	ControlSend, %ctl%, %i% 병의 맥주가 벽장에 있네`, %i% 병의 맥주라네`n, %wintitle%
	i--
	ControlSend, %ctl%, 하나를 내려서 넘겼네`, %i% 병의 맥주가 벽장에 있네`n`n, %wintitle%
}
ControlSend, %ctl%, 더 이상 벽장에 맥주가 없네`, 맥주는 더 이상 없다네`n, %wintitle%
ControlSend, %ctl%, 가게로 가서 더 사왔네`, 99병의 맥주가 벽장에 있네`n, %wintitle%
ExitApp