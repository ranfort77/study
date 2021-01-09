# iterable, iterator 만드는 예
class Iterable:
    def __init__(self, num):
        self.num = num
        
    def __iter__(self):
        return Iterator(self.num)
    
class Iterator:
    def __init__(self, stop):
        self.cur = 0
        self.stop = stop
        
    def __next__(self):
        if self.cur < self.stop:
            retval = self.cur
            self.cur += 1
            return retval
        else:
            raise StopIteration
            
a = Iterable(4)
print(type(a))
for n in a:
    print(n)
    
b = iter(a)
print(type(b))
while True:
    print(next(b))    