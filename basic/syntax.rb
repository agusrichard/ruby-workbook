$global_variable = 10

class Class1
    def print_global
        puts "Global variable is #{$global_variable}"
    end
end

class Class2
    def print_global
        puts "Global variable is #{$global_variable}" 
    end
end

obj1 = Class1.new
obj2 = Class2.new

obj1.print_global

ary = ["a", "b", "c"]
ary.each do |x|
    puts x
end

hsh = colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }
hsh.each do |key, value|
   print key, " is ", value, "\n"
end

nums = (0..10)
nums.each do |x|
    puts x
end

x = 1
if x > 2
   puts "x is greater than 2"
elsif x <= 2 and x!=0
   puts "x is 1"
else
   puts "I can't guess the number"
end

x = 1 
unless x>=2
   puts "x is less than 2"
 else
   puts "x is greater than 2"
end

$var =  1
print "1 -- Value is set\n" if $var
print "2 -- Value is set\n" unless $var

$var = false
print "3 -- Value is set\n" unless $var

$age =  5
case $age
when 0 .. 2
   puts "baby"
when 3 .. 6
   puts "little child"
when 7 .. 12
   puts "child"
when 13 .. 18
   puts "youth"
else
   puts "adult"
end

$i = 0
$num = 5

while $i < $num  do
   puts("Inside the loop i = #$i" )
   $i +=1
end

$i = 0
$num = 5
begin
   puts("Inside the loop i = #$i" )
   $i +=1
end while $i < $num

$i = 0
$num = 5

until $i > $num  do
   puts("Inside the loop i = #$i" )
   $i +=1;
end

$i = 0
$num = 5
begin
   puts("Inside the loop i = #$i" )
   $i +=1;
end until $i > $num

for i in 0..5
    puts "Value of local variable is #{i}"
end

(0..5).each do |i|
    puts "Value of local variable is #{i}"
end

for i in 0..5
    if i > 2 then
        break
    end
    puts "Value of local variable is #{i}"
end

for i in 0..5
    if i < 2 then
       next
    end
    puts "Value of local variable is #{i}"
end

#!/usr/bin/ruby

# for i in 0..5
#     if i < 2 then
#        puts "Value of local variable is #{i}"
#        redo
#     end
# end

# for i in 0..5
#     retry if i > 2
# puts "Value of local variable is #{i}"
# end

def test(a1 = "Ruby", a2 = "Perl")
   puts "The programming language is #{a1}"
   puts "The programming language is #{a2}"
end
test "C", "C++"
test

def calculate(a, b, c)
   puts "a is #{a}"
   puts "b is #{b}"
   puts "c is #{c}"

   return a + b + c
end

puts calculate(10, 20, 30)

def sample (*test)
   puts "The number of parameters is #{test.length}"
   for i in 0...test.length
      puts "The parameters are #{test[i]}"
   end
end
sample "Zara", "6", "F"
sample "Mac", "36", "M", "MCA"

def test
   puts "You are in the method"
   yield
   puts "You are again back to the method"
   yield
end
test {puts "You are in the block"}

def test
   yield 5
   puts "You are in the method test"
   yield 100
end
test {|i| puts "You are in the block #{i}"}


def test(&block)
   block.call
end
test { puts "Hello World!"}

BEGIN { 
   # BEGIN block code 
   puts "BEGIN code block"
} 

END { 
   # END block code 
   puts "END code block"
}
   # MAIN block code 
puts "MAIN code block"