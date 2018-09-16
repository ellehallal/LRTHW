# creating variables
cars = 100
space_in_a_car = 4
drivers = 30
passengers = 90

#creating variables using the values of other variables
cars_not_driven = cars - drivers
cars_driven = drivers
carpool_capacity = cars_driven * space_in_a_car
average_passengers_per_car = passengers / cars_driven

# Using string interpolation to print the value of variables in a string
puts "There are #{cars} cars available"
puts "There are only #{drivers} drivers available"
puts "There will be #{cars_not_driven} empty cars today"
puts "We can transport #{carpool_capacity} people today"
puts "We have #{passengers} to carpool today"
puts "We need to put about #{average_passengers_per_car} in each car"

# Study drills

# 1. On line 14, the carpool_capacity variable that is being called does not exist.

#2. It's not necessary to have the space as a float. Works fine if using 4 instead

#3. Equals = assigns a value to a variable
