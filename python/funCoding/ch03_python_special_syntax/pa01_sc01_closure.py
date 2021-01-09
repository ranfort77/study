import math

def math_functions(name, array):
    def ave():
        return sum(array) / len(array)
    
    def std():
        dsq = 0.
        cav = ave()
        for e in array:
           dsq = dsq + (e - cav)**2
        return math.sqrt(dsq / (len(array) - 1))
    
    return eval(name)

array = [1, 2, 3, 4, 5]
f1 = math_functions('ave', array)
f2 = math_functions('std', array)
del math_functions
print(f1())
print(f2())
