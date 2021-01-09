
class Square:
    width = 2
    height = 4
    
    def area(self):
        return self.width * self.height
    
a = Square()
a.width = 4
a.height = 8
print('object: w={}, h={}, area={}'.format(a.width, a.height, a.area()))
print('class : w={}, h={}'.format(a.__class__.width, a.__class__.height))
b = Square()
print(b.area())  # return 8
