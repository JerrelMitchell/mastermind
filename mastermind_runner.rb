require './lib/game_messages'
require './lib/guess'

game = GameMessages.new
guess = Guess.new

puts game.welcome_message
puts game.start_message

input = gets.chomp.downcase

input.include?('i' || 'instructions')
puts game.instructions

input.include?('p' || 'play')
puts game.play_message
user_guess = gets.chomp.downcase
if user_guess.length < 4
  puts 'Your guess did not include enough inputs. Try guessing again.'
if guess.user_guess.length > 4
  puts 'Your guess included too many inputs. Try guessing again.'
  puts number_correct_message

  input.include?('q' || 'quit')
  puts game.quit_message
end
end
