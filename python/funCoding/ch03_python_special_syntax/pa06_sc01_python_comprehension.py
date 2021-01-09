
# list comprehension
a = [n for n in range(10) if divmod(n, 2)[1]]
print(type(a), a)

# set comprehension
a = [1, 2, 2, 3, 3, 3, 4]
a = {n for n in a}
print(type(a), a)

# dictionary comprehension
a = [1, 2, 3, 4]
b = ['a', 'b', 'c', 'd']
c = list(zip(a, b))
d = {b:a for a, b in c if divmod(a, 2)[1]}
print(type(d), d)
