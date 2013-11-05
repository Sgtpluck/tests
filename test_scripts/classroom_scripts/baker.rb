class Baker
	attr_accessor :eggs, :butter, :rolling_pin #these are instance variables that are public, and makes the methods for getting/setting
	
	def initialize(rolling_pin_variable)
		@flour = 2
		@butter = 5
		@sugar = 3
		@eggs = 23
		@rolling_pin = rolling_pin_variable
	end


	# def eggs=(num_of_eggs) #this allows you to set the value of eggs, ie bob.eggs=(23)
	# 	eggs = num_of_eggs
	#methods with self. are class methods

	def make_cookies
		heat_oven(350)
	end

	def heat_oven(temp)
		puts "The oven is heating up to #{temp}"
	end
end

bob = Baker.new(true)
puts bob.eggs