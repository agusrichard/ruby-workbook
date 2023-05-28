sekar = "Sekardayu Hana Pradiani" if true
saskia = "Saskia Nurul Azhima" unless false

puts sekar
puts saskia

if sekar == "Sekardayu Hana Pradiani"
  puts "Sekardayu Hana Pradiani loves me"
elsif saskia == "Saskia Nurul Azhima"
  puts "Saskia Nurul Azhima"
else
  puts "Someone else that I'm looking for"
end

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
