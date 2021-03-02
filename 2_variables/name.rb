puts "Please enter your first name."
first_name = gets.chomp

puts "Please enter your last name."
last_name = gets.chomp

full_name = first_name + " " + last_name
puts "Hello, " + full_name + "!"

10.times do
  puts full_name
end