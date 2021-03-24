module Swimmable
  def swim
    "I'm swimming!"
  end
end

class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def speak
    "Hello!"
  end

  def a_public_method
    "Will this work?" + self.a_protected_method
  end

  protected

  def a_protected_method
    "Yes, I'm protected!"
  end
end

class GoodDog < Animal
  include Swimmable # include Swimmable module.
  DOG_YEARS = 7 #constant
  @@number_of_dogs = 0  # class variable
  attr_accessor :name, :height, :weight, :age #getter and setter. Read and write accessors



  def initialize(n, h, w, a)
    @@number_of_dogs += 1
    super(name) # super inherits methods in the superclass. So name is passed to the Animal class initialize method.
    @height = h
    @weight = w
    @age = a
  end

  def speak
    super + " from the GoodDog class!" # using the Animal class's speak method and adding more to it.
  end

  def change_info(n, h, w)
    self.name = n # self used for instance method
    self.height = h
    self.weight = w
  end

  def info 
    "#{name} weighs #{weight} and is #{height} tall."
  end

  def self.what_am_i #self used for class method
    "I'm a GoodDog class!"
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end

  def what_is_self
    self
  end

  def public_disclosure
    "#{self.name} is #{human_years} in human years."
  end

  private

  def human_years
    age * DOG_YEARS
  end
end


puts GoodDog.what_am_i

sparky = GoodDog.new("Sparky", "12 inches", "10 lbs", 4)
sparky.human_years
puts sparky.info

sparky.change_info("Spartacus", "24 inches", "45 lbs")
puts sparky.info

puts GoodDog.total_number_of_dogs

p sparky.what_is_self

fido = Animal.new
fido.a_public_method