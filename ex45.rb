class Scene
  def enter
    puts "Default scene class"
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
    >
    """

    choice = $stdin.gets.chomp

    case choice
    when "1"
      puts """
      The rain cloud giggles and moves to the side to reveal
      a door...
      """
      Evil_Unicorn.enter()
    when "2"
      puts "The rain cloud happens to be very hungry today, so you're it's lunch"
      Death.enter
    when "3"
      puts "The rain cloud really isn't in the mood to play with you today"
      Death.enter
    end

  end
end

class Evil_Unicorn < Scene
  def enter
    puts """The door opens to reveal...
    AN EVIL UNICORN!
    The unicorn asks you to guess a number between 1-5 in order to get into the
    next room. Pick a number:
    >
    """
    number = rand(1..5)
    choice = $stdin.gets.chomp

    if number == choice
      puts """
      The evil unicorn gracefully stands to the side to allow you to enter
      the next room. However, the unicorn warns you not to be greedy...
      """
      Cake_Room.enter
    else
      puts "That's incorrect. Back to the cloud you go..."
      Cloud.enter
    end

  end
end

class Cake_Room < Scene
  def enter
    
  end
end

class Phoenix < Scene
  def enter
    #defeat phoenix

  end
end

class Tea_Room < Scene
  def enter
    #make tea up to standard
  end
end

class Prize_Room < Scene
  def enter
    #choose a prize

  end

  class Death < Scene
    def enter
      @death = [
        ["Wow, you've failed already? You should be ashamed of yourself"],
        ["You're dead. What a poor attempt"],
        ["Game over"]
      ]

      puts @death[rand(1..3))]
      exit(1)
    end
end
