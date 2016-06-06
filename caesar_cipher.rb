def caesar_cipher(str, shift)
  ordinal_positions = str.unpack('C*')

  shifted_positions = ordinal_positions.map do |ordinal|
    case ordinal
    when (65..90), (97..122)
      shifted = ordinal + (shift % 26)
      if (shifted > 90 && shifted < 97) || shifted  > 122
        shifted = shifted - 26
      end
      ordinal = shifted
    else
      ordinal
    end
  end

  encoded_string = shifted_positions.pack('C*')
  puts encoded_string
end

puts "Input a string you'd like to encode:"
str_to_encode = gets.chomp

puts "Next, input a shift factor (must be greater than 1):"
shift_factor = ''
loop do
  shift_factor = gets.chomp.to_i

  if shift_factor == 0
    puts "Please enter a valid number."
  else
    break
  end
end

puts "Your Caesar Cipher result is: "
caesar_cipher(str_to_encode, shift_factor)