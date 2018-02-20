#
class Game
  attr_reader :colors

  def initialize
    @colors = colors
    @guesses = []
  end

  def start
    "Welcome to Mastermind!\n"\
    "**********************\n"\
    'Would you like to (p)lay a new game, read the (i)nstructions, or (q)uit?'
  end

  def play
    "You can guess any combination of:\n"\
    "(g)reen, (r)ed, (b)lue, and/or (y)ellow\n"\
    'What is your guess?'
  end

  def instructions
    "The game objective is to guess a secret code consisting of a series of 4
     colored pegs(inputs). Each guess results in feedback narrowing down the
     possibilities of the code. The winner solves the secret code with the
     fewest guesses."
  end

  def quit
    'Well, all right then. Maybe we can play again another time.'
  end

  def record_guess(guess)
    @guesses << Guess.new(guess, current_card)
    guess
  end
end
