#method lookup path example
module Walkable
  def walk 
    "I'm walking."
  end
end

module Swimmable
  def swim
    "i'm swimming."
  end  
end

module Climbable
  def climb 
    "I'm climbing."
  end 
end

class Animal
  include Walkable

  def speak
    "I'm an animal, and I speak!"
  end
end

class GoodDog < Animal
  include Swimmable
  include Climbable  
end

puts "---Animal method lookup---"
puts Animal.ancestors
puts ""
fido = Animal.new
fido.speak # speak found in Animal  
fido.walk # walk found in Walkable module
#fido.swim # swim method not found in the path
puts ""
puts "---GoodDog method lookup---"
puts GoodDog.ancestors