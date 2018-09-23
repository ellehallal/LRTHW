people = 30
cars = 40
trucks = 15

if cars > people
  puts "We should take the cars"
elsif cars < people
  puts "We should not take the cars"
else
  puts "We can't decide"
end

if trucks > cars
  puts "That's too many trucks"
elsif trucks < cars
  puts "Maybe we could take the trucks"
else
  puts "We still can't decide"
end

if people > trucks
  puts "Alright, let's just take the trucks"
else
  puts "Fine, lets stay home then"
end

#Study drills

#1. elsif means if the if-statement is true, then move onto this statement (elsif) and check if this is true.
#else means if the above statements are false, then execute the code in the block in the else statement

#2. done

#3. More complex boolean expressions

if people > trucks && people > cars
  puts "Fine, lets stay home then"
else
  puts "Let's decide now"
end
