require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess'

class GameTest < Minitest::Test
  def setup
    @guess = Guess.new
  end

  def test_it_exists
    assert Guess, @guess
  end
end
