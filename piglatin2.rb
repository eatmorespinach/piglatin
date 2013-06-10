
#first_vowel_index = nil

#use each with index
#if vowels include the letter
#then first_vowel_index = index]

#consonants = letters.join[-..first_vowel_index-1]
#after_vowel = letters.join[first_vowel_index..-1]




class PiglatinConverter
	def self.convert(word)
		return puts 'nil' if word == "nil" 
		return puts "" if word == "" 

		vowel = word.index(/[aeiouy]/)
		if vowel == 0
			puts word.downcase + 'way'
		else
			vowel_start = word[vowel..-1].downcase
			consonant = word[0..(vowel-1)].downcase
			puts vowel_start + consonant + 'ay'
		end
	end
end	

PiglatinConverter.convert("animal")

# array = word.split("")
# vowels = ["a","e","i","o","u","y"]

# i = 0
# loop do
# 	if vowels.include?(array[i]) && i == 0  #If word starts with a vowel
# 		puts array.join.downcase + 'way' 
# 		break
# 	elsif vowels.include?(array[i]) #If letter is a vowel
# 		vowel_start = array[i..-1].join
# 		consonant = array [0..(i-1)].join
# 		puts (vowel_start + consonant).downcase + 'ay'
# 		break
# 	else #If letter is a consonant
# 		i += 1
# 	end
# end