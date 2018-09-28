states = {
  'Oregon' => 'OR',
  'Florida' => 'FL',
  'California' => 'CA',
  'New York' => 'NY',
  'Michigan' => 'MI'
}

cities = {
  'CA' => 'San Francisco',
  'MI' => 'Detroit',
  'FL' => 'Jacksonville'
}

cities['NY'] = "New York City"
cities['OR'] = 'Portland'

puts '-' * 10
puts "NY State has: #{cities['NY']}"
puts "OR State has: #{cities['OR']}"

puts '-' * 10
puts "Michigan's abbreviation is #{states['Michigan']}"
puts "Florida's abbreviation is #{states['Florida']}"

puts '-' * 10
puts "Michigan has #{cities[states['Michigan']]}"
puts "Florida has #{cities[states['Florida']]}"

puts '-' * 10
states.each do |state, abbrev|
  puts "#{state} is abbreviated #{abbrev}"
end

puts '-' * 10
cities.each do |abbrev, city|
  puts "#{abbrev} has the city #{city}"
end

puts '-' * 10
states.each do |state, abbrev|
  city = cities[abbrev]
  puts "#{state} is abbreviated #{abbrev} and has city #{city}"
end

puts '-' * 10
state = states['Texas']

if !state
  puts "Sorry, no Texas"
end

city = cities['TX']
city ||= "Does not exist"
puts "The city for the state 'TX' is: #{city}"


#Study drills

#1 & 2

london = {
  "Hammersmith" => "West London",
  "Kensington" => "West London",
  "West Norwood" => "South London",
  "Brixton" => "South London",
  "Shoreditch" => "East London",
  "Stratford" => "East London",
  "Wood Green" => "North London",
  "Green Lanes" => "North London"
}

postcodes = {
  "West London" => "W",
  "North West London" => "NW",
  "South West London" => ",SW",
  "North London" => "N",
  "East London" => "E",
  "South East London" => "SE",
}

puts postcodes[london['Hammersmith']]

postcodes["South London"] = "S"
puts postcodes

postcodes.each { |p, abbrev| puts "#{p}'s abbreviation is #{abbrev}"}

london.delete("Green Lanes")
puts london

london.each_key{|key| puts "#{key}" }
london.each_value{|value| puts "#{value}" }

puts postcodes.invert

#3. You can sort hash keys in alphabetical order by using the sort method

sorted = london.sort
