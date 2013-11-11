class Calculator
  attr_accessor :first_num, :second_num

  def initialize
    @nums= []
    @result = 0
    @basic_command = nil
    calc_method
    get_nums
    actual_calc
  end

  def actual_calc
    if @basic_command == :sqrt
        result = Math.sqrt(@nums[0])
        puts "The square root of #{@nums[0]} is #{result}."
      else
        result = @nums.inject(@basic_command)
        puts @nums.join(" #{@basic_command} ") + " = #{result}"
      end
  end


  def get_nums
    if @basic_command == :sqrt
      puts "What number for which would you like to find the square root?"
      number = gets.chomp
      test_for_number(number)
      @nums.push(number.to_f)
    else
      puts "Please enter the first number."
      number = gets.chomp
      test_for_number(number)
      @nums.push(number.to_f)
      puts "Now enter the second number."
      number = gets.chomp
      test_for_number(number)
      @nums.push(number.to_f) 
    end
  end


  def test_for_number(first_num)
    while true
      begin
      Float(first_num)
      break
      rescue ArgumentError
      puts "If you're not going to put in an appropriate number, I'm not going to do an appropriate calculation."
      puts "PBTHHHH"
      first_num = gets.chomp
      end
    end
  end


  def calc_method
    puts "Hi there! What would you like to do? Add, subtract, multiply, etc, etc?"
    response = gets.chomp.downcase
    
    
    # [:+, :add, :plus].each do |command|
    #   if response.include? command.to_s
    #     @basic_command = :+
    #   end
    # end

    # [:-, :subtract, :minus].each do |command|
    #   if response.include? command.to_s
    #     @basic_command = :-
    #   end
    # end

    # [:*, :multiply].each do |command|
    #   if response.include? command.to_s
    #     @basic_command = :*
    #   end
    # end

    # [:/, :divide].each do |command|
    #   if response.include? command.to_s
    #     @basic_command = :/
    #   end
    # end

    # [:square, :root, :squareroot].each do |command|
    #   if response.include? command.to_s
    #     @basic_command = :sqrt
    #   end
    # end

    # [:exponent, :exponify, :exponentiate].each do |command|
    #   if response.include? command.to_s
    #     @basic_command = :**
    #   end
    # end

    # if @basic_command.empty?
    #   puts "I'm sorry, I can't do that."
    # end


    if ["+", "add", "plus"].include? response
        @basic_command = :+
      end

    if ["-", "subtract", "minus"].include? response
        @basic_command = :-
        response.split("-")
      end

    if ["*", "multiply"].include? response
        @basic_command = :*
      end

    if ["/", "divide"].include? response
        @basic_command = :/
      end

    if ["square", "root", "squareroot"].include? response
        @basic_command = :sqrt
      end

    if ["exponent", "exponify", "exponentiate"].include? response
         @basic_command = :**
       end

    if @basic_command == nil
      puts "I'm sorry, I can't do that."
      exit
    end
  end


end

a = Calculator.new
