def add(a, b)
  puts "ADDING #{a} + #{b}"
  a + b
end

def subtract(a, b)
  puts "SUBTRACTING #{a} - #{b}"
  a - b
end

def multiply(a, b)
  puts "MULTIPLYING #{a} * #{b}"
  a * b
end

def divide(a, b)
  puts "DIVIDING #{a} / #{b}"
  a / b
end

puts "Lets do some maths with just functions!"

age = add(30, 5) #35
height = subtract(78, 4) #74
weight = multiply(90, 2) #180
iq = divide(100, 2) #50

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"

puts "Here is a puzzle"

what = add(age, subtract(height, multiply(weight, divide(iq, 2))))

puts "That becomes: #{what}"

#Study drills

#2. add(35, subtract(74, multiply(180, divide(50, 2))))
# DIVIDING 50 / 2
# MULTIPLYING 180 * 25
# SUBTRACTING 74 - 4500
# ADDING 35 + -4426

#3.
puts what2 = add(weight, subtract(age, multiply(iq, divide(height, 2))))

#4
puts what3 = multiply(weight, add(age, subtract(iq, divide(height, 2))))

#5 Functions still work when removing return
