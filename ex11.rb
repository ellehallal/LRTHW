print "How old are you? "
age = gets.chomp

print "How tall are you? "
height = gets.chomp

print "How much do you weigh? "
weight = gets.chomp

puts "So, you're #{age} years old, #{height} tall and #{weight} heavy"

#Study drills

#1. gets.chomp - get a string and remove the carriage return, whitespace or new line at the end of the input

#2. 🤷🏽‍♀️ # TODO: Can you find other ways to use gets.chomp? Try some of the samples you find.

#3.

print "What's your name? "
username = gets.chomp

print "Where do you live? "
location = gets.chomp

print "What's your occupation? "
occupation = gets.chomp

puts "Your name is #{username.capitalize}. You live in #{location.capitalize}, and you are a #{occupation.capitalize}."
