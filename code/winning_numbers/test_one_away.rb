require "minitest/autorun"
require_relative "one_away.rb"

class TestOneAwayExtra < Minitest::Test

	def test_1234_1235_returns_true

		assert_equal(true, one_away(1234, 1235))
	end
end