puts 'Hello, thanks for playing High/Low!'
puts 'The rules of the game are simple.'
puts 'The computer will randomly pick a number between 1 and 10.'
puts 'All you have to do is guess that number.'
puts 'You get three guesses.'
puts 'The computer will provide some feedback after each guess.'
puts "Let's play!"

secret_num = rand(1..10)

puts 'Pick your first number.'
print '> '

user_input = gets.chomp.to_i
puts "You chose #{user_input}!"

if user_input == secret_num
  puts "You got it right! Congrats!"
  exit
elsif user_input < secret_num
  puts 'Higher...'
else
  puts 'Lower...'
end

puts 'Pick your second number.'
print '> '

user_input = gets.chomp.to_i
puts "You chose #{user_input}!"

if user_input == secret_num
  puts "You got it right! Congrats!"
  exit
elsif user_input < secret_num
  puts 'Higher...'
else
  puts 'Lower...'
end

puts 'Pick your final number.'
print '> '

user_input = gets.chomp.to_i
puts "You chose #{user_input}!"

if user_input == secret_num
  puts "You got it right! Congrats!"
  exit
else
  puts "Aw, shucks! The number was #{secret_num}"
  puts "Better luck next time!"
end


