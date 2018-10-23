class Scene
  def enter()
    puts "This scene is not yet configured. Subclass it and implement enter()."
    exit(1)
  end
end

class Engine

  def initialize(scene_map)
    @scene_map = scene_map
  end

  def play()
    current_scene = @scene_map.opening_scene()
    last_scene = @scene_map.next_scene('finished')

    while current_scene != last_scene
      next_scene_name = current_scene.enter()
      current_scene = scene_map.next_scene(next_scene_name)
    end

    current_scene.enter()
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
      when "1" then 'laser_weapon_armory'
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
      'the_bridge'
    else
      puts "That's the incorrect code"
      'death'
  end
end

class TheBridge < Scene

  def enter()
    puts """
    You're at the bridge where you're faced with another Gothon.
    How will you get around this one? Choose a number below:
    1. Tell a joke
    2. Throw the bomb
    3. Fight the Gothon
    (pick a number)
    >
    """
    choice = $stdin.gets.chomp

    if choice == 3
      'escape_pod'
    else
      'death'
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
      'death'
    end

  end
end

class Map

  @@scenes = {
    'central_corridor' => CentralCorridor.new(),
    'laser_weapon_armory' => LaserWeaponArmory.new(),
    'the_bridge' => TheBridge.new(),
    'escape_pod' => EscapePod.new(),
    'death' => Death.new(),
    'finished' => Finished.new(),
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

a_map = Map.new('central_corridor')
a_game = Engine.new(a_map)
a_game.play()
