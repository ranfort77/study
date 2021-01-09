# python
import math

class Shape(object):
    def __init__(self, x, y, color):
        self._x = x
        self._y = y
        self._color = color
        
    def __repr__(self):
        return 'The shape is centered at (%f,%f) and has color %s' %(self._x, self._y, self._color)
    
    def get_color(self):
        return self._color


class Circle(Shape):
    def __init__(self, radius, x, y, color):
        Shape.__init__(self, x, y, color)
        self._r = radius
        
    def __repr__(self):
        return '%s\nRadius=%f' %(Shape.__repr__(self), self._r)
    
    def area(self):
        return math.pi*self._r**2


class Rect(Shape):
    def __init__(self, height, width, x, y, color):
        Shape.__init__(self, x, y, color)
        self._h = height
        self._w = width
        
    def __repr__(self):
        return '%s\nHeight = %f and width = %f' %(Shape.__repr__(self), self._h, self._w)
    
    def area(self):
        return self._h*self._w   

    
if __name__ == '__main__':
    c = Circle(4, 1, 1, 'red')
    print(c)
    print(c.area())
    r = Rect(2, 2, 1, 1, 'blue')
    print(r)
    print(r.area())    
    
    