first, second, third, fouth = ARGV

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third} #{fouth}"

print "Write something: "
text = $stdin.gets.chomp
puts "It is your string: #{text}."
