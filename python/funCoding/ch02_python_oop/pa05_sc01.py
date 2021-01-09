
class Square:
    def __init__(self, w):
        self.w = w
        self._w = w + 1
        self.__w = w + 2
        
    def print_w(self):
        print('in class')
        print('self.w   = {}'.format(self.w))
        print('self._w  = {}'.format(self._w))
        print('self.__w = {}'.format(self.__w))
        
ins = Square(1)
ins.print_w()
print('not in class')
print('ins.w   = {}'.format(ins.w))
print('ins._w  = {}'.format(ins._w))
print('ins._Square__w = {}'.format(ins._Square__w))


    

