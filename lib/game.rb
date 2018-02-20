#
class Game
  attr_reader :colors

  def initialize(*colors)
    @colors = colors
  end

  def start
    @messenger.puts 'Welcome to Mastermind!'
    @messenger.puts 'Enter guess:'
  end
end
