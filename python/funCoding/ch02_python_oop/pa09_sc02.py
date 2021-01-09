
class C:
    def __init__(self, array):
        self.array = array
        
    def __eq__(self, obj):
        if sorted(self.array) == sorted(obj.array):
            return True
        else:
            return False
        
a = C([2, 1, 3])
b = C([3, 2, 1])
print(a == b)