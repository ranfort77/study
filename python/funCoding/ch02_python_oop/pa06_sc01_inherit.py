
class Figure:
    def __init__(self, name, color):
        self.name = name
        self.color = color
     
        
class Quadrangle(Figure):
    def set_area(self, width, height):
        self.__width = width
        self.__height = height
        
    def get_info(self):
        print(self.name, self.color, self.__width, self.__height)
        

square1 = Quadrangle('square', 'black')
square1.set_area(5, 5)
square1.get_info()