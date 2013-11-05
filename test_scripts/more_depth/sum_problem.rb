my_array = []

(0..999).each do |i|
	if i % 3 == 0 || i % 5 == 0
  my_array.push i
  end
end

puts my_array.reduce(:+)

# def calc_min_multiple(range)
#   range.find { |value| div_check(value) }
# end

# def div_check(num)
#   (1..20).all? { |divisor| num % divisor == 0 }
# end

# puts calc_min_multiple(20..500_000)