# class example using Vikings
class Person
  MAX_HEALTH = 120
  def initialize(name,age,health,strength)
    @name = name
    @age = age
    @health = health
    @strength = strength
  end
  def heal
    self.health += 1 unless self.health + 1 > MAX_HEALTH
  end
end
class Viking < Person
  attr_accessor :name, :age, :health, :strength
  def initialize(name,age,health,strength, weapon)
    super(name,age,health,strength)
    @weapon = weapon
  end

  def heal
    2.times { super }
    puts "Ready for battle!"
  end    
  def attack(enemy)
    #code to fight
  end
  def take_damage(damage)
    self.health -= damage
    self.shout("Ouch!")
  end
  def shout(str)
    puts str
  end
  def self.random_name
    ["Erik", "Lars", "Leif"].sample
  end
  def self.create_warrior(name)
    age = rand * 20 + 15
    health = [age * 5,120].min
    strength = [age / 2, 10].min
    Viking.new(name, health, age, strength)
  end
  def self.silver_to_gold(silver_pieces)
    silver_pieces / 10
  end
end

warrior1 = Viking.create_warrior(Viking.random_name)