name, second_name = ARGV
prompt = '>>> '

puts "Hi #{name} #{second_name}."
puts "I'd like to ask you a few questions."
puts "Do you like me #{name}? "
print prompt
likes = $stdin.gets.chomp

puts "Where do  you live #{name}?"
print prompt
lives = $stdin.gets.chomp

puts "What kind of computer do you have? "
print prompt
computer = $stdin.gets.chomp

puts """
Alright, so you said #{likes} about liking me.
You live in #{lives}.  Not sure where that is.
And you have a #{computer} computer.  Nice.
"""
