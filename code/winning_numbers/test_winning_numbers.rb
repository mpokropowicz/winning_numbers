require "minitest/autorun"
require_relative "winning_numbers.rb"

class TestWinningNumbers < Minitest::Test

	def test_1_in_array_returns_true

		assert_equal(true, winning_number?(1, [1,2]))
	end

	def test_3_in_array_returns_false

		assert_equal(false, winning_number?(3, [1,2]))
	end

	def test_empty_array_returns_false

		assert_equal(false, winning_number?(1, []))
	end

	def test_name_returns_true

		assert_equal(true, winning_number?("Matt", ["Matt", "Max", "Andrew"]))
	end
end