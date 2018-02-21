class Guess
  attr_reader :guesses, :guesses_available

  def initialize(*user_input)
    @user_input = user_input
    @guesses_available = 10
  end

  def record_guess(guess)
    @guesses << Guess.new(guess, current_card)
    guess
  end

  def available_guesses_reduce
    return @guesses_available -= 1 if @user_input.length == 4
    @guesses_available
  end

  def num_of_true_guesses
    @guesses.find_all(&:true?).count
  end

  def current_character
    @user_input.character[guesses.length]
  end
end
