print "Give me a number: "
number = gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}"

print "Give me another number: "
another = gets.chomp
number = another.to_i

smaller = number / 100
puts "A smaller number is #{smaller.to_f}"

#Study drills

#1. to_f converts number to a float

#2. 10% money back script

print "Give me some money!: "
money = gets.chomp.to_f
change = money / 10

puts "Thank you. Here's your change: #{change.round(2)}"
