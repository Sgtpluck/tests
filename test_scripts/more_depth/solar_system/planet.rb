class Planet
  attr_accessor :colonized
  attr_reader :name, :diameter, :type, :year_length, :mass, :moons

  def initialize(name)
    @name = name
    @type = ["gas giant","rocky"].sample
      if @type == "gas giant"
        @radius = (rand(25..70) * 1000)
        @mass = rand(2..8).to_s + " x 10 ^ #{rand(25..27)}"
        @colonized = false
      else
        @radius = (rand(2..6) * 1000)
        @mass = rand(3..6).to_s + " x 10 ^ #{rand(23..24)}"
        @colonized = [true,false].sample
      end
    @moons = rand(5)
  end

  def check_planets
    puts ""
    puts "This planet is named #{name}."
    type_stat
    measurements
    number_of_moons
    colony
  end

  def type_stat
    if @type == "gas giant"
      puts "#{name} is a gas giant, a massive planet with a thick atmosphere of hydrogen and helium"
    else
      puts "#{name} is a terrestial planet, also known as a rocky planet. It has a solid planetary surface."
    end
  end

  def measurements
    puts "#{@name} has a radius of #{@radius} km and a mass of #{@mass} kg."
  end

  def number_of_moons
    puts "It has #{@moons} moons."
  end

  def colony
    if @type == "rocky"
       if @colonized == true
          puts "There is a colony of intelligent species on this planet!"
        else
          puts "There are no signs of life, but this planet is habitable"
        end
    else
      puts "This planet is unhabitable."
    end
  end

end

