# -*- coding: utf-8 -*-
"""
Created on Wed Sep  2 17:20:53 2020

@author: ran
"""

# Python
class Date:
    def __init__(self, year, month):
        self.year = year
        self.month = month
        
    @property
    def month(self):
        return self._month
    
    @month.setter
    def month(self, value):
        if not (1 <= value <= 12):
            raise ValueError("wrong month value: {}".format(value))
        self._month = value
        
    @property    
    def year(self):
        return self._year
    
    @year.setter
    def year(self, value):
        self._year = value
        
    def printDate(self):
        print("YYYY/MM={:4}/{:02}".format(self.year, self.month))


d = Date(2020, 9)
d.printDate()
d.year = 2019
d.month = 12
d.printDate()
print("Year={}, Month={}".format(d.year, d.month))





