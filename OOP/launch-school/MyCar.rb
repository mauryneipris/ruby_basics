module Towable
  def can_tow(lbs)
    lbs < 2000 ? true : false
  end  
end

class Vehicle
  @@total_vehicles_created = 0

  attr_accessor :color
  attr_reader :year, :model , :make
  def initialize(year, make, model, color, current_speed=0,on_off=0)
    @year = year
    @color = color
    @make = make
    @model = model
    @on_off = on_off
    @current_speed = current_speed
    @@total_vehicles_created += 1
  end

  def age
    "Your #{self.model} is #{years_old} years old."
  end

  def speed_up(number) 
    @current_speed += number
  puts "You push the gas pedal and accelerate #{number} mph"
  end

  def brake(number)   
    @current_speed -= number
    puts "You push the brake pedal and decelerate #{number} mph"
  end

  def current_speed
    puts "You are now traveling at #{@current_speed} mph"
  end

  def startup
    @on_off = 1
    puts "The #{@model}'s engine is now running."
  end

  def shutdown
    @current_speed = 0
    @on_off = 0
    puts "The #{@model}'s engine is now off. Time to call it a day!"
  end

  def spray_paint(color)
    self.color = color
    puts "The #{@model} is now #{@color}."
  end

  def info
    puts "The #{color} #{model} was made in #{year}."
  end

  def self.gas_mileage(gallons,miles)
    puts "#{miles /gallons} miles per gallon of gas"
  end


  def self.number_of_vehicles
    puts "This program has created #{@@total_vehicles_created} vehicles."
  end

  private

  def years_old
    Time.now.year - self.year
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4
  attr_accessor :color
  attr_reader :year, :model , :make

  # def initialize(year, make, model, color, current_speed=0,on_off=0)
  #   @year = year
  #   @color = color
  #   @make = make
  #   @model = model
  #   @on_off = on_off
  #   @current_speed = current_speed
  # end

  def to_s
    puts "This car's make is a #{self.make}, the model is #{self.model}. It is #{self.color} and was made in #{self.year}."
  end

end

class MyTruck < Vehicle
  include Towable

  NUMBER_OF_DOORS = 2

  def to_s
    puts "This truck's make is a #{self.make}, the model is #{self.model}. It is #{self.color} and was made in #{self.year}."
  end
end

accord = MyCar.new(2004, "Honda", "Accord", "silver")
accord.startup
accord.speed_up(15)
accord.current_speed
accord.speed_up(10)
accord.current_speed
accord.brake(15)
accord.current_speed
accord.brake(10)
accord.current_speed
accord.shutdown

accord.spray_paint('orange')
accord.info
MyCar.gas_mileage(12, 350)
puts accord

puts "---Vehicle method lookup---"
puts Vehicle.ancestors

puts "---MyCar method lookup---"
puts MyCar.ancestors

puts "---MyTruck method lookup---"
puts MyTruck.ancestors