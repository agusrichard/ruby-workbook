$i = 0
while $i < 10 do
    $i += 1
    if $i == 5
        puts "5 is skipped"
        next
    end

    puts("1. Inside the loop i = #{$i}" )
end

$i = 0
begin
    puts("2. Inside the loop i = #{$i}" )
    $i += 1

    if $i > 5
        break
    end
end while $i < 10

$i = 0
until $i > 10 do
    puts("3. Inside the loop i = #{$i}" )
    $i += 1
end

$i = 0
begin
    puts("4. Inside the loop i = #{$i}" )
    $i += 1
end until $i > 10

for x in 0..10
    puts("5. Inside the loop x = #{x}" )
end

(0..10).each do |x|
    puts("6. Inside the loop x = #{x}" )
end

# This will go to infinite loop
# for i in 0..5
#     if i < 2 then
#        puts "Value of local variable is #{i}"
#        redo
#     end
#  end
 
# This will go to infinite loop
# for for i in 0..5
#    retry if i > 2
# puts "Value of local variable is #{i}"
# end

 