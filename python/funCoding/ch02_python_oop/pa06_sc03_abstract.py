import abc

class Animal(metaclass=abc.ABCMeta):
    @abc.abstractmethod
    def move(self):
        pass
    
    @abc.abstractmethod
    def stop(self):
        pass
    
class Dog(Animal):
    def move(self):
        print('dog move ...')
        
    def stop(self):
        print('dog stop ...')
        
a = Dog()
a.move()
a.stop()
