
class Deco:
    def __init__(self, function):
        self.f = function
    
    def __call__(self, *args, **kwargs):
        print('start some decoration ...')
        val = self.f(*args, **kwargs)
        print('end some decoration ...')
        return val

@Deco
def sub(a, b):
    return a - b

print(sub(4, 1))