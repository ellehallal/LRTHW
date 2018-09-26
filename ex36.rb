def dead(message)
  puts message
  exit(0)
end


def left_room
  puts """
  You enter the room and face an evil unicorn.
  There is a most amazing cheesecake you've ever seen, in the room.
  There is also a door behind the unicorn.
  What do you do?
  >
  """

  choice = $stdin.gets.chomp

  if choice.include?("cheesecake")
    puts "How dare you touch the unicorn's cheesecake"
    dead("Game over")
  elsif choice.include?("dance") or choice.include?("open")
    middle_room
  else
    dead("The unicorn doesn't understand your choice. Game over")
  end

end


def middle_room
  puts """
  The door opens to a room full of money.
  How much do you take? Enter a number:
  >
  """

  choice = $stdin.gets.chomp.to_i

  if choice == 0
    puts "Wow, what an honest person you are. You teleport to the next room"
    right_room
  else
    puts "You're stealing!"
    dead("Game over")
  end

end

def right_room
  puts """
  The door opens to a big, blue furry monster.
  What do you do?
  1. Dance around the monster
  2. Shout at the monster
  3. Sneak around the monster to the door behind it
  """

  choice = $stdin.gets.chomp.to_i

  if choice == 1
    puts "The monster loves to dance! The door behind him opens..."
    prize_room
  else
    dead("The monster bites your head off. Game over")
  end
end

def prize_room
  prizes = ["a new car", "$100,000", "free rent for a year"]
  puts """
  Congratulations! You're still alive!
  Choose your prize from the items below:
  """
  prizes.each{|prize| puts prize}

  puts ">"

  choice = $stdin.gets.chomp

  puts "Here is your prize: #{choice}."
  dead("Thanks for playing!")
end


def start
  puts """
  You wake up in a room with three doors - left, right and middle.
  Which door do you choose?
  >
  """
  choice = $stdin.gets.chomp

  if choice == 'left'
    left_room
  elsif choice == 'right'
    right_room
  elsif choice == 'middle'
    middle_room
  else
    puts "You become dizzy and die in the room."
    dead("Game over")
  end

end

start
