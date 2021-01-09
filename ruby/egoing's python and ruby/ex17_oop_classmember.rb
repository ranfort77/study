
class C
  # class method
  def C.cls_method()
    puts 'called cls_method in C'
  end

  # instance method
  def ins_method()
    puts 'called ins_method in C'
  end
end

ins = C.new()
C.cls_method()
ins.ins_method()
