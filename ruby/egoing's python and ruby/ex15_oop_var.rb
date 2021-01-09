
class C
  def initialize(v)
    @value = v
  end

  def show()
    p @value
  end

  def get_value()
    return @value
  end

  def set_value(v)
    if v.is_a?(Integer)
      @value = v
    end
  end
end

c1 = C.new(10)
c1.show
# p c1.value  # not permitted to access instance variable
p c1.get_value
c1.set_value(20)
p c1.get_value
c1.set_value('abc')
p c1.get_value


class D
  #attr_reader :value
  #attr_writer :value
  attr_accessor :value
  def initialize(v)
    @value = v
  end

  def show()
    p @value
  end
end

d1 = D.new(10)
p d1.value
d1.value = 30
p d1.value
