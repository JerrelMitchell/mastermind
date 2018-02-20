require './lib/game'

game = Game.new

game.start
user_input = gets.chomp

if user_input.include?('p' || 'play')
  puts game.play
  guess = gets.strip
  if guess.length < 4
    puts 'Your guess did not include enough inputs. Try guessing again.'
  elsif guess.length > 4
    puts 'Your guess included too many inputs. Try guessing again.'
  else
    puts "#{guess} has #{number_of_correct_guesses} of the correct elements."\
    "#{number_in_position} in the correct positions."\
    "You've taken #{guess_count} guess(es)"
  end
end
