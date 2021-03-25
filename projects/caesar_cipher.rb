# frozen_string_literal: true

# Make a caesar cipher
# Pass in a string and the amount to be shifted.
# Wrap from z back to a
# convert string into an array using ASCII codes to represent letters.
# Do math on the respective ASCII codes
# Output the modified string.

def caesar_cipher(string, shift)
  lower = ('a'..'z')
  caesar_string = ''

  string.each_char do |char|
    shift.times { char = char.next } if lower.include?(char.downcase) # identify letters only
    caesar_string << char[-1]
  end
  caesar_string
end

puts 'Enter a string to be encoded'
string = gets.chomp
puts 'Enter the number to shift'
shift = gets.chomp.to_i

puts caesar_cipher(string, shift)
