def start
  puts "There room with 2 doors, which you choose?"
  print "> "
  choice = $stdin.gets.chomp

  if choice.include? "first" or choice.include? "1"
    first_room
  elsif choice.include? "second" or choice.include? "2"
    second_room
  else
    puts "Its not working"
  end
end


def dead(why)
  puts "Game over. #{why}"
end


def first_room
  dead("You fall in dark!")
end


def win
  "Congrats! You win and alive"
end

def second_room
  puts "There are room with two cups with color liquid"
  puts "First with red liquid. Second with red liquid"
  print "> "
  cup = $stdin.gets.chomp

  if cup == "first"
    puts "Its wine. Door open"
    win
  elsif cup == "second"
    dead("Door open. But you dont fell good and fall on ground")
  else
    puts "Its not working!"
  end
end

start
