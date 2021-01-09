# -*- coding: utf-8 -*-
"""
Spyder Editor  12,867,199 -> 12,891,568

This is a temporary script file.
"""

class Person:
    def __new__(cls, *args, **kwargs):
        return super().__new__(cls)

    def __init__(self, name, age):
        self.name = name
        self.age = age
        
    def __repr__(self):
        return f'name={self.name}, age={self.age}'


class Point:
    def __init__(self, x=0, y=0):
        self.x = x
        self.y = y

    def distance(self):
        """Find distance from origin"""
        return (self.x**2 + self.y**2) ** 0.5
    

# https://realpython.com/python-super/
class Rectangle:
    def __init__(self, length, width):
        self.length = length
        self.width = width

    def area(self):
        return self.length * self.width

    def perimeter(self):
        return 2 * self.length + 2 * self.width


class Square(Rectangle):
    def __init__(self, length):
        super().__init__(length, length)


class Cube(Square):
    def surface_area(self):
        face_area = super().area()
        return face_area * 6

    def volume(self):
        face_area = super().area()
        return face_area * self.length


if __name__ == '__main__':
    print(Person('Dave', 12))
    print(Point(2, 3).distance())
  

