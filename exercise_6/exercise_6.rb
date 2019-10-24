types_of_people = 10
x = "There are #{types_of_people} types of people."
binary = "binary"
do_not = "don't"
y = "Those who know #{binary} and those who #{do_not}."

#There are 10 types of people.
puts x
#Those who know binary and those who don't.
puts y

#I said: There are 10 types of people.. if i use '' instead ""
#i will see: I said: #{x}.
puts "I said: #{x}."
#same
puts "I also said: '#{y}'."

hilarious = false
joke_evaluation = "Isn't that joke so funny?! #{hilarious}"
#false
puts joke_evaluation

w = "This is the left side of..."
e = "a string with a right side."
#This is the left side of...a string with a right side.
puts w + e
