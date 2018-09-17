first, second, third = ARGV

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

#Study Drills


first, second, third, fourth, fifth = ARGV

puts "Your favourite fruit is: #{first}"
puts "Your next favourite fruit is: #{second}"
puts "Your next favourite fruit is: #{third}"
puts "Your next favourite fruit is: #{fourth}"
puts "Your next favourite fruit is: #{fifth}"

first, second = ARGV

puts "Your favourite artist is: #{first}"
puts "Your next favourite artist is: #{second}"


firstname = ARGV
print "What's your last name?: "
lastname = $stdin.gets.chomp

puts "Nice to meet you #{firstname.join("")} #{lastname}!"
