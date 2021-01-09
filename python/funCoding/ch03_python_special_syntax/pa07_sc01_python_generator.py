
def getc(s):
    for c in s:
        yield c
        
obj = getc('abcde')        
print(type(obj))
for c in obj:
    print(c)

# generator expression
obj = (c for c in 'abcde')
print(type(obj))
for c in obj:
    print(c)