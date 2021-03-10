
def bubble_sort(array)
  
  return array if array_length <= 1

  loop do
    # create a variable that is checked so an infinite loop isn't created
    swapped = false

    # subtract one because of array's zero-index
    (array.length - 1).times do |i|
      if array[i] > array[i + 1]
        # use parallel assignment a,b = b,a
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end
    break if not swapped
  end
  array  
end

unsorted_array = [4,3,78,2,0,2]
p bubble_sort(unsorted_array)