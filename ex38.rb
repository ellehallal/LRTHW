ten_things = "Apples Oranges Crows Telephone Light Sugar"

puts "Wait there are not 10 things in that list. Let's fix that"

stuff = ten_things.split(' ')
more_stuff = ["Day", "night", "song", "frisbee", "corn", "banana", "girl", "boy"]

while stuff.length !=10
  next_one = more_stuff.pop
  puts "Adding: #{next_one}"
  stuff.push(next_one)
  puts "There are #{stuff.length} items now"
end

puts "There we go: #{stuff}"

puts "Lets do some things with stuff"

puts stuff[1]
puts stuff[-1]
puts stuff.pop()
puts stuff.join(' ')
puts stuff[3..5].join("#")


#Study drills

#1.
# - split(ten_things)
# - length(stuff)
# - pop(more_stuff)
# - push(next_one)

#2.
# - split(ten_things) - call the split method with ten_things as the argument
# - length(stuff) call the length method with stuff as the argument
# - pop(more_stuff) call the pop method with more_stuff as the argument
# - push(next_one) call the push method with next_one as the argument

#3. https://medium.freecodecamp.org/object-oriented-programming-concepts-21bb035f7260

#6. Real world array examples

# - list of students
# - shopping list
# - card deck
# - list of wedding songs
# - list of guests
# - list of stations on a train line
# - menu options
# - to do list
# - items purchased in a transaction
# - list of gym classes

students = ["Alice", "Amy", "Samantha", "Aidan", "Dan", "Sabrina", "David", "Steve", "Ellen", "Miles"]

students.each { |student| puts "My name is #{student}" }

selected = students[3..8].join(", ")
puts "#{selected} have been selected for the school trip"

puts students.sample(4)

goodbye = students.sample
puts "#{goodbye} has been removed from the class"

newstudents = students.push("Kelly", "Consuela")
puts "New students have been added to the class"
puts students
