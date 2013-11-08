class Calculator
  attr_accessor :first_num, :second_num

  def initialize
    @nums= []
    @result = 0
    @basic_command = ""
    calc_method
    get_nums
    actual_calc
  end

  def actual_calc
    result = @nums.inject(@basic_command)
    puts @nums.join(" #{@basic_command} ") + " = #{result}"
  end

  def get_nums
    if @basic_command == :sqrt
      puts "What number for which would you like to find the square root?"
      number = gets.chomp
      test_for_number(number)
      @nums.push(number.to_i)
    else
      puts "Please enter the first number."
      number = gets.chomp
      test_for_number(number)
      @nums.push(number.to_i)
      puts "Now enter the second number."
      number = gets.chomp
      test_for_number(number)
      @nums.push(number.to_i) 
    end
  end


  def test_for_number(first_num)
    while true
      begin
      Float(first_num)
      break
      rescue ArgumentError
      puts "That's not an appropriate number. TRY AGAIN."
      first_num = gets.chomp
      end
    end
  end


  def calc_method
    puts "Hi there! What would you like to do? Add, subtract, multiply, etc, etc?"
    response = gets.chomp.downcase
    
    [:+, :add, :plus].each do |command|
      if response.include? command.to_s
        @basic_command = :+
      end
    end

    [:-, :subtract, :minus].each do |command|
      if response.include? command.to_s
        @basic_command = :-
      end
    end

    [:*, :multiply].each do |command|
      if response.include? command.to_s
        @basic_command = :*
      end
    end

    [:/, :divide].each do |command|
      if response.include? command.to_s
        @basic_command = :/
      end
    end

    [:square, :root, :squareroot].each do |command|
      if response.include? command.to_s
        @basic_command = :sqrt
      end
    end

    [:exponent, :exponify, :exponentiate].each do |command|
      if response.include? command.to_s
        @basic_command = :+
      end
    end

    if @basic_command.empty?
      puts "I'm sorry, I can't do that."
    end
  end


end

a = Calculator.new
