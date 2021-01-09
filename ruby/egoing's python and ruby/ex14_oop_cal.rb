
class Cal
  # constructor
  def initialize(v1, v2)
    # instance variables
    @v1 = v1
    @v2 = v2
  end

  def add()
    return @v1 + @v2
  end

  def sub()
    return @v1 - @v2
  end
end

n1 = 30; n2 = 20
c1 = Cal.new(n1, n2)
puts "%d + %d = %d" %[n1, n2, c1.add()]
puts "%d - %d = %d" %[n1, n2, c1.sub()]
