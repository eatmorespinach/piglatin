#iterate through each letter of the word
#stop once you hit a vowel
#move vowel to end of the word
#add ay to end
#if word starts with a vowel, don't change it
#puts "type word here!"

#define the alphabet with alpha array, vowel array, and alpha - vowels to equal consonants
#if vowel is first word, add 'ay to string'
#elsif 


class PiglatinConverter

  def self.convert(str)
  
    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u]
  

    consonants = alpha - vowels

    if vowels.include?(str[0])
      str + 'ay'

    elsif consonants.include?(str[1]) && consonants.include?(str[2])
      return str[3..-1] + @str[0..2] + 'ay'

    elsif consonants.include?(str[0]) && consonants.include?(str[1])
      return str[2..-1] + str[0..1] + 'ay'
    
    elsif consonants.include?(str[0])
      return str[1..-1] + str[0] + 'ay'
    else
      return "Please enter a proper word. Numbers are not accepted"
    end
  end
end

puts PiglatinConverter.convert("table")







# puts pigword = "kentucky".split("")

# alpha = ('a'..'z').to_a
#   vowels = ['a', 'e', 'i', 'o', 'u']
#   consonants = alpha - vowels

# if vowels.include?(str[0])
#   str + 'ay'
#   elsif consonants.include?(str[0]) && consonants.include?(str[1])
#     str[2..-1] + str[0..1] + 'ay'
#   elsif consonants.include?(str[0])
#     str[1..-1] + str[0] + 'ay'
#   else
#     str # return unchanged
#   end


#puts pigword = gets.chomp.downcase

#save beg words into an array, then append them to the end. 

# consonant = []

# #vowels = ["a", "e", "i", "o", "u"]


# pigword.include?(vowels)

# pigword.each_with_index do |element, index|

# end

# class PiglatinConverter

#   def self.convert(word)
#     # Your code goes here
#   end

# end