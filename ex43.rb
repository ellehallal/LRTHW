class Scene
  def enter()
  end
end

class Engine

  def initialize(scene_map)
  end

  def play()
  end
end

class Death < Scene

  def enter ()
    puts "Bad luck, you're dead. Better luck next time"
    exit(1)
  end
end

class CentralCorridor < Scene
  def enter()
    puts """
    You find yourself in the central corridor, with a number
    of doors surrounding you. But wait! To your left is a Gothon.
    What do you do?
    1. Tell a joke
    2. Run towards one of the doors
    3. Fight the Gothon
    (pick a number)
    >
    """
    choice = $stdin.gets.chomp

    case choice
      when "1" then LaserWeaponArmory.enter()
      when "2" then Death.enter()
      when "3" then Death.enter()
    end

  end
end

class LaserWeaponArmory < Scene

  def enter()
    code = "#{rand(1..9)}#{rand(1..9)}#{rand(1..9)}#{rand(1..9)}"
    puts """
    Ahead of you is a neutron bomb. You'll need this to blow the ship
    up before getting to the escape pod. To get it, you'll need to guess
    the four digit code. Enter it below:
    >
    """
    guess = $stdin.gets.chomp

    if code == guess
      TheBridge.enter
    else
      puts "That's the incorrect code"
      Death.enter
  end
end

class TheBridge < Scene

  def enter()
    puts """
    You're at the brigde where you're faced with another Gothon.
    How will you get around this one? Choose a number below:
    1. Tell a joke
    2. Run towards one of the doors
    3. Fight the Gothon
    (pick a number)
    >
    """
    choice = $stdin.gets.chomp

    if choice == 3
      EscapePod.enter
    else
      Death.enter
  end
end

class EscapePod < Scene

  def enter()
    pod = rand(1..2)
    puts """You've reached the Escape Pod, where you're faced with two Pods
    One of the pods will explode, the other will allow you to escape.
    Which pod do you choose? 1 or 2?
    >
    """

    choice = $stdin.gets.chomp

    if choice == pod
      puts "Congratulations, you've selected the legit escape pod. You win!"
      exit(1)
    else
      puts "Uh oh"
      Death.enter
    end

  end
end

class Map

  def initialize (start_scene)
  end

  def next_scene(scene_name)
  end

  def opening_scene()
  end
end

a_map = Map.new('central_corridor')
a_game = Engine.new(a_map)
a_game.play()
