
class C
  def m()
    return "called m in C"
  end
end

class D < C
  def m()
    return super() + "\ncalled m in D"
  end
end

ins = D.new()
puts ins.m()
