puts 'Hello, thanks for playing High/Low!'
puts 'You have three guess to find the number between 1 and 10.'

def check_guess(guess, number, guess_count)
  if guess == number
    puts "You got it right! Congrats!"
  elsif guess_count == 3
    puts "Aw, shucks. The number was #{number}!"
    puts 'Better luck next time!'
  elsif guess < number
    puts 'Higher...'
  else
    puts 'Lower...'
  end
end

def play_again?
  user_answer = gets.chomp.downcase
  user_answer.start_with?('y')
end


# MAIN PROGRAM
def play_high_low
  loop do 
    guess_count = 0
    secret_num = rand(1..10)

    puts 'Pick a number...'

    while guess_count < 3
      guess_count += 1

      guess = gets.chomp.to_i
      puts "You chose #{guess}!"

      check_guess(guess, secret_num, guess_count)
    end

    puts "Do you want to play again?"
    break unless play_again?
  end

  puts "Thanks for playing!"
end

play_high_low
