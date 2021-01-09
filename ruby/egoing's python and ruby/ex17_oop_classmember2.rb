
class C
  # class variable
  @@nins = 0
  def initialize()
    @@nins = @@nins + 1
  end

  def C.get_count()
    return @@nins
  end
end

c1 = C.new()
c2 = C.new()
c3 = C.new()
c4 = C.new()
puts "number of instances: #{C.get_count()}"
