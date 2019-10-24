the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

#1
the_count.each do |number|
  puts "This is count #{number}"
end

#2
fruits.each do |fruit|
  puts "A fruit of type: #{fruit}"
end

#3
change.each {|i| puts "I got #{i}" }

# we can also build lists, first start with an empty one
elements = []

#(0...5).each do |i| four element
(0..5).each do |i| # five elements
  puts "adding #{i} to the list."
  #elements.push(i)
  elements << i
end

elements.each {|i| puts "Element was: #{i}" }
