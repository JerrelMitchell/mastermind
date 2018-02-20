require './lib/game'

game = Game.new

puts game.start
input = gets.chomp.downcase

if input.include?('p' || 'play')
  puts game.play
  user_guess = gets.chomp.downcase
  if user_guess.length < 4
    puts 'Your guess did not include enough inputs. Try guessing again.'
  elsif user_guess.length > 4
    puts 'Your guess included too many inputs. Try guessing again.'
  else
    puts "#{user_guess} has #{num_of_true_guesses} of the correct elements."\
    "#{number_in_position} in the correct positions."\
    "You've taken #{guess_count} guess(es)."\
    "You have #{remaining_guesses} remaining."
  end
elsif input.include?('i' || 'instructions')
  puts game.instructions.squeeze(' ').delete("\n")
elsif input.include?('q' || 'quit')
  puts game.quit
else
  puts 'I did not understand that command. Try again.'
end
