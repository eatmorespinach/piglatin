require 'test/unit'

require_relative '../piglatin'

class TestPiglatin < Test::Unit::TestCase

	def setup
		@str = ("banana")
		convertedstring = Piglatin.convert(@str)
		assert_equal convertedstring, "ananabay"

		#method with shared setup that can be called for all methods. 
		#these must be instance variables (@bob) for other classes to access. 
	end
	
	def test_numbers_are_not_allowed 
		str = @str
		assert_equal str, "banana"
		#assert_equals 
		#if @str #is not (a..z)
	end

	def test_confirm_entry_does_not_contain_numbers

	end

end

