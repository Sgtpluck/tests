require "./planet.rb"
require "./solar_system.rb"
require "colorize"
require "lolcat"


number_of_planets = rand(1..5)
my_solar_system = Solar_System.new(number_of_planets)
my_solar_system.begin_solar_system(number_of_planets)

while true
  basic_command = ""
  puts "What would you like to do in your solar system?"
  response = gets.chomp.downcase
  
  [:destroy, :ruin, :stomp, :smash, :crush].each do |command|
    if response.include? command.to_s
      basic_command = :destroy_planet
    end
  end

  [:create, :nurture, :build, :construct].each do |command|
    if response.include? command.to_s
      basic_command = :create_planet
    end
  end

  [:check, :status, :peek].each do |command|
    if response.include? command.to_s
      basic_command = :solar_check
    end
  end

  if basic_command.empty?
    puts "You can't do that, sorry!"
  else
    my_solar_system.send(basic_command)
  end
end

