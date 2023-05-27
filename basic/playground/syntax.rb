# print <<EOF
# This is the first way of creating
# here document ie. multiple line string.
# EOF

# print <<"EOF"
# Saskia Nurul Azhima
# Sekardayu Hana Pradiani
# EOF

# print <<`EOC`                 # execute commands
# 	echo hi there
# 	echo lo there
# EOC

# print <<"foo", <<"bar"  # you can stack them
# I said foo.
# foo
# I said bar.
# bar

puts "Hello World"

BEGIN {
   puts "This is in the beginning"
}

END {
   puts "This is in the end"
}
=begin
This also comments
=end