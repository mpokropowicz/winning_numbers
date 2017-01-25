require "minitest/autorun"
require_relative "winning_numbers.rb"

class TestWinningNumbers < Minitest::Test

	def test_1_in_Array_returns_true

		results = inArray?(1, [1,2])

		assert_equal(true, results)
	end
end