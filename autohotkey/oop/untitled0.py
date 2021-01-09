# -*- coding: utf-8 -*-
"""
Created on Sun Aug 30 07:48:51 2020

@author: ran
"""

    
# Python
class Person:    
    def __init__(self, name, age):
        self.name = name
        self.age = age
        
    def getInfo(self):
        return "name={}, age={}".format(self.name, self.age)


class Student(Person):
    def __init__(self, name, age, snum):
        Person.__init__(self, name, age)
        self.snum = snum
        
    def study(self):
        return "{} is studying ...".format(self.name)
    
    def getInfo(self):
        info = Person.getInfo(self)
        return "{}, snum={}".format(info, self.snum)

    

p1 = Person("James", 24)
print(p1.getInfo())

s1 = Student("Luna", 16, 120)
print(s1.getInfo())    
print(s1.study())


