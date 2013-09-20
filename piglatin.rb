class Piglatin

  def self.convert(word)
    word = word
    vowels = ["a","e","i","o","u"]
    first_half = []

    word_array = word.split(//)
    
    if vowels.include?(word_array[0])
      word_array << "way"
      puts word_array.join("").inspect
    
    else 
      word_array.each_with_index do |letter, index|
      
        unless vowels.include?(word_array[index]) 
          first_half << letter
        end

        if vowels.include?(word_array[index])
          word_array.shift(index)
          word_array << first_half << "ay"
          puts word_array.join("").inspect
          break
        end
      end
    end 
  end
end

translate = Piglatin.new

p "Hey there! Enter word for us to translate into Piglatin"

loop do
    translate = Piglatin.convert(gets.chomp) 
end

