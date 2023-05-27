$global_var = "This is a global var"

class Example
  def hello
    puts "Something is in here"
    puts $global_var
  end
end

example = Example.new

example.hello

age = 21
gpa = 3.7
names = ["sherlock", "john", "moriarty"]
names.each do |name|
  puts name
end

nums = {"one" => 1, "two": 2, "three": 3}
nums.each do |k, v|
  puts k
  puts v
end

(1..10).each do |i|
  puts i
end