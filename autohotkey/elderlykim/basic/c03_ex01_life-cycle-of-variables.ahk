/*
본 코드는 "킴영감 GUI, 마우스클릭 - 오토핫키 기초강의 #3" 의 내용 중 6:30의
변수 생명에 관한 언급의 검증이다.
링크: https://www.youtube.com/watch?v=toLmqkAx6bA&list=PL--lMTarQb9n362mKYN85dIYItzmYupjT&index=3

동영상에서는 brace가 변수의 local workspace와 같은 역할을 할 것이라 언급하였는데
이는 잘못되었다. brace가 local workspace 같은 역할을 하려면 brace 안에 정의한
변수의 값을 밖에서 출력할 수 없어야 하는데 그렇지 않다. 값에 접근할 수 있다.

*/

var1 := 1
{
	var2 := 2
}
{
	var3 := 3
}
MsgBox, %var2%  ; 2 출력
MsgBox, %var3%  ; 3 출력
var4 := var2 + var3
MsgBox, %var4%  ; 5 출력
return

