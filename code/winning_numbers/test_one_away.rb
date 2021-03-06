require "minitest/autorun"
require_relative "one_away.rb"

class TestOneAwayExtra < Minitest::Test

	def test_1234_1235_returns_true

		assert_equal(true, one_away('1234', '1235'))
	end

	def test_non_string

		assert_equal(false, one_away(1234, '12345'))
	end

	def test_0_1_returns_true

		assert_equal(true, one_away('0', '1'))
	end

	def test_10123_11323_returns_false

		assert_equal(false, one_away('10123', '11323'))
	end
end