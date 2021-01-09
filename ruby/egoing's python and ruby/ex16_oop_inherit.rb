
class Class1
  def method1()
    return 'm1'
  end
end
c1 = Class1.new()
puts "%s %s" %[c1, c1.method1()]

class Class3 < Class1
  def method2()
    return 'm2'
  end
end
c3 = Class3.new()
puts "%s %s" %[c3, c3.method1()]
puts "%s %s" %[c3, c3.method2()]
