class OrangeTree
  attr_accessor :age, :height, :oranges

  def initialize(age,height)
    @age = age
    @height = height
    @oranges = 0
  end

  def one_year_passes
    if @oranges != 0
      puts "As the season turns, #{oranges} oranges fall off the tree."
    end
    @oranges = 0
    @age = age + 1
    @height = height + 5
    add_oranges
    dies
    if @oranges != 0
      puts "#{oranges} oranges grow this year!"
    end
  end

  def add_oranges
    if age <= 3
      @oranges = 0
    elsif age <=30
      @oranges = @age 
    elsif age <=100
      @oranges = (3/2) * @age
    end
  end

  def dies
    if @age == 100
      puts "The majestic tree has grown its last orange. As you watch over it, you remember eating its oranges, and lounging in its shade. Truly, it was a noble tree"
      exit
    end
  end
  
  def count_the_oranges
    puts "#{@oranges} oranges"
  end

  def pick_the_oranges
    if @oranges == 0
      puts "There are no oranges to pick, silly!"
    else
    @oranges -= 1
    puts "Man, that was a delicious orange!"
    puts "There are #{oranges} oranges left"
    end
  end
end


  o = OrangeTree.new(95,10)
  puts "A tree is born!"
while true
  puts "What would you like to do? (C)ount the oranges? Let (o)ne year pass? (P)ick an orange?"
  action = gets.chomp.downcase
  case action
  when "o"
    o.one_year_passes
  when "c"
    o.count_the_oranges
  when "p"
    o.pick_the_oranges
  end
end

