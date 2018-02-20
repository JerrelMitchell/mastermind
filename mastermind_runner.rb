require './lib/game'
require './lib/guess'

game = Game.new
guess = Guess.new

puts game.start
input = gets.chomp.downcase

if input.include?('p' || 'play')
  puts game.play
  user_guess = gets.chomp.downcase
  if user_guess.length < 4
    puts 'Your guess did not include enough inputs. Try guessing again.'
  elsif guess.user_guess.length > 4
    puts 'Your guess included too many inputs. Try guessing again.'
  else
    puts "#{guess.user_guess} has #{guess.num_of_true_guesses} correct."\
    "#{number_in_position} in the correct positions."\
    "You've made #{guess.guess_count} guess(es)."\
    "You have #{guess.remaining_guesses} remaining."
  end
elsif input.include?('i' || 'instructions')
  puts game.instructions.squeeze(' ').delete("\n")
elsif input.include?('q' || 'quit')
  puts game.quit
else
  puts 'I did not understand that command. Try again.'
end
