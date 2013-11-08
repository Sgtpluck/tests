class Dragon

  def initialize(name)
    @name = name
    @asleep = false
    @stuffInBelly     = 10  #  He's full.
    @stuffInIntestine =  0  #  He doesn't need to go.

    puts @name + ' is born.'
  end

  def feed
    puts 'You feed ' + @name + '.'
    @stuffInBelly = 10
    passageOfTime
  end

  def walk
    puts 'You walk ' + @name + '.'
    @stuffInIntestine = 0
    passageOfTime
  end


  def putToBed
    puts 'You put ' + @name + ' to bed.'
    @asleep = true

    3.times do
      if @asleep
        passageOfTime
      end

      if @asleep
        puts @name + ' snores, filling the room with smoke.'
      end
    end

    if @asleep
      @asleep = false
      puts @name + ' wakes up slowly.'
    end
  end

  def toss
    puts 'You toss ' + @name + ' up into the air.'
    puts 'He giggles, which singes your eyebrows.'

    passageOfTime
  end

  def rock
    puts 'You rock ' + @name + ' gently.'

    @asleep = true

    puts 'He briefly dozes off...'

    passageOfTime

    if @asleep
      @asleep = false
      puts '...but wakes when you stop.'
    end
  end

  def check_up
    puts "How's your dragon doing?"
    define_hunger
    define_poopy
  end

  def define_hunger
    if @stuffInBelly >= 8
      puts "#{@name}'s not hungry!"
    elsif @stuffInBelly >= 4
      puts "#{@name}'s a little hungry, but not ready to eat you yet."
    elsif @stuffInBelly >= 0
      puts "#{@name}'s almost hungry enough to eat you! Better feed him, quick!"
    end
  end

  def define_poopy
    if @stuffInIntestine >= 8
      puts "Uh, oh, #{@name}s about to have an accident, better walk him!"
    elsif @stuffInIntestine >= 4
      puts "#{@name} has to go to the bathroom, but it could wait."
    elsif @stuffInIntestine >= 0
      puts "#{@name}'s feeling fine. No urgency whatsoever."
    end
  end





  private

  #  "private" means that the methods defined here are
  #  methods internal to the object.  (You can feed
  #  your dragon, but you can't ask him if he's hungry.)

  def hungry?
    #  Method names can end with "?".
    #  Usually, we only do this if the method
    #  returns true or false, like this:
    @stuffInBelly <= 2
  end

  def poopy?
    @stuffInIntestine >= 8
  end

  def passageOfTime
    if @stuffInBelly > 0
      #  Move food from belly to intestine.
      @stuffInBelly     = @stuffInBelly     - 1
      @stuffInIntestine = @stuffInIntestine + 1
    else  #  Our dragon is starving!
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' is starving!  In desperation, he ate YOU!'
      exit  #  This quits the program.
    end

    if @stuffInIntestine >= 10
      @stuffInIntestine = 0
      puts 'Whoops!  ' + @name + ' had an accident...'
    end

    if hungry?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + '\'s stomach grumbles...'
    end

    if poopy?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' does the potty dance...'
    end
  end

end

puts "What would you like to name your dragon?"
name = gets.chomp
pet = Dragon.new(name)

# while true
#   puts "What would you like to do with your dragon? You can (f)eed him, (t)oss him, (w)alk him, (p)ut him to bed, or (r)ock him!"
#   response = gets.chomp.downcase
#   case response
#   when "f"
#     pet.feed
#   when "t"
#     pet.toss
#   when "w"
#     pet.walk
#   when "p"
#     pet.putToBed
#   when "r"
#     pet.rock
#   end
# end

  while true
    puts "What would you like to do with your dragon?" 
    response = gets.chomp.downcase 
    basic_command = ""

    [:feed, :eat, :food, :serve, :meal].each do |command|
      if response.downcase.include? command.to_s
        basic_command = :feed
      end
    end

    [:run, :walk, :exercise, :move].each do |command|
      if response.downcase.include? command.to_s
        basic_command = :walk
      end
    end

    [:play, :toss, :throw, :tickle].each do |command|
      if response.downcase.include? command.to_s
        basic_command = :toss
      end
    end

    [:bed, :sleep, :nap].each do |command|
      if response.downcase.include? command.to_s
        basic_command = :putToBed
      end
    end

    [:rock, :soothe, :placate, :pet].each do |command|
      if response.downcase.include? command.to_s
        basic_command = :rock
      end
    end

    [:check, :stats, :hungry, :poopy, :doing].each do |command|
      if response.downcase.include? command.to_s
        basic_command = :check_up
      end
    end

    if basic_command.empty?
      puts "I'm sorry, you can't do that with #{@name}"
    else
      pet.send(basic_command)
    end


  end


#   if !basic_command.empty?
#     pet.send(command)
#   end
# end












