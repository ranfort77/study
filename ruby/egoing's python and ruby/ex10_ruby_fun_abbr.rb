
def fun1
  return 'called fun1'
end
puts(fun1)

def fun2 arg1
  return arg1
end
puts(fun2('called fun2'))
puts(fun2 'called fun2' )
puts fun2 'called fun2'

def fun3
  'called fun3'
end
puts fun3
