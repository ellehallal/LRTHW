def cheese_and_crackers(cheese_count, boxes_of_crackers)
  puts "You have #{cheese_count} cheeses!"
  puts "You have #{boxes_of_crackers} boxes of crackers"
  puts "Man that's enough for a party"
  puts "Get a blanket\n"
end

#calling function with numbers as arguments
puts "We can give the function numbers directly"
cheese_and_crackers(20, 30)

puts "OR we can use variables from our script: "
amount_of_cheese = 10
amount_of_crackers = 50

#calling function and inputting variables as arguments for function
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

#calling function and arguments consist of arithmetic
puts "We can even do maths inside too: "
cheese_and_crackers(10 + 20, 5 + 6)

#calling function and arguments consist of previously defined variables and adding to them
puts "And we can combine the two, variables and maths"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)
