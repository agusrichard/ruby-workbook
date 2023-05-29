$max = 10
$i = 0

while $i < $max do
  puts $i
  $i += 1
end

$i = 0
begin
  puts $i
  $i += 1
end while $i < $max

$i = 0
until $i > 10 do
  puts $i
  $i += 1
end

$i = 0
begin
  puts $i
  $i += 1
end until $i > 10

for i in (0..10)
  puts "Sekar-#{i}"
end

(0..10).each do |i|
  puts "Saskia-#{i}"
end