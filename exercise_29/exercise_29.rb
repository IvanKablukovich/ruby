people = 30
cats = 30
dogs = 25


if people < cats
  puts "Too many cats! The world is doomed!"
end

if people > cats
  puts "Not many cats! The world is saved!"
end


if people < dogs
  puts "The world is drooled on!"
end

if people > dogs
  puts "The world is dry!"
end


dogs += 5

if people > dogs
  puts "People are greater to dogs."
end

if people < dogs
  puts "People are less to dogs."
end

if (people == cats && people == dogs)
  puts "Every cat have people and dog."
end
