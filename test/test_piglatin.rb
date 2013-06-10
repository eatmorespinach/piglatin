require 'test/unit'

require_relative '../piglatin'

class TestPiglatin < Test::Unit::TestCase

	def setup
		@str = ("banana")
		@convertedstring = Piglatin.convert(@str)
		

		#method with shared setup that can be called for all methods. 
		#these must be instance variables (@bob) for other classes to access. 
	end

	def test_a_word
		assert_equal "abletay", Piglatin.convert("table")
	end

	def test_numbers_are_not_allowed_part_2
		assert_equal "please enter a proper word", Piglatin.convert(55)
	end

end

