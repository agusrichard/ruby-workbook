class Greeter
  attr_accessor :name
  attr_accessor :age
  def initialize(name="World", age=21)
    @name = name
    @age = age
  end

  def hi(greet="Hello")
    puts "#{greet} #{@name}"
  end
end

greeter = Greeter.new()
greeter.hi()

sekar_greeter = Greeter.new(name="Sekardayu Hana Pradiani")
sekar_greeter.hi(greeter="Hi")

puts "#{sekar_greeter.name}"
puts "#{sekar_greeter.age}"
