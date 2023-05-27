age = 24

if age > 17
    puts "You are an old man! Suck it up"
else
    puts "I'm so young and energetic"
end

unless age > 100
    puts "At least you're not ancient!"
end 

puts "You're unbearable!" if age > 17
puts "You're so annoying" unless age < 10

case age
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