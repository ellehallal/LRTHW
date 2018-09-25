
def my_function
  i = 0
  large = 6
  numbers = []

  while i < large
    puts "At the top, i is #{i}"
    numbers.push(i)

    i+= 1
    puts "Numbers now: ", numbers
    puts "At the botttom, i is #{i}"
  end

  puts "The numbers: "

  numbers.each {|num| puts num}
end

my_function()


#Study drills

#1. convert to function, and use variable instead of 6 - see above

#2. Use function to rewrite script to try different numbers - see below

#3. Add another variable to the function arguments that you can pass in that lets you change how much it increments by - see below

#4. Rewrite the script again to use this function to see what effect that has - see below

def my_function_again(min, max, increment)
  numbers = []

  while min < max
    puts "At the top, min is #{min}"
    numbers.push(min)

    min += increment
    puts "Numbers now: ", numbers
    puts "At the botttom, min is #{min}"
  end

  puts "The numbers: "

  numbers.each {|num| puts num}
end

my_function_again(1, 10, 2)


#5 Write it to use for-loops and (0 .. 6) range operator.
#Note - the increment isn't needed with a loop and range operator

def my_new_function(min, max)
  numbers = []

  (min..max).each do |i|
    puts "At the top, min is #{i}"
    numbers.push(i)

    # min += 3
    puts "Numbers now: ", numbers
    puts "At the botttom, min is #{min}"
  end

  puts "The numbers: "

  numbers.each {|num| puts num}
end

my_new_function(1, 11)
