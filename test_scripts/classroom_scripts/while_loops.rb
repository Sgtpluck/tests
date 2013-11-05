# def while_loops(var,i,inc)
# 	numbers = []

# 	while i < var
#   	puts "At the top i is #{i}"
#   	numbers.push(i)

#   	i = i + inc
#   	puts "Numbers now: #{numbers}"
#   	puts "At the bottom i is #{i}"
# 	end

# 	puts "The numbers: "

# 	for num in numbers
#   puts num
# 	end
# end

# while_loops(10,1,2)

def for_loop(start_num,end_num,inc)
	numbers = []
	range = (start_num..end_num).step(inc)
	for num in range
	numbers.push num
	puts "At the top, i is " + num.to_s

	puts "Numbers now: #{numbers}"
	puts "At the bottom, i is " + (num + inc).to_s
	end
end

for_loop(0,10,2)



# puts "What is the top number?"
# var = gets.chomp.to_i
# while_loop(var)

# Next Steps
# 1) Convert this while loop to a method that you can call, and replace 6 in the test (i < 6) with a variable.
# 2) Now use this method to rewrite the script to try different numbers.
# 3) Add another variable to the method arguments that you can pass in that lets you change the + 1 on line 8 so you can change how much it increments by.
# 4) Rewrite the script again to use this method to see what effect that has.
# 5) Now, write it to use for-loops and ranges instead. Do you need the incrementor in the middle anymore? What happens if you do not get rid of it?