class Scene
  def enter
    puts "Default scene class"
    exit(1)
  end
end

class Engine

  def initialize(scene_map)
    @scene_map = scene_map
  end

  def play()
    current_scene = @scene_map.opening_scene()
    last_scene = @scene_map.next_scene('prize_room')

    while current_scene != last_scene
      next_scene_name = current_scene.enter()
      current_scene = @scene_map.next_scene(next_scene_name)
    end

    current_scene.enter()
  end
end

class Cloud < Scene
  def enter
    puts """
    You wake up to find yourself laying on a cloud. Ahead of you
    is an evil rain cloud. Do you...
    1. Tickle the rain cloud
    2. Jump into the rain cloud
    3. Tackle the rain cloud
    Pick a number:
    >
    """

    @choice = $stdin.gets.chomp

    case @choice
    when "1"
      puts """
      The rain cloud giggles and moves to the side to reveal
      a door...
      """
      'evil_unicorn'
    when "2"
      puts "The rain cloud happens to be very hungry today, so you're it's lunch"
      'death'
    when "3"
      puts "The rain cloud really isn't in the mood to play with you today"
      'death'
    end

  end
end

class EvilUnicorn < Scene
  def enter
    puts """The door opens to reveal...
    AN EVIL UNICORN!
    The unicorn asks you to guess a number between 1-5 in order to get into the
    next room. Pick a number:
    >
    """
    @number = rand(1..5)
    @choice = $stdin.gets.chomp

    if @number == @choice
      puts """
      The evil unicorn gracefully stands to the side to allow you to enter
      the next room. However, the unicorn warns you not to be greedy...
      """
      'cake_room'
    else
      puts "That's incorrect. Back to the cloud you go..."
      'cloud'
    end

  end
end

class CakeRoom < Scene
  def enter
    puts """
    You open the door to reveal a room full of the most glorious cakes ever;
    red velvet, victoria sponge, chocolate caramel and the list goes on. What do you do?
    1. Eat all of the cakes
    2. Take a cupcake for later to have with a cup of tea
    3. Eat nothing and wait
    Pick a number:
    >
    """

    @choice == $stdin.gets.chomp

    case @choice
    when "1"
      puts "Didn't the evil unicorn tell you not to be greedy?"
      'death'
    when "2"
      puts "How modest of you. A hatch opens on your right to reveal a dark room..."
      'phoenix'
    end

  end
end

class Phoenix < Scene
  def enter
    puts """
    Crawling into the hatch, you can see the room is illuminated.
    Edging closer, it starts to become apparent why. There's a giant
    phoenix in the left corner of the room.
    The Phoenix asks you to guess the three digit combination to unlock the next door:
    >
    """
    @combinations = ["123", "456", "789"]
    @phoenix_choice = combinations[rand(0..2)]
    @choice = $stdin.gets.chomp

    if @choice == @phoenix_choice
      puts """
      The Phoenix flies away, revealing a giant blue door...
      """
      'tea_room'
    else
      puts "That's incorrect. Back to the cake room you go..."
      'cake_room'
    end

  end
end

class TeaRoom < Scene
  def enter
    puts """
    Welcome to the Tea Room. Here your tea making abilities will be tested
    and judged by the tea master. Let's start:
    What tea would you like to make?
    1. Mint
    2. Green
    3. Ginger
    >
    """
    @selection = []
    @standard = ["3", "3", "cupcake"]
    @choice = $stdin.gets.chomp
    @selection << @choice

    puts """
    Would you like to add sugar, honey or not?
    1. Sugar
    2. Honey
    3. No thanks
    >
    """
    @choice = $stdin.gets.chomp
    @selection << @choice

    puts "Do you have anything to add to impress the tea master?"
    @choice = $stdin.gets.chomp
    @selection << @choice

    if @selection == @standard
      puts """
      The tea master is very impressed by your tea and the cupcake. He guides
      you to the next room...
      """
    else
      puts "The tea master isn't impressed. He turns into a monster and eats you"
      'death'
    end

  end
end

class PrizeRoom < Scene
  def enter
    puts """
    Well done, you win! Pick a letter: a, b or c?
    >
    """
    @prizes = {
      "a" => "£1,000,000",
      "b" => "free holidays for your lifetime",
      "c" => "unlimited food"
    }
    @choice = $stdin.gets.chomp

    puts "You've selected #{@prizes[@choice]}. Enjoy!"
    exit(1)
  end
end


class Death < Scene
  def enter
    @death = [
      "Wow, you've failed already? You should be ashamed of yourself",
      "You're dead. What a poor attempt",
      "Game over"
    ]

    puts @death[rand(0..2)]
    exit(1)
  end
end

class Map

  @@scenes = {
    'cloud' => Cloud.new(),
    'evil_unicorn' => EvilUnicorn.new(),
    'cake_room' => CakeRoom.new(),
    'phoenix' => Phoenix.new(),
    'tea_room' => TeaRoom.new(),
    'prize_room' => PrizeRoom.new(),
    'death' => Death.new()
  }

  def initialize (start_scene)
    @start_scene = start_scene
  end

  def next_scene(scene_name)
    val = @@scenes[scene_name]
    return val
  end

  def opening_scene()
    return next_scene(@start_scene)
  end
end

my_map = Map.new('cloud')
game = Engine.new(my_map)
game.play()
