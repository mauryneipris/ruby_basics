# Takes a word as first argument and an array of substrings(dictionary).
# Returns a hash listing each substring(case insensitive) found in the original string 
# and how many times it was found

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  results = {}
  if string.index(dictionary[9])
    p "#{dictionary[9]} is a substring"
  else
    p "#{dictionary[9]} is not a substring"
  end
end

substrings("below", dictionary)