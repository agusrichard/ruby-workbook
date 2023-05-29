def call_me(name)
  puts "Hello, #{name}!"
end

def add(a, b)
  return a + b
end

def summation(*nums)
  result = 0
  nums.each do |i|
    result += i
  end

  return result
end

puts summation(1, 1, 2)
