# text = ""
# line_count = 0
# File.open("text.txt").each do |line| 
# 	line_count += 1
# 	text << line
# end

	#opening the file, making a String called text that holds all the text
lines = File.readlines("text.txt")
line_count = lines.size
text = lines.join


	#putting the line count
puts "#{line_count} lines"

	#putting total characters plus white space
total_characters = text.length
puts "#{total_characters} characters."

	#putting total characters without whitespace
total_characters_nospaces = text.gsub(/\s+/, "").length
puts "#{total_characters_nospaces} characters (excluding spaces)"

	#the number of words, via split.
word_count = text.split.length
puts "#{word_count} words"
# word_count1 = text.scan(/\w+/).length
# puts "#{word_count1} words"

	#number of paragraphs
paragraph_count = text.split(/\n\n/).length
puts "#{paragraph_count} paragraphs"

	#the number of sentences via split
sentence_count = text.split(/\.|\?|!/).length
puts "#{sentence_count} sentences."

puts "#{sentence_count / paragraph_count} sentences per paragraph"
puts "#{word_count / sentence_count} words per sentence."


#private method?
# stopwords = %w{the a by on for of are with just but and to the my I has some in}
# text_less = text.select {|word| !stopwords.include?(word)}
# word_count_stop = text_less.split.length
# puts word_count_stop




