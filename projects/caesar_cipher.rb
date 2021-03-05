# Make a caesar cipher
# Pass in a string and the amount to be shifted. 
# Wrap from z back to a
# convert string into an array using ASCII codes to represent letters. 
# Do math on the respective ASCII codes
# Output the modified string.

def caesar_cipher(string, shift)
  ascii_arr = string.bytes
  shifted_arr = ascii_arr.map do |code|
    unless code == 32
      code + shift
    else code = code
    end
  end 
  shifted_char_arr = shifted_arr.map { |code| code.chr }
  shifted_string = shifted_char_arr.join
  p shifted_string
end

puts "Enter a string to be encoded"
string = gets.chomp
puts "Enter the number to shift"
shift = gets.chomp.to_i

caesar_cipher(string, shift)
