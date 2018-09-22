filename = ARGV.first

puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL - C"
puts "If you do not want that, hit RETURN"

$stdin.gets

puts "Opening the file..."
target = open(filename, 'w')


puts "Truncating the file. Goodbye!"
target.truncate(0)

puts "Now I'm gonna ask you for three lines:"

print "line 1:"
line1 = $stdin.gets.chomp
print "line 2:"
line2 = $stdin.gets.chomp
print "line 3:"
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file"

target.write("#{line1}\n#{line2}\n#{line3}")

puts "And finally, we close it"
target.close

#Study Drills

#4. Not using ‘w’ as a parameter to open you will not be able to write anything else to the file. ‘w’ is used to  truncate the file to 0 characters or write a new file.

#5. target.truncate() is not needed if 'w' is a parameter when opening the file
