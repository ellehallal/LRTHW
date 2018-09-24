puts "You enter a dark room with two doors. Do you go through door 1, 2 or 3?"
prompt =  "> "

print prompt
door = $stdin.gets.chomp

if door == "1"
  puts "There's a giant bear here eating a cheese cake. What do you do?"
  puts "1. Take the cake"
  puts "2. Scream at the bear"

  print prompt
  bear = $stdin.gets.chomp

  if bear == "1"
    puts "The bear eats your face off. Good job!"
  elsif bear == "2"
    puts "The bear eats your legs off. Good job!"
  else
    puts "Well doing %s is probably better. Bear runs away" % bear
  end

elsif door == "2"
  puts "You stare into the endless abyss at Cthulhu's retina"
  puts "1. Blueberries"
  puts "2. Yellow jacket clothespins"
  puts "3. Understanding revolvers yelling melodies"

  print prompt
  insanity = $stdin.gets.chomp

  if insanity == "1" || insanity == "2"
    puts "Your body survives powered by a mind of jello. Good job!"
  else
    puts "The insanity rots your eyes into a pool of muck. Good job!"
  end

elsif door == "3"
  puts "You've discovered a chocolate factory. Do you: "
  puts "1. Drink from the chocolate fountain?"
  puts "2. Eat a chocolate nugget?"
  puts "3. Keep your hands to yourself?"

  chocolate = $stdin.gets.chomp

  if chocolate == "1" || chocolate == "2"
    puts "It's not really chocolate, it's poison. Goodbye"
  else
    puts "Well done for keeping your hands to yourself. However, you're overcome by a poisonous gas and die anyway"
  end

else
  puts "You stumble around and fall on a knife and die. Good job!"
end
