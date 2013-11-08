require "bird.rb"
class Penguin < Bird

  def initialize(name_option={})
    @name = name_option[:name] || "Buddy"
    super
  end
  
  def fly
    puts "I'd rather swim"
  end

  def preen
    super #this goes to the parent class, finds this method, does that and then does everything else
    puts "Waddle waddle waddle..."
    puts "SQUAWK"
  end

  alias :swim :fly

end