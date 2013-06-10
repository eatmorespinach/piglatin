#take a string, split it before the vowels
#find a method that iterates through string until a vowel is hit. 

class PiglatinConverter

	def self.convert(word)

		vowel = word.index(/[aeiouy]/)
			if vowel == 0
				puts word + "way"
			else 
				firsthalf = word[0..vowel]
				secondhalf = word[vowel..-1]
				puts secondhalf + firsthalf + "ay"	
			end
	end
	
end

PiglatinConverter.convert("frfffffffffffenky")


# x.convert
# puts x.firstend

	# @characters.each do |x|
		# 	if x != "a" || "e" || "i" || "o" || "u" 
		# 		@firstend << x

	# 		end
	# 	end


		# if characters[0].include? "a" || "e" || "i" || "o" || "u"
		# 	firstend << characters[0]
		# 	if characters[1].include? "a" || "e" || "i" || "o" || "u"
		# 		firstend << characters[0]
		# 			puts firstend
		# 	end
		# end