class Person {
    __New(name, age) {
		this.name := name
		this.age := age
	}

	getInfo() {
		return format("name={}, age={}", this.name, this.age)
	}
}

class Student extends Person {
    __New(name, age, snum) {   ; snum is student number
		;~ base.__New(name, age)
		Person.__New(name, age)
		this.snum := snum
	}

    study() {
		return format("{} is studying ...", this.name)
	}
	
	getInfo() {
		;~ info := base.getInfo()
		info := Person.getInfo()
		return format("{}, snum={}", info, this.snum)
	}
}


p1 := new Person("James", 24)
MsgBox, % p1.getInfo()

s1 := new Student("Luna", 16, 120)
MsgBox, % s1.getInfo()
MsgBox, % s1.study()

s2 := new Student("Bianca", 14, 236)
MsgBox, % s1.getInfo()   
; 위 메세지 박스는 name=Luna, age=16, snum=120 출력되지 않고
; name=Bianca, age=14, snum=120 이 출력된다.
; Person의 class variables인 name과 age가 재설정 됐기 때문이다. 

