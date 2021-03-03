verse_1 = [
  "Take all of your wasted honor",
  "Every little past frustration",
  "Take all of your so-called problems",
  "Better put'em in quotations"
]

verse_2 = [
  "Walking like a one man army",
  "Fighting with the shadows in your head",
  "Living out the same old moment",
  "Knowing you'd be better off instead",
  "If you could only"
]

def say_verse(verse_array)
  verse_array.each { |lyric| puts lyric}
  puts "\n"
end

def say_chorus
  8.times do 
    puts "Say what you need to say"
  end
  puts "\n"
end

say_verse(verse_1)
say_chorus
say_verse(verse_2)
say_chorus