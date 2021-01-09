# -*- coding: utf-8 -*-
"""
Created on Sat Aug 29 17:15:34 2020

@author: ran
"""

class Person:
    def sleep(self):
        print('sleep')

class Student(Person):
    def study(self):
        print('Study hard')

class Worker(Person):
    def work(self):
        print('Work hard')
