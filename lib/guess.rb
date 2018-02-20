class Guess
  attr_reader :guesses

  def initialize(*user_input)
    @user_input = user_input
    @guesses_available = 10
  end

  def available_guesses_reduce
    return @guesses_available -= 1 unless user_input.length != 4
    'Please only input 4 letters per guess.'
  end

  def num_of_true_guesses
    @guesses.find_all(&:true?).count
  end

  def current_character
    @user_input.character[guesses.length]
  end
end
