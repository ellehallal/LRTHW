people = 20
cats = 30
dogs = 15

if people < cats
  puts "Too many cats! The world is doomed!"
end

if people > cats
  puts "Not many cats! The world is saved!"
end

if people < dogs
  puts "The world is drooled on!"
end

if people > dogs
  puts "The world is dry!"
end

dogs += 5

if people >= dogs
  puts "People are greater than or equal dogs"
end

if people <= dogs
  puts "People are less than or equal to dogs"
end

if people == dogs
  puts "People are dogs"
end


#Study drills

#1. if the condition is true, then the code within the if statement is executed

#2. Indentation helps to convey a better structure of a program to those reading it

#3. The code will still run

#4.

if people == dogs && people < cats
  puts "People are dogs and there are too many cats"
end

if cats > dogs || cats > people
  puts "Cats rule the world"
end

#5. Changing the values of dogs, cats and people changes which strings are printed, if the if statements become false
