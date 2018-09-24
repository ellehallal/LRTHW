puts "You enter a room and encounter three doors. Which door to you pick? 1, 2 or 3?"
prompt = "> "
puts prompt

doorchoice = $stdin.gets.chomp

if doorchoice == "1"
  puts "You're welcomed by a little monster, who stares at you? Do you:"
  puts "1. Kick monster?"
  puts "2. Stand still?"

  monster = $stdin.gets.chomp

  if monster == "1"
    puts "Little monster starts crying. Out of the darkness appears mother monster, who eats you. Goodbye"
  elsif monster == "2"
    puts "Little monster snuggles up to you to be stroked"
  else
    puts "Monster eats you for not making a choice"
  end

elsif doorchoice == "2"
  puts "You're welcomed by a little baker who asks you to choose one of their cakes to eat. Which cake do you pick? Cake 1, or cake 2?"

  cake = $stdin.gets.chomp

  if cake == "1"
    puts "You've selected the best red velvet cake ever made. Enjoy!"
  elsif cake == "2"
    puts "You've selected baker's disgusting cake. She gives you a cup of tea to wash it down with"
  else
    puts "Baker is offended that you won't select any of her cakes. She turns into a monster and eats you"
  end

elsif doorchoice == "3"
  puts "This door leads to nowhere. You're stuck and no one wants to help you. Goodbye"

else
  puts "That's not a valid choice. The floor gives way and you're falling into a black hole for eternity. Bye!"
end
