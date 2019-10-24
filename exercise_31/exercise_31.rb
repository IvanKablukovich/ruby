puts "You enter a dark room with two doors.  Do you go through door #1 or door #2?"

print "> "
door = $stdin.gets.chomp

if door == "1"
  puts "There's a two cups with colored liquid in them."
  puts "1. Drink red liquid."
  puts "2. Drink blue liquid."

  print "> "
  cup = $stdin.gets.chomp

  if cup == "1"
    puts "It's wine. Door was open!"
  elsif cup == "2"
    puts "Door was open! But you dont feel good and fall on ground. Your eyes close!"
  else
    puts "Well, doing %s is probably better.  Door open!." % cup
  end

elsif door == "2"
  puts "You stare into the endless abyss at Cthulhu's retina."
  puts "1. Blueberries."
  puts "2. Yellow jacket clothespins."
  puts "3. Understanding revolvers yelling melodies."

  print "> "
  insanity = $stdin.gets.chomp

  if insanity == "1" || insanity == "2"
    puts "Your body survives powered by a mind of jello.  Good job!"
  else
    puts "The insanity rots your eyes into a pool of muck.  Good job!"
  end

else
  puts "You stumble around and fall on a knife and die.  Good job!"
end

if cup == "1"
  puts "In the next room you see chest full of gold and open door."
  puts "1. Take gold."
  puts "2. Just leave."
  print "> "
  final = $stdin.gets.chomp
  if final == "1"
    puts "Door open and roof collapsed! You die!"
  else
    puts "Congratulations!!! You escaped!"
  end
end
