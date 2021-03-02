my_hash = {
  "a random word" => "ahoy",
  "Dorothy's math test score" => 94,
  "an array" => [1,2,3],
  "an empty hash within a hash" => {}
}

new_hash = Hash.new

another_hash = { 9 => "nine", :six => 6 }

# Accessing values in a hash

shoes = {
  "summer" => "sandals",
  "winter" => "boots"
}

shoes["summer"] # => "sandals"

shoes["hiking"] # => nil

shoes.fetch("hiking") # => KeyError: key not found: "hiking"

shoes.fetch("hiking", "hiking boots") # => "hiking boots". fetch will return a given default value if it doesn't exist already

# Adding and Changing Data

shoes["fall"] = "sneakers"

shoes #=> {"summer"=>"sandals", "winter"=>"boots", "fall"=>"sneakers"}

# Change value of existing key

shoes["summer"] = "flip-flops"

# Removing Data

shoes.delete("summer")

# Methods

# keys and values methods return arrays of keys and values respectively
books = {
  "Infinite Jest" => "David Foster Wallace",
  "Into the Wild" => "Jon Krakauer"
}

books.keys # => ["Infinite Jest", "Into the Wild"]
books.values # => ["David Foster Wallace", "Jon Krakauer"]

#Merging Two Hashes

hash1 = { "a" => 100, "b" = 200}
hash2 = { "b" => 254, "d" = 300}

hash1.merge(hash2) # => { "a" => 100, "b" => 254, "c" => 300 }

# Symbols as hash keys (:a_symbol)

# Rocket syntax
american_cars = {
  :chevrolet => "Corvette",
  :ford => "Mustang",
  :dodge => "Ram"
}

# Symbols syntax
japanese_cars = {
  honda: "Accord",
  toyota: "Corolla",
  nissan: "Altima"
}

american_cars[:ford] # => "Mustang"
japanese_cars[:honda] # => "Accord"

# LaunchSchool code examples

person = {
  height: '6 ft',
  weight: '150 lbs' 
}

#Add key-pairs

person[:hair] = 'brown'

#person => {:height=>'6 ft', :weight=>'160 lbs', :hair=>'brown'}

person[:age] = 62

# Delete

person.delete(:age)

# Retrieve
person[:weight]

#Merge(adding ! makes it a destructive change to the orginal)
person.merge!(new_hash)

# Common Methods

name_and_age = {"Bob" => 42, "Steve" => 31, "Joe" => 19}

#has_key?

name_and_age.has_key?("Steve")
#=> true
name_and_age.has_key?("Larry")
#=>false

# select

name_and_age.select { |key, value| key == "Bob" }
#=> {"Bob" => 42}
name_and_age.select { |key,value| (key == "Bob") || (value == 19) }
#=> {"Bob" => 42, "Joe" => 19}

# fetch

name_and_age.fetch("Steve")
#=> 31
name_and_age.fetch("Larry")
#=> KeyError: key not found: "Larry"
name_and_age.fetch("Dave", "Dave's not here, man")
#=> "Dave's not here, man"

#to_a

name_and_age.to_a
#=> [["Bob", 42],["Steve", 31], ["Joe", 19]]

# keys and values
name_and_age.keys
# => ["Bob", "Steve", "Joe"]
name_and_age.values
# => [42,31,19]

# print out the keys in a hash
name_and_age.keys.each { |k| puts k}

#Exercises

# Merge

hash1 = {"a" => 100, "b" => 200}
hash2 = { "b" = 255, "c" = 400}

hash1.merge(hash2)

#=> {"a" => 100, "b" => 255, "c" => 300}

hash1.merge!(hash2)

# => {"a" => 100, "b" => 255, "c" => 300}

# program that loops through a hash and prints all the keys
bikes = {
  Bianchi: "road"
  Kona: "mtn"
  Priority: "commuter"
}

bikes.each_key { |key| puts key}

# program that loops through a hash and prints all the values

bikes.each_value { |value| puts value }

bikes.each { |key,value| puts "#{key} is known for #{value} bikes."}

# does a hash have a specific value

has_value?

if bikes.has_value?("gravel")
  puts "Got it"
else
  puts "Nope!"
end