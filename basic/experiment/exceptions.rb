def prompt_and_add()
  print 'a: '
  a = gets.chomp
  print 'b: '
  b = gets.chomp
  throw :abort_prompt if a == '!' or b == '!'
  return a + b
end

catch :abort_prompt do
  result = prompt_and_add
  puts "The result of addition is: #{result}"
end

begin
  print "Do you love her? "
  val = gets.chomp
  if val == "no"
    raise "I love Syarirah Khaerunisa"
  else
    puts "You love her nonetheless"
  end
rescue
  puts "I'm saved because I love her"
else
  puts "Yes, I love her indeed. Indeed! I love her more"
ensure
  puts "Just want to make sure that I truly love her"
end
