# is: 가리키는 객체 자체가 같은 경우 
# ==: 가리키는 값이 같은 경우 

a = [1, 2, 3]
b = a
print(id(a), id(b))
print(a is b)  # return True
print(a == b)  # return True

b = a[:]
print(id(a), id(b))
print(a is b)  # return False
print(a == b)  # return True