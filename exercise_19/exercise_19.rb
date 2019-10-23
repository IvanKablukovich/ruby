#def cheese_and_crackers(cheese_count, boxes_of_crackers)
  #puts "You have #{cheese_count} cheeses!"
  #puts "You have #{boxes_of_crackers} boxes of crackers!"
  #puts "Man that's enough for a party!"
  #puts "Get a blanket.\n"
#end


def my_function(first_name, last_name)
  puts "Your name is #{first_name}!"
  puts "Your last name is #{last_name}!"
end


my_function("Ivan", "Kablukovich")

first = "Ivan"
second = "Ivanovich"

my_function(first, second)

my_function("Iv" + "an", "Andre" + "ich")

my_function(first + "an", second + "ach")

print "Write first name: "
third = gets.chomp

print "Write last name: "
fouth = gets.chomp

my_function(third, fouth)
#puts "We can just give the function numbers directly:"
#cheese_and_crackers(20, 30)


#puts "OR, we can use variables from our script:"
#amount_of_cheese = 10
#amount_of_crackers = 50

#cheese_and_crackers(amount_of_cheese, amount_of_crackers)


#puts "We can even do math inside too:"
#cheese_and_crackers(10 + 20, 5 + 6)


#puts "And we can combine the two, variables and math:"
#cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)
