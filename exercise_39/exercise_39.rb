countries = {
  'Belarus' => 'BY',
  'Russia' => 'RU',
  'Germany' => 'DE',
  'Poland' => 'PL',
  'Japan' => 'JP'
}

cities = {
  'RU' => 'Moscow',
  'DE' => 'Berlin',
  'PL' => 'Varzhava'
}

cities['JP'] = 'Tokyo'
cities['BY'] = 'Minsk'

puts '-' * 10
puts "BY State has: #{cities['BY']}"
puts "JP State has: #{cities['JP']}"

puts '-' * 10
puts "Poland's abbreviation is: #{countries['Poland']}"
puts "Germny's abbreviation is: #{countries['Germany']}"

puts '-' * 10
puts "Poland has: #{cities[countries['Poland']]}"
puts "Germany has: #{cities[countries['Germany']]}"

puts '-' * 10
countries.each do |country, abbrev|
  puts "#{country} is abbreviated #{abbrev}"
end

puts '-' * 10
cities.each do |abbrev, city|
  puts "#{abbrev} has the city #{city}"
end

puts '-' * 10
countries.each do |country, abbrev|
  city = cities[abbrev]
  puts "#{country} is abbreviated #{abbrev} and has city #{city}"
end

puts '-' * 10
country = countries['Romania']

if !country
  puts "Sorry, no Romania."
end

# default values using ||= with the nil result
city = cities['RO']
city ||= 'Does Not Exist'
puts "The city for the state 'RO' is: #{city}"
