require './lib/game'

game = Game.new

puts game.start
user_input = gets.chomp.downcase

if user_input.include?('p' || 'play')
  puts game.play
  guess = gets.chomp.downcase
  if guess.length < 4
    puts 'Your guess did not include enough inputs. Try guessing again.'
  elsif guess.length > 4
    puts 'Your guess included too many inputs. Try guessing again.'
  else
    puts "#{guess} has #{number_of_correct_guesses} of the correct elements."\
    "#{number_in_position} in the correct positions."\
    "You've taken #{guess_count} guess(es)"
  end
elsif user_input.include?('i' || 'instructions')
  puts game.instructions.squeeze(' ').delete("\n")
elsif user_input.include?('q' || 'quit')
  puts game.quit
else
  puts 'I did not understand that command. Try again.'
end
