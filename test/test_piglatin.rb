require 'test/unit'

require_relative '../piglatin'

class TestPiglatin < Test::Unit::TestCase

	def setup
		#method with shared setup that can be called for all methods. 
		#these must be instance variables (@bob) for other classes to access. 
	end


	def test_a_word_single_consonant
		assert_equal "abletay", Piglatin.convert("table")
	end

	def test_a_word_two_consonants
		assert_equal "eedomfray", Piglatin.convert("freedom")
	end


	def test_numbers_are_not_allowed
		assert_equal "please enter a proper word. Numbers are not accepted", Piglatin.convert(55)
	end

	def

	end



end

