require "./planet.rb"

class Solar_System
  attr_reader :planet, :planets, :planet_number

  def initialize(planet_number)
    @planets = []
    @planet_number = planet_number
  end

  def name_planets
    i = 0
    while i < planet_number
      puts "What is the name of this planet?"
      name = gets.chomp
      name = Planet.new(name)
      @planets.push(name)
      i += 1
    end
  end

  def solar_check
   @planets.each do |planet|
    planet.check_planets
    end
  end
     

end

number_of_planets = rand(5)
my_solar_system = Solar_System.new(number_of_planets)
puts "A new solar system is born!"
puts "It has #{number_of_planets} planets. Please name them!"
my_solar_system.name_planets
puts @planets
my_solar_system.solar_check





