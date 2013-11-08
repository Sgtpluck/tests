class Bird
  attr_accessor :feathers

  def initialize(options={})
    @feathers = options[:feathers] || rand(100..10000)
    @color = options[:color] || pick_a_color
  end

  def pick_a_color
    ["green","red","blue"].sample
  end



  def preen
    puts "I am cleaning my feathers"
  end

  def fly
    puts "I am flying"
  end
    
  end