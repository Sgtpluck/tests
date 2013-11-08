# COLORS = ["blue", "rainbow", "hot pink"]
# MATERIALS = ["plastic", "metal", "paper"]

class Toychest
  attr_accessor :color, :size, :number_of_toys, :organized
  attr_reader :toys 

  def initialize #not sure yet. gonna make toy classes first)
    @toys = {"horse" => Horse.new("Ponyboy")}
  end

  def open 
  end

  def close
    puts "Your adventure is over."
  end

  def pick(toy_name)
    puts "What a magical #{toy_name}!"
    @toy = @toys[toy_name]
    if toy_name == "horse"
    play
  end
end 

class Toy
  attr_accessor :color, :material, :size, :newness #:name?

  def initialize(options = {})
    @color = options[:color] || ["purple", "red", "rainbow", "glittery"].sample
    @material = options[:material] || ["plastic", "wood", "plutonium", "iron"].sample
    @size = options[:size] || ["HUMUNGOUS", "teeny tiny", "just right"].sample
    @newness = options[:newness] || ["just out of the box", "falling apart", 
                                    "just dust and a memory", "perfectly playable"].sample
    @name = name
    puts "You get to play with #{name} the #{@toy}!"
  end
end

# fi = Horse.new("FI", {})

#   def play
#     @toy.play
#   end
# end

class Horse < Toy
  attr_accessor :name

  def initialize(name)
    @name = "Ponyboy"
    super
  end

  def play
    puts "Gallop! Gallop! Gallop!"
  end
end

end


# toychest.pick("horse")

# horse.play

 