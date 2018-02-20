#
class Game
  attr_reader :guesses

  def initialize
    @guesses = 0
  end

  def start
    'Welcome to Mastermind!'\
    '**********************'\
    'Would you like to (p)lay a new game, read the (i)nstructions, or (q)uit?'
  end

  def play
    'Great! You can guess any combination of:'\
    '(g)reen, (r)ed, (b)lue, and/or (y)ellow'\
    'What is your guess?'
  end
end
