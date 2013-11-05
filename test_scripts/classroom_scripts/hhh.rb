range = (0..10)
range_array = range.to_a
inc = 2
numbers = []

for index in (0..(range_array.length - 1))
	if index % inc == 0
		numbers.push range_array[index]
	end
	puts numbers.to_s
end