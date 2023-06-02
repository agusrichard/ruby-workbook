$, = ", "
range1 = (0...10).to_a
puts "#{range1}"

puts range1.min
puts range1.max
puts range1.include?(5)

score = 10

result = case score
         when 0..40 then "Fail"
         when 41..60 then "Pass"
         when 61..70 then "Pass with Merit"
         when 71..100 then "Pass with Distinction"
         else "Invalid Score"
         end

puts result