# frozen_string_literal: true

def bubble_sort(arr)
  return arr if arr.length <= 1

  loop do
    # create a variable that is checked so an infinite loop isn't created
    swapped = false
    # subtract one because of array's zero-index
    (arr.length - 1).times do |i|
      next unless arr[i + 1]

      # use parallel assignment a,b = b,a
      arr[i], arr[i + 1] = arr[i + 1], arr[i]
      swapped = true
    end
    break unless swapped
  end
  arr
end

unsorted_array = [4, 3, 78, 2, 0, 2]
p bubble_sort(unsorted_array)
