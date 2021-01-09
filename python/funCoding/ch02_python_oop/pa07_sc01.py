
class C:
    var = 'class attribute'
    
    def __init__(self, var='instance attribute'):
        self.var = var
    
    def ins(self):
        print('instance method: var = {}'.format(self.var))

    @staticmethod
    def sta():
        print('static method  : var = {}'.format(C.var))

    @classmethod
    def cla(cls):
        print('class method   : var = {}'.format(cls.var))

obj = C()
obj.ins()
obj.sta()
obj.cla()
    

