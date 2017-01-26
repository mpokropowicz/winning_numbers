require "minitest/autorun"
require_relative "one_away_extra.rb"

class TestOneAwayExtra < Minitest::Test

	def test_empty_array_returns_false

		assert_equal(false, nums_one_away(1234, []))
	end

	def test_1234_returns_1235

		assert_equal(1235, nums_one_away(1234, [1235]))
	end
end