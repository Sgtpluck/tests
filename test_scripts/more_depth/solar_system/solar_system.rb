require "./planet.rb"
require "colorize"
require "lolcat"

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
     
  def begin_solar_system(number_of_planets)
    puts ""
    puts "A new solar system is born!".red.on_blue.bold
    puts ""
    puts "It has #{number_of_planets} planets. Please name them!"
    name_planets
    solar_check
  end

  def destroy_planet
    puts "Are you sure you want to destroy a planet?"
    




end

# moved to its own page
# number_of_planets = rand(1..5)
# my_solar_system = Solar_System.new(number_of_planets)
# my_solar_system.begin_solar_system(number_of_planets)






