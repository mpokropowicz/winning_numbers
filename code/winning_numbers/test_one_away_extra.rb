require "minitest/autorun"
require_relative "one_away_extra.rb"

class TestOneAwayExtra < Minitest::Test

	def test_empty_array_returns_false

		assert_equal(false, nums_one_away(1234, []))
	end

end