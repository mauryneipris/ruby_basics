# More Modules

module Mammal
  class Dog
    def speak(sound)
      p "#{sound}"
    end
  end  
  class Cat
    def say_name(name)
      p "#{name}"
    end
  end

  def self.some_out_of_place_method(num)
    num ** 2
  end
end

# call classes in a module by appending the class name to the module name with two colons
buddy = Mammal::Dog.new
kitty = Mammal::Cat.new
buddy.speak('Arf!')
kitty.say_name('Kitty')
value = Mammal.some_out_of_place_method(4) # preferred method to call a method in a module
value = Mammal::some_out_of_place_method(4)