require "colorize"

class Game
  attr_accessor :guesses, :placement, :color

  def initialize(player_name)
    choices = ["red","blue","green","purple","black","white"]
    @solution = [choices.sample,choices.sample,choices.sample] 
    @player_name = player_name
    puts "Hi #{@player_name}! There are six colors: #{"red.".red}, #{"blue".blue}, #{"green".green}, #{"purple".magenta}, #{"black".black} and #{"white".white}. The computer has picked three, in a specific order. Your task is to guess which colors in what order."
    @guesses = []
    @placement = []
  end

  def answer
    puts @solution.join(" ")
  end

  def player_guess
    puts "Guess the pegs, in order. (Please separate them with a space.)"
    answer = gets.chomp.downcase.split
      while answer.length != 3
        puts "That's not the right number of pegs! Please try again."
        answer = gets.chomp.downcase.split
      end
    @guesses.push(answer)
      if @solution.eql? @guesses[-1]
        puts "You guessed correctly! The game is over!"
        exit
      else
        accurate?
      end
  end

  def all_guesses
    puts "Here's all your guesses."
    @guesses.each { |guess| puts guess.join(" ") }
  end

  def accurate?
    guess_check = @guesses[-1] #most recent guess
    @placement = []  #array uses to count correct color/placement
    @color = [] #array used to count the instances of color but not placement accuracy
    replacement_color = @solution.dup #substituting in for @solution so I can remove entries as they are verified.

    #checking for correct pegs
      index = 0
      while index < guess_check.count
        if guess_check[index] == @solution[index]
          @placement << "peg"
          replacement_color.delete(@solution[index].to_s)
        end
          index += 1
    end
    
    
    #checking for correct colors
      guess_check.each do |peg| 
        if replacement_color.include? peg
        @color.push(peg)
        replacement_color.delete(peg)
        end
      end
      puts "You have #{@placement.length} pegs in the correct space."
      puts "You have #{color.length} pegs that are correct in color but not in placement."
  end


    


  class Player
    attr_accessor :name

    def initialize(player_name)
    @name = player_name
    end
  end

end

a = Game.new("Davida")
i = 0
a.player_guess
while i < 10
  basic_command = ""
  puts "Would you like to guess again, check your previous guesses, or look at your accuracy?"
  response = gets.chomp.downcase

  [:guess, :try, :go, :turn, :again].each do |command|
    if response.include? command.to_s
      basic_command = :player_guess
    end
  end

  [:check, :previous, :guesses, :status].each do |command|
    if response.include? command.to_s
      basic_command = :all_guesses
    end
  end

  [:accurate, :accuracy, :correct].each do |command|
    if response.include? command.to_s
      basic_command = :accurate?
    end
  end

    if basic_command.empty?
      puts "I'm sorry, you can't do that."
    else
      a.send(basic_command)
    end

end



