class Person
    @@people_count = 0

    def initialize(name, age)
        @name = name
        @age = age

        @@people_count += 1
    end

    def say_hell9()
        puts "Hello, my name is #{@name} and I am #{@age} years old."
    end

    def get_total
        return @@people_count
    end
end

def void_method
    puts "This is a method"
end


john = Person.new("John", 30)
john.say_hell9()

sherlock = Person.new("Sherlock", 29)
sherlock.say_hell9()

puts sherlock.get_total()

void_method