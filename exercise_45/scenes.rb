class Death
  def enter()
    puts "LOL. You died."
    exit(1)
  end
end


class Finish
  def enter()
    puts "Congratulations! You won!"
    exit(1)
  end
end


class Start

  def enter()
    puts "You got lost in the forest. There are almost night. You should "
    puts "survive and find way to home."
    puts "\n"
    puts "You're stand among the trees in dark forest. On front of you a path"
    puts "through trees. On left you hear the rustling."
    print "> "

    action = $stdin.gets.chomp

    if action == "walk along the path"
      puts "You going through trees along the path. The sun is no longer visible."
      puts "It becomes difficult for you to see the future path. Finally you see"
      puts "the wood house in front."
      return 'wood_house'

    elsif action == "go left"
      return 'bear'

    elsif action == "go back"
      puts "You decide to go back. The sun is no longer visible and its"
      puts "hard to see the way back, you stepped on a trap. You screamed"
      puts "in severe pain"
      return 'death'

    else
      puts "Hurry up! Use you brain!"
      return 'start'
    end
  end
end


class WoodHouse

  def enter()
    puts "You go to the house and see an old woman milking a goat."
    puts "She nods and say, \"Hello one more lost soul\""
    print "> "

    action = $stdin.gets.chomp

    if action == 'move on'
      puts "You decide move on. The sun is no longer visible and its"
      puts "hard to see the path, suddenly a wolf jumps out of the"
      puts "bushes and bites you into neck."
      return 'death'
    elsif action == 'ask for help'
      return 'in_house'
    end
  end
end


class Bear

  def enter()
    puts "You decide to check strange sound on left. You walk through"
    puts "the bushes and see a bear. Oops! It seems like he noticed you."
    print "> "

    action = $stdin.gets.chomp

    if action == "stand still"
      puts "today is your lucky day he turned away and continued"
      puts "to eat his berries. You decide to go back."
      puts "The sun is no longer visible and its hard to see the way back,"
      puts "you stepped on a trap. You screamed in severe pain."
      return 'death'

    elsif action == "run away"
      puts "In a panic you run away but bear is faster than you."
      puts "the bear knocked you down and bit off your face."
      return 'death'

    else
      puts "It didn’t help, the bear knocked you down and bit off your face."
      return 'death'
    end
  end
end


class InHouse

  def enter()
    puts "You asking help and old woman invites you to the house"
    puts "We go in. And she offers you to solve a riddle fo help"
    print "> "

    action = $stdin.gets.chomp

    if action == 'agree'
      puts "What always runs but never walks, often murmurs,"
      puts "never talks, has a bed but never sleeps, has a mouth but never eats?"
      print "> "

      answer = $stdin.gets.chomp

      if answer == 'river'
        puts "She she snapped her fingers and you woke up in your bed."
        return 'end'
      else
        puts "She smile. And say: \"Seaase niseo gireq\""
        puts "You dont feel good and fall on ground"
        return 'death'
      end
    else
      return 'in_house'
    end
  end
end


class Map
  @@scenes = {
    'start' => Start.new(),
    'wood_house' => WoodHouse.new(),
    'bear' => Bear.new(),
    'in_house' => InHouse.new(),
    'death' => Death.new(),
    'end' => Finish.new(),
  }


  def initialize(start_scene)
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
