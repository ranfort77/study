# simple decorator
def some_deco(function):
    def wrapper(*args, **kwargs):
        print('start some decoration...') 
        val = function(*args, **kwargs)
        print('end some decoration')
        return val
    return wrapper

@some_deco
def add(a, b):
    return a + b

print(add(2, 3))

# parameter가 있는 decorator
def para_deco(s):
    def wrapper_out(function):
        def wrapper_in(*args, **kwargs):
            print('start %s' %s)
            val = function(*args, **kwargs)
            print('end %s' %s)
            return val
        return wrapper_in
    return wrapper_out

@some_deco
@para_deco('substract function...')
def sub(a, b):
    return a - b

print(sub(4, 1))

