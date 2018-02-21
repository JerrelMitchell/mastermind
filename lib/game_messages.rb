#
class GameMessages
  attr_reader :colors

  def initialize
    @colors = colors
    @guesses = []
  end

  def welcome_message
    "Welcome to MASTERMIND\n\n"
  end

  def start_message
    "Would you like to (p)lay a new game, read the (i)nstructions, or (q)uit?\n"
  end

  def play_message
    "You can guess any combination of:\n"\
    "(g)reen, (r)ed, (b)lue, and/or (y)ellow\n"\
    'What is your guess?'
  end

  def instructions
    instruction = "The game objective is to guess a secret code consisting of a
                    series of 4 colored pegs(inputs). Each guess results in
                    feedback narrowing down the possibilities of the code. The
                    winner solves the secret code with fewer than 10 guesses."
    instruction.squeeze(' ').delete("\n")
  end

  def end_game_message
    "Congratulations! You guessed the sequence 'GRRB' in 8 guesses over"\
    "#{stop_watch}\n"\
    'Do you want to (p)lay again or (q)uit?'
  end

  def number_correct_message
    "#{guess.user_guess} has #{guess.num_of_true_guesses} correct."\
    "#{number_in_position} in the correct positions."\
    "You've made #{guess.guess_count} guess(es)."\
    "You have #{guess.remaining_guesses} remaining."
  end

  def quit_message
    'Well, all right then. Maybe we can play again another time.'
  end
end
