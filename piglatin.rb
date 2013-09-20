class Piglatin

  def initialize(word)
    @word = word
    @vowels = ["a","e","i","o","u"]
    @first_half = []
  end

  def word
    word_array = @word.split(//)
    
    if @vowels.include?(word_array[0])
      word_array << "way"
      puts word_array.join("").inspect
    
    else 
      word_array.each_with_index do |letter, index|
      
      unless @vowels.include?(word_array[index]) 
        @first_half << letter
      end

        if @vowels.include?(word_array[index])
          word_array.shift(index)
          word_array << @first_half << "ay"
          puts word_array.join("").inspect
          break
        end
      end
    end 
  end
end


animal = Piglatin.new("animal")
featherword = Piglatin.new("camel")
test = Piglatin.new("fffffffffffeather")

animal.word
featherword.word
test.word