loop do
  puts "Do you want to do that again? Y/N"
  answer = gets.chomp
  if answer != 'Y'
    break
  end
end