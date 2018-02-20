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

  def test_it_initializes_with_zero_guesses
    assert_equal 0, @guess.guesses
  end
end
