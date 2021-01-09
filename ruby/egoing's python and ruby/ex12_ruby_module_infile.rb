
module Alpha
  module_function()
  def fun()
    return 'called fun in module Alpha'
  end
end

module Beta
  module_function()
  def fun()
    return 'called fun in module Beta'
  end
end

puts(Alpha.fun())
puts(Beta.fun())
