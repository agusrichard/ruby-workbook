def call_me(name, age)
    puts "My name is #{name} and I'm #{age} years old!"
end

call_me("sekar", 24)

def something
    a = 1
end

puts something

def process_list(*args)
    for i in args
        puts i
    end
end

class Calculator
    def Calculator.add(a, b)
        return a + b
    end
end

process_list("sekar", 24, "john", 22)

puts Calculator.add(10, 1)

alias process_arr process_list 

process_arr("saskia", 22)