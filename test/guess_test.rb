require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess'

class GuessTest < Minitest::Test
  def setup
    @guess = Guess.new
  end

  def test_it_exists
    assert Guess, @guess
  end

  def test_it_starts_with_ten_guesses
    assert_equal 10, @guess.guesses
  end

  def test_guesses_are_reduced_each_time_user_makes_a_guess
    assert_equal 9, @guess.guesses
  end
end
