
class Chair
  attr_accessor :name, :type, :color
  
 	def initialize(name_var,type,color)
		@name = name_var
		@name_length = name_var.length
		@type = type
		@color = color
  end

  def self.description
  	"The chair is known for its antiquity and simplicity, although for many centuries it was an article of state and dignity rather than an article of ordinary use."
  end

  def self.all
  	
  end

end