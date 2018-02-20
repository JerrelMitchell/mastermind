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

  def test_user_can_choose_to_play_game
    result = "You can guess any combination of:\n"\
             "(g)reen, (r)ed, (b)lue, and/or (y)ellow\n"\
             'What is your guess?'
    assert result, @game.play
  end

  def test_user_can_ask_for_game_instuctions
    result = "The game objective is to guess a secret code consisting of a
              series of 4 colored pegs(inputs). Each guess results in feedback
              narrowing down the possibilities of the code. The winner solves
              the secret code with the fewest guesses."
    assert result, @game.instructions
  end

  def test_user_can_quit_game
    result = 'Well, all right then. Maybe we can play again another time.'
    assert result, @game.quit
  end
end
