require "./oven.rb"

class Baker
  attr_accessor :rolling_pin, :apron, :ovens

  attr_reader :eggs, :butter, :rolling_pin, :sugar, :flour

  attr_reader :eggs, :butter, :sugar, :flour


  def initialize(options_hash)
    @flour  = 2
    @butter = 5
    @sugar  = 3
    @eggs   = 23
    @rolling_pin = options_hash[:rolling_pin]
    @apron = options_hash[:apron]
    @ovens = options_hash[:ovens]

  end

  def turn_off_ovens
    @ovens.each do |oven|
      oven.on = false
    end

    puts "Ok, its safe to go home! Good night!"

  end


  def make_cookies
    heat_oven(find_a_free_oven,375)
  end

  def heat_oven(baking_oven,temperature)
    baking_oven.set_temperature(temperature)
    puts "The oven is heating up to #{temperature}"
    heat_oven(find_a_free_oven, 375)
    # other steps in the recipe...
    # gather_ingredients(sugar, flour, eggs)
    # mix_ingredients_in_blender()
    # put_in_oven
  end

  def find_a_free_oven
    free_oven = # some oven that's
    return free_oven
  end

  def heat_oven(baking_oven, temperature)
    baking_oven.set_temperature(temperature)
  end

  def find_a_free_oven
    free_oven = #some oven that's free
    return free_oven
  end

  def turn_off_items #if there are multiple ovens, this will discover which ovens in the Baker's array are on.
    # oven_on = @ovens.select {|oven| oven.on == true }

    # @ovens.select do |oven|
    #   oven.on == temperature
    # end

    @ovens.each do |oven|
      # if oven.on == true
        oven.on = false
      end
      puts "Okay, it's save to go home!"
  end

  end


end