

## Usage and Syntax 도입부

여기는 Usage and Syntax의 Using the Program, Concepts and Conventions, Scripting Language의 내용을 기록하였다.

* [Value types](https://www.autohotkey.com/docs/Concepts.htm#values)

  * value types은 Strings, Numbers, Objects가 있다. 
  * Number는 integer와 floating-point가 있다. 
  * Boolean 값을 지정하는 내장변수  false, true가 있지만 그 값은 integer인 0과 1이다.
  * 다른 언어의 null에 해당하는 값은 empty string `""`이다. 즉, 길이가 0인 문자열로 지정한다.

* [Objects](https://www.autohotkey.com/docs/Concepts.htm#objects)

  * 객체는 array 또는 클래스 인스턴스다. 
  * array는 indexed array 또는 associative array가 있는데, 각각은 파이썬의 리스트, 딕셔너리와 유사하다.

* [Variables](https://www.autohotkey.com/docs/Concepts.htm#objects)

  * 변수는 고정된 data type으로 제한되지 않는다. 

  * 변수는 assignment 또는 referencing 같은 방법으로 사용하는 즉시 생성된다. 그러나 참조하기 전에 값을 할당하지 않으면 변수의 기본 값은 empty string이다.

  * 변수의 scope에 따라 [global variables](https://www.autohotkey.com/docs/Functions.htm#Global)와 [local variables](https://www.autohotkey.com/docs/Functions.htm#Local)로 나뉘며 global variables을 함수 안에서 접근하려면 [declare](https://www.autohotkey.com/docs/Functions.htm#Global)되어야 한다.

  * 사용하는 모든 변수는 반드시 적절한 시작 값으로 초기화하여 사용하라. 초기화 하지 않은 변수의 사용을 발견하려면 [#Warn](https://www.autohotkey.com/docs/Concepts.htm#uninitialised-variables) 디렉티브를 사용하라.

  * [내장 변수](https://www.autohotkey.com/docs/Concepts.htm#built-in-variables)는 몇 가지 상황을 제외하고 읽기 전용이며 `A_` 접두사로 시작한다.

  * 운영체제가 관리하는 [환경 변수](https://www.autohotkey.com/docs/Concepts.htm#environment-variables)를 오토핫키에서 곧바로 접근할 수 있다. [#NoEnv](https://www.autohotkey.com/docs/commands/_NoEnv.htm) 디렉티브를 지정하지 않으면 환경 변수의 이름으로 환경 변수에 곧바로 접근 할 수 있는데, 이 방식은 의도치 않게 잘못된 결과를 낳을 수 있으므로 반드시 #NoEnv 를 설정하고 환경변수는 `EnvGet` 명령어로 접근하는 것이 좋다.

    ```
    #NoEnv  ; 이 디렉티브가 있을 때와 없을 때의 차이를 확인
    msgbox, % path
    
    EnvGet, var, path
    msgbox, % var
    ```

  * Number가 저장된 변수나 String이 저장된 변수는 상황에 따라 각각으로 자동 변환된다. [Caching](https://www.autohotkey.com/docs/Concepts.htm#caching) 또는 [No typed variables](https://www.autohotkey.com/docs/Language.htm#general-conventions) 참고하라.

* [Variable References vs Values](https://www.autohotkey.com/docs/Concepts.htm#variable-references)

  * 오토핫키는 함수에 인수를 넘길 때 값이 복사가 되는 Call by value인데, 함수를 정의할 때 인수 앞에 ByRef를 써주면 refernece를 넘길 수 있다.
  * array를 저장하는 변수는 그 값이 reference이기 때문에 ByRef를 해주지 않아도 된다.

* [Referneces to Objects](https://www.autohotkey.com/docs/Concepts.htm#references-to-objects)

  * 메모리에 있는 object을 삭제하려면 그 object를 가리키는 모든 변수의 값을 empty string으로 대치시키면 된다.

* [Function calls](https://www.autohotkey.com/docs/Language.htm#function-calls)

  * 함수명은 항상 global이며 변수명으로 이미 존재하는 함수명을 겹쳐서 사용해도 함수를 호출할 수 있다. 즉, 이미 존재하는 함수명을 변수명으로 써도 서로 독립적으로 사용할 수 있다.

* [Command parameter types](https://www.autohotkey.com/docs/Language.htm#commands)

  * 커맨드는 4 종류의 형식이 있다. OutputVar, InputVar, Text, Number
  * OutputVar, InputVar는 variable name 또는 dynamic variable reference를 입력해야 한다. OutputVar는 반드시 variable이어야 만 한다. (내부적으로 variable reference를 취하는 것 같다.) 따라서 Array elements, properties, expressions은 지원하지 않는다.
  * InputVar는 percent+space가 선행하는 expression을 지원한다.
  * Text 매개변수는 unquoted text (legacy) 또는 forced expression으로 입력할 수 있다.
  * Number 매개변수의 경우 대부분 percent+space가 선행하는 expression을 지원한다.

* [Commands vs Functions](https://www.autohotkey.com/docs/Language.htm#commands-vs-functions)

  * 몇몇 커맨드는 그 기능을 대치하는 함수가 존재

* [Control Flow Statements](https://www.autohotkey.com/docs/Language.htm#control-flow)

  * if, else if, else
  * goto, gosub
  * return
  * loop, while, for, break, continue, until
  * switch
  * try, catch, finally, throw

* [subroutine](https://www.autohotkey.com/docs/Language.htm#subroutines)

  * 오토핫키의 서브루틴을 포트란 서브루틴과 유사한 것으로 오해하면 안된다. 서브루틴은 서브루틴 label 부터 처음 만나는 return까지의 코드이며 gosub로 서브루틴 label로 제어를 이동하고 return에서 다시 호출한 곳으로 제어가 넘어간다. (goto와 마찬가지로 gosub는 사용하지 말 것)
  * subroutine의 label은 auto-execute section의 return 역할을 해 주지 않는다.
  * subroutine은 함수와는 다르게 자체적인 scope가 없어서 외부 변수의 값을 변경한다.
  * subroutine 안에 또 다른 subroutine을 정의하면 안 된다.
  * 위 내용을 종합해 보면 subroutine은 마치 문번호 같다. 즉 어딘가로 점프하는 태그와 같은 역할이지 포트란 서브루틴 같은 것으로 오해하면 안 된다. 그리고 scope도 애매해서 조심히 사용해야 할 것 같다.
  * 과연 이것을 안전하게 활용하는 곳이 있을지? 함수보다 장점이 있는지는 찾아봐야 한다.

* [user-defined functions](https://www.autohotkey.com/docs/Language.htm#user-defined-functions)

  ```
  MyFunction(FirstParameter, Second, ByRef Third, Fourth:="")
  {
      ...
      return "a value"
  }
  ```

* [#include](https://www.autohotkey.com/docs/Language.htm#-include)

  * 지정한 파일의 내용이 #include를 사용한 위치에 들어간다.
  * 일반적으로 서브루틴이나 함수 중간에 사용하지 않는다.
  * auto-execute section은 서브루틴이므로 auto-execute section에 #include를 사용하는 것은 특별한 주의가 필요하다. auto-execute section은 어떤 파일이든 return, hotkey/hotstring label 등을 만나면 중단되기 때문이다.
  * auto-execute section은 파일당 하나씩 있는게 아니라 실행한 스크립트만 있다.
  * 함수 정의가 있는 파일들만 #include를 사용해서 auto-execute section에 사용하는게 안전하다. 함수는 실행하는 동안 skip되기 때문이다.
  * 함수들이 저장된 파일들을 #include 없이 자동으로 포함되도록 하는 방법이 있다. 표준 위치에 올바른 이름으로 저장해 놓으면 된다. [Libraries of Functions](https://www.autohotkey.com/docs/Functions.htm#lib)

* [labels](https://www.autohotkey.com/docs/Language.htm#-include)

  * label은 normal named lables, hotkey labels, hotstring lables이 있다.
  * 일반적으로 공백이나 주석 빼고는 label 과 같은 줄에 아무 코드도 쓸 수 없다. 그러나 
    * *one-line hotkey*: hotkey label 뒤에는 커맨드나 statement를 쓸 수 있다. 그리고 이것은 return이 따라오는 것으로 동작한다.
    * *remapping*: hotkey 두 개의 콜론 오른쪽에 key name을 지정
    * *auto-replace hotstring*: hotstring의 콜론 오른쪽에 text를 곧바로 지정한 것은 auto-replace hotstring이라 하는데 이것은 label로 동작하지 않는다.



## Tutorial

이 부분은 프날님의 강좌와 중복되는 내용이 대부분이다. 가볍게 읽고 넘어 갔다.

* Hotkey와 Hotstring은 한 줄로 쓸 수 있음

  ```
  ^h:: send, hello
  ::he::hello
  ```

* Hotstirng은 Hotkey와 마찬가지 방식으로 action 정의

  ```
  ::he::
  MsgBox, hello
  return
  ```

* Hotkey 두 개를 modifier `&`로 연결하여 조합

  ```
  Numpad0 & Numpad1::
  MsgBox, You pressed Numpad1 while holding down Numpad0.
  return
  ```

* Hotstring은 modifier `*`를 이용하면 end character 없이 활성화

  ```
  :*:ftw::Free the whales
  ```

* 디렉티브 `#IfWinActive`를 이용해서 활성화 되어 있는 특정 창에 대해서만 Hotkey와 Hotstring을 이용할 수 있다. 가장 최근 `#IfWin` 디렉티브로 지정한 아래쪽에 Hotkey와 Hotstring의 영향을 받는다.

  ```
  ; Untitled - Notepad
  #IfWinActive 제목 없음 - Windows 메모장
  !q::
  MsgBox, You pressed ALT+Q in Notepad.
  return
  
  ; Any window that isn't Untitled - Notepad
  #IfWinActive
  !q::
  MsgBox, You pressed ALT+Q in any window.
  return
  ```

* send 커맨드로 `!+^#` 를 입력하려면 `{}`로 감싸야 한다. 그렇지 않으면 각각에 할당된 키를 누른다. 그러나 콘트롤키나 쉬프트키 등을 문자로 정의하여 쓸 때는 `{}`로 감싸야 한다. SendRaw를 쓰면 특수 문자가 그대로 입력된다. 

  ```
  Send, a+bcd    ; aBcd
  Send, {Enter}
  Send, a{+}bcd  ; a+bcd
  Send, {Enter}
  Send, a{Shift Down}b{Shift Up}cd ; aBcd
  Send, {Enter}
  SendRaw, a+bcd ; a+bcd 
  ```

* readable send

  ```
  Send,
  (
  Line 1
  Line 2
  Apples are a fruit.
  )
  ```

* variable을 사용할 때

  * %를 써야 하는 곳
    * 커맨드의 InputVar, OutputVar 파라메터를 제외하고 변수로 지정하는 모든 파라메터는 %로 묶는다. 
    * `=`를 사용하는 legacy assignment에서 우측의 값을 참조하는 변수는 %로 묶는다. ex) `MyVar = %MyVar2%`
  * %를 쓰지 말아야 할 곳
    * 커맨드의 InputVar와 OutputVar. ex) `StringLen, OutputVar, InputVar`
    * assignment의 왼쪽 변수. ex) `Var = 123abc`
    * legacy if-statements의 왼쪽 변수. ex) `if Var1 < %Var2%`
    * 모든 expressions의 변수. ex) `if (Var != Var2) Var1 := Var2 + 100`

* `InputBox, OutputVar [, Title, Prompt, ...] `

* object: indexed array, associative array, nested array

  ```
  ; indexed array 생성
  MyObject := ["one", "two", "three", 17]
  MyObject := Array("one", "two", "three", 17)
  
  ; associative array 생성
  Banana := {"Color": "Yellow", "Taste": "Delicious", "Price": 3}
  Banana := Object("Color", "Yellow", "Taste", "Delicious", "Price", 3)
  
  ; 값 지정
  Banana["Pickled"] := True ; Bracket notation
  Banana.Consistency := "Mushy" ; Dot notation
  
  ; InsertAt 메소드
  ; 특정 위치에 값을 삽입하며 뒤에 값들의 index는 삽입한 값들의 수만큼 밀린다.
  ; MyObject.InsertAt(Index, Value1, Value2, Value3...)
  
  ; Push 메소드
  ; 뒤에 값을 추가한다.
  ; MyObject.Push(Value1, Value2, Value3...)
  
  ; 값 참조
  Value := Banana["Color"]
  Value := Banana.Color
  
  ; 값 삭제 및 꺼내기
  ; RemovedValue := MyObject.Delete(AnyKey)
  ; MyObject.Pop()
  ; RemovedValue := MyObject.RemoveAt(Index)
  ; NumberOfRemovedKeys := MyObject.RemoveAt(Index, Length)
  ```



### Script

* *auto-excution section* 에 대해 더 자세히 알아 볼 것

  * 중요 내용인데 여기의 짧은 설명으로는 잘 와 닫지 않음. 구체적 예시가 필요

* 코드 연결

  * 방법 1: `and, or, ||, &&, comma, period`로 시작하는 코드는 위 코드와 연결되는 것으로 취급

    * `++, --`를 제외한 모든 expression operators도 포함

      ```
      MsgBox   ; comment
      , hello
      ```

  * 방법 2 *continuation section*: 여러 줄의 문자열을 괄호로 묶어서 쓸 수 있음

    ```
    MsgBox,  ; comment
    ( LTrim Join`s   ; 괄호 열기에 연결된 문자열을 어떻게 처리할지 옵션을 줄 수 있음
    hello
    world
    )
    ```

* 이후 내용은 컴파일 하는 방법과 컴파일 옵션, 압축, 명령행 인수 처리 관련 내용

* 그리고 인코딩 코드 페이지 관련 내용

* 코드 중간에 아래 두 명령어를 입력하면 break point를 설정하고 디버그에 도움되는 창을 통해 정보를 획득 (*main window* 라고 부름)

  ```
  ListVars
  Pause
  ```

  * 또 다른 디버그 커맨드로 ListLines, KeyHistory, OutputDebug 등이 있음

* [AutoHotkey Script Showcase](https://www.autohotkey.com/docs/scripts/)

  * 다른 사람이 작성한 여러 스크립트인데 실력향상에 좋은 도움이 될 것 같다.



## Labels (2020-08-25)

* normal label, hotkey label, hotstring label
* remapping, auto-replace hotstring



## Threads (2020-08-25)

* current thread는 가장 최근에 요청된 이벤트에 대한 실행 흐름
* 오토핫키는 실재로 다중 쓰레드가 아니기 때문에, 쓰레드가 아직 끝나지 않았는데 핫키 같은 걸 눌러서 다른 쓰레드가 시작되면 이전 쓰레드는 일시적으로 중단되고 (휴면 상태 dormant state) 새로운 쓰레드가 current thread가 된다.
* 가장 최근 쓰레드가 끝나면 최근 요청된 순서로 순차적으로 재시작한다. 
* ErrorLevel이나 SendMode 같은 쓰레드 세팅은 각 쓰레드가 재개될 때 이전 상태로 자동 복구되기 때문에 인터럽트에 의한 부작용은 일어나지 않는다. 
* 핫키와 핫스트링의 서브루틴이 이미 돌아가고 있으면 다시 눌러서 또 돌릴 수 없다. #MaxThreadsperHotkey가 디폴트 값이 1이다. 
* 쓰레드는 우선순위를 설정할 수 있다. current thread보다 낮은 우선순위의 쓰레드는 현재 쓰레드에 인터럽트를 걸 수 없다.
  * 따라서 높은 우선순위를 갖는 쓰레드를 빨리 끝내거나 Critical 커맨드로 current thread의 상태를 조정해야 한다.
  * 쓰레드를 조정하는 커맨드나 디렉티브로 바꾸지 않는 한 모든 쓰레드의 우선 순위 디폴트 값은 0이다. SetTimer, Hotkey, #Hotstring, Menu, Thread 등을 이용할 수 있다.
* current thread는 interruptible인 경우만 새로운 쓰레드가 실행될 수 있는데, 쓰레드가 uninterrruptible인 이유는 [Thread Interruptibility](https://www.autohotkey.com/docs/misc/Threads.htm#Interrupt) 참고하라.



## Objects (2020-08-25)

* 오토핫키의 object는 get a value, set a value, call a method 의 세 기능이 규정된 추상 데이터타입
* object인지 체크하는 함수 IsOjbect()
* Array 메소드: InsertAt, Push, RemoveAt, Pop, MinIndex, MaxIndex, Length
* Object의 property, array element, method에 접근하는 방법은 Obj["property_name"] 도 있지만 Obj.property_name 으로도 가능
* array syntax brakets, object syntax dots
* var에 function name을 저장해 두고 dynamic function call을 사용해서 %var%() 또는 var.() 방법으로 호출할 수 있지만 효율이 떨어진다.
  * function reference를 저장해 두고 똑같이 쓸 수 있다. Func := Func("MyFunc") 을 하면 Func는 function reference이고 %Func%() 또는 Func.() 또는 Func.Call()로 호출할 수 있다.



