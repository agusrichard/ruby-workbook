def sekar
  yield
end

sekar do
  puts "Something is here"
end

def veni
  puts "Veni Alifa"
  yield 1, 2
end

veni do |a, b|
  puts "Something is #{a} and another is #{b}"
end

def arifa(&block)
  puts "Inside Arifa Rachma"
  block.call
end

arifa {puts "Outside of Arifa Rachma"}