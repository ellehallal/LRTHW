the_count = [1,2,3,4,5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

for number in the_count
  puts "This is count #{number}"
end

fruits.each do |fruit|
  puts "A fruit of type: #{fruit}"
end

change.each {|i| puts "I got #{i}"}

elements = []

(0..5).each do |i|
  elements.push(i)
end

elements.each {|i| puts "element was: #{i}"}


#Study drills

#1.
(0...5).each do |i|
  puts "Number is #{i}"
end

#three dot range doesn't include last number, where as two dot range does

#2.
the_count.each do |number|
  puts "This is count #{number}"
end

#3.
new_fruits = []
fruits.each do |fruit|
  new_fruits.push(fruit)
end
puts new_fruits
