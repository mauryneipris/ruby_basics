# frozen_string_literal: true

# Takes a word as first argument and an array of substrings(dictionary).
# Returns a hash listing each substring(case insensitive) found in the original string
# and how many times it was found

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

def substrings(string, dictionary)
  results = {}
  str_arr = string.downcase.split(' ')

  dictionary.each_index do |dic_ind|
    # for each str_arr[index].index(dictionary[index])
    # if it's true(the substring is found in the string), add dictionary[index]
    # as a key in results hash with the value being results[dictionary[index] + 1]
    str_arr.each_index do |str_ind|
      if str_arr[str_ind].index(dictionary[dic_ind])
        p "#{dictionary[dic_ind]} is a substring"
        results[dictionary[dic_ind]] = (results[dictionary[dic_ind]].to_i + 1)
      end
    end
  end
  p results
end

substrings("Howdy partner, sit down! How's it going?", dictionary)
