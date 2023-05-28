VAR1 = 1
module MyModule
  MYMODULEVAR = 2
  def my_method
    puts MYMODULEVAR
    puts ::VAR
  end
end

class MyClass
  MYCLASSVAR = 3
  def my_method
    puts ::VAR1
    puts MYCLASSVAR
  end
end

puts MyModule::MYMODULEVAR
ins = MyClass.new
ins.my_method
puts MyClass::MYCLASSVAR
puts ins::MYCLASSVAR