a=1
b=2
str ="Arpith in Ruby"
puts "The numbers are #{a} and #{b}"
puts "The length of the string #{str.length}"
puts a +b

print <<EOF
    This is the first way of creating
    here document ie. multiple line string.
EOF

print <<"EOF";                # same as above
    This is the second way of creating
    here document ie. multiple line string.
EOF

print <<`EOC`                 # execute commands
	echo hi there
	echo lo there
EOC

print <<"foo", <<"bar"  # you can stack them
	I said foo.
foo
	I said bar.
bar
=begin
	
rescue Exception => e
	Multiple selection comment
end
=end
BEGIN {
   puts "Initializing Ruby Program"
}

END {
	puts "End of Ruby Program"
}