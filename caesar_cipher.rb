
answer = ''

def caesar_cipher(message, shift)
  lower_alphabet = ('a'..'z').to_a
  upper_alphabet = ('A'..'Z').to_a
  encrypt_message = message.chars.map do |character| #chars takes a string and distributes chars into array
    if lower_alphabet.include?(character)
      shifted = (lower_alphabet.index(character) + shift) % lower_alphabet.length # The % loops back around the array if you go passed the end.
      lower_alphabet[shifted] # This is taking the lower_alphabet array and getting new index. That new letter is now going to be character.
    elsif upper_alphabet.include?(character)
      shifted = (upper_alphabet.index(character) + shift) % upper_alphabet.length
      upper_alphabet[shifted]
    else
      character
    end
  end
encrypt_message.join
end

puts "Welcome to Caesar Cipher."

until answer == "quit"
  puts "Write a message to encrypt: "
  message = gets.chomp.to_s
  puts "Now write level of encryption from 1 to 25."
  shift = gets.chomp.to_i
  puts "Now encrypting..."
  puts caesar_cipher(message, shift)
  puts "Type quit to stop. Other type anything to try again:"
  answer = gets.chomp
end
