class Toy
  attr_accessor :color, :material, :size, :newness :name

  def initialize(options = {})
    @color = options[:color] || ["purple", "red", "rainbow", "glittery"].sample
    # @material = options[:material] || ["plastic", "wood", "plutonium", "iron"].sample
    # @size = options[:size] || ["HUMUNGOUS", "teeny tiny", "just right"].sample
    # @newness = options[:newness] || ["just out of the box", "falling apart", 
    #                                 "just dust and a memory", "perfectly playable"].sample
    @name = "kermit"
    puts "You get to play with #{@name} the #{@toy}!"
  end
end


#   def play
#     @toy.play
#   end
# end

class Horse < Toy

  def initialize(name_options={})
    @name = name_options[:name] || "Ponyboy"
  end

  def play
    puts "Gallop! Gallop! Gallop!"
  end
end