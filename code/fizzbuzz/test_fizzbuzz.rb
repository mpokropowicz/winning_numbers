require "minitest/autorun"
require_relative "fizzbuzz.rb"

class TestFizzFuzz < Minitest::Test 

	def test_3_returns_fizz

		results = fizzbuzz(3)
		assert_equal("fizz", results)
	end

	def test_5_returns_buzz

		results = fizzbuzz(5)
		assert_equal("buzz", results)
	end

	def test_15_retuns_fizz_buzz

		results = fizzbuzz(15)
		assert_equal("fizzbuzz", results)
	end

	def test_18_retuns_fizz

		results = fizzbuzz(18)
		assert_equal("fizz", results)
	end
end