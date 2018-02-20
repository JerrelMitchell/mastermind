require 'simplecov'
SimpleCov.start
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/game'

class GameTest < Minitest::Test
  def setup
    @game = Game.new('R', 'G', 'B', 'G')
  end

  def test_it_exists
    assert_instance_of Game, @game
  end

  def test_it_can_take_in_colors_as_argument
    assert @game, 'R G B G'
  end
end
