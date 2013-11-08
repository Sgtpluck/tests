class Teen

  def questioned
    puts "Sure."
  end

  def yell
    puts "Woah, chill out"
  end

  def say_nuthin
    puts "Fine, be that way."
  end

  def anything_else
    puts "Whatevs."
  end

  def responses(command)
    if command == "" || command != /("a".."z")/ 
      say_nuthin
    elsif command.upcase == command
      yell
    elsif command.include? "?"
      questioned
    else
      anything_else
    end
  end

end

me = Teen.new
while true
  puts "What do you want to say to the teen?"
  response = gets.chomp
  me.responses(response)
end
