a = 1
b = 2
c = 3

a, b, c = 1, 2, 3

a, b = b, c

puts a
puts b
puts c

example = a == 1 ? 10 : 20

puts example
puts defined? example

CONST = ' out there'
class Inside_one
   CONST = proc {' in there'}
   def where_is_my_CONST
      ::CONST + ' inside one'
   end
end
class Inside_two
   CONST = ' inside two'
   def where_is_my_CONST
      CONST
   end
end
puts Inside_one.new.where_is_my_CONST
puts Inside_two.new.where_is_my_CONST
puts Object::CONST + Inside_two::CONST
puts Inside_two::CONST + CONST
puts Inside_one::CONST
puts Inside_one::CONST.call + Inside_two::CONST


class Person
    TEXT = "I am a person"

    def initialize(name, age)
        @name = name
        @age = age
    end

    def talk
        puts "I am talking"
    end
    
end

puts Person::TEXT
Person.new("Sherlock", 32).talk

=begin
You can write multiline comments using begin and end  
=end