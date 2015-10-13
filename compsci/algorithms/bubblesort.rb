require 'pry'

def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end

# Generate a randomly shuffled array 
a = (1..100).to_a.shuffle 

p a # Show the unsorted array 
p bubble_sort(a) # Show the sorted array 