

/*
StringSplit는 문자열을 분리하는 커맨드로 지금은 사용을 권장하지 않는다.
대신, StrSplit() 함수를 사용하는게 좋다.
여기서는 StringSplit가 만들어내는 pseudo-arrays를 함수에서 접근할 수
있다는 것을 보여주기 위해 사용한다. 

StringSplit 커맨드의 Signature는 아래와 같다. 
  StringSplit, OutputArray, InputVar [, Delimiters, OmitChars]

StringSplit 커맨드는 InputVar 문자열을 Delimiters를 기준으로
문자열을 분리하여 OutputArray에 지정한 이름으로 pseudo-arrays로
저장한다. 즉, OutputArray를 outArr이라 하면 
분리된 문자열이 각각 outArr1, outArr2, ... 식으로 
분리된 문자열 수 만큼 생긴다.
*/

f()
outArr1 := 1
MsgBox, %outArr2%
return

f() ; assume-local function
{
	StringSplit, outArr, % "a,b,c", % ","
	MsgBox, %outArr1%  ; a
	MsgBox, %outArr2%  ; b
	MsgBox, %outArr3%  ; c	
}
