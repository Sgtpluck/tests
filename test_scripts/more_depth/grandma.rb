puts 	"HOW YA DOIN YOUNGSTER?"
response = gets.chomp

while true
	if response != response.upcase
		puts "EH? WHAT'S THAT YOU SAY?"
		response = gets.chomp
	elsif response == "BYE"
		puts "YOU'RE SUCH A GOOD KID."
		response = gets.chomp
		if response == "BYE"
			puts "I KNOW I LOVE YOU TOO."
			respose = gets.chomp
			if response == "BYE"
				puts "OKAY OKAY I GET THE POINT. I'M PROBABLY NOT GONNA BE AROUND MUCH LONGER BUT IF YOU WANNA BREAK MY HEART SO BE IT."
				break
			else
				response = gets.chomp
			end
		end
	else
		puts "I THINK THAT WAS " + (rand(19) + 1930).to_s
		response = gets.chomp
	end
end
		