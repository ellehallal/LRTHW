def myfunction(age, siblings)
  puts "You are #{age} years old and have #{siblings} brothers and sisters"
end

my_age = 200
my_siblings = 30

myfunction(my_age, my_siblings)
myfunction(100, 201)
myfunction(my_age - 3, my_siblings + 4)
myfunction(10 + 9, 100 * 2)
myfunction(my_age % 3, my_siblings / 2)
myfunction(my_age * my_siblings, my_age - my_siblings)
myfunction(my_age * 10, my_siblings * 30)
myfunction(10 % 1, my_siblings % 20)
myfunction(10 * 4 - my_siblings, my_siblings)
myfunction(my_siblings * 2, my_siblings / 3)
