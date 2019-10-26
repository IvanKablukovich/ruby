def exer(number)
  i = 0
  numbers = []
  
  while i < number
    puts "At the top i is #{i}"
    numbers.push(i)
    i += 1
    puts "Numbers now: ", numbers
    puts "At the bottom i is: #{i}"
  end

  puts "The numbers: "
  (0..number).each {|num| puts num}
end


print "Write number: "
number = gets.chomp.to_i
exer(number)
