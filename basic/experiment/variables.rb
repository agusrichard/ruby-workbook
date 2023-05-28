$my_global = 10
class Person
  @@people_count = 0
  def initialize(name, age)
    @name = name
    @age = age
  end

  def talk()
    puts "I'm talking to you... With #{$my_global}"
    puts @@people_count
  end
end

sekar = Person.new("Sekardayu Hana Pradiani", 25)
sekar.talk()