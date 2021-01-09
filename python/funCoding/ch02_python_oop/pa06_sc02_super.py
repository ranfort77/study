
class Person:
    def work(self):
        print('work hard')

class Student(Person):
    def work(self):
        print('Study hard')
        
    def parttime(self):
        #super().work()
        Person.work(self)
        
obj = Student()
obj.parttime()