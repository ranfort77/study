
class Singleton(type):
    __instances = {}
    def __call__(cls, *args, **kwargs):
        if cls not in cls.__instances:
            cls.__instances[cls] = super().__call__(*args, **kwargs)
        return cls.__instances[cls]
    
class PrintObject(metaclass=Singleton):
    def __init__(self):
        print("This is called by super().__call__")
        
object1 = PrintObject()     
object2 = PrintObject()     
print(object1)
print(object2)        