require 'simplecov'
SimpleCov.start
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/game'

class GameTest < Minitest::Test
  def setup
    @game = Game.new
  end

  def test_it_exists
    assert_instance_of Game, @game
  end

  def test_it_initializes_with_zero_guesses
    assert_equal 0, @game.guesses
  end

  def test_it_can_ask_user_for_input_at_start
    result = 'Would you like to (p)lay a new game,
              read the (i)nstructions, or (q)uit?'
    assert result, @game.start
  end

  def test_user_can_play_a_round
    result = %(g y b r)

    assert result, @game.play
    assert_equal 1, @game.guesses
  end
end
