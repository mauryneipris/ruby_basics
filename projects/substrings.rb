# Takes a word as first argument and an array of substrings(dictionary).
# Returns a hash listing each substring(case insensitive) found in the original string 
# and how many times it was found

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  results = {}
  # str_arr = string.split(' ')
  dictionary.each_index do |index| 
    # if str_arr.include?(dictionary[index])
    if string.index(dictionary[index])
      p "#{dictionary[index]} is a substring"
      results[dictionary[index]] = (results[dictionary[index]].to_i + 1) 
    else
      p "#{dictionary[index]} is not a substring"
    end
  end
  p results
end

substrings("partner", dictionary)