arr = Array.[](1, 2, 3, 4, 5)
puts "#{arr}"

arr1 = arr.collect { |a| a*2 }
puts "#{arr1}"

arr2 = arr1.each { |x| x + (2*x) }
puts "#{arr2}"

arr2.each do |i|
  puts i
end
