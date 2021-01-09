
module M1
  def add()
    return @v1 + @v2
  end
end

module M2
  def sub()
    return @v1 - @v2
  end
end

class C
  include M1, M2
  def initialize(v1, v2)
    @v1 = v1
    @v2 = v2
  end

  def mul()
    return @v1*@v2
  end
end

ins = C.new(10, 20)
puts ins.add()
puts ins.sub()
puts ins.mul()
