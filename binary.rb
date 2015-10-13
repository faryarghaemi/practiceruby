# Binary vs. Linear Searching

# Write an example demonstrating Binary Search. Write an example demonstrating Linear Search. Hint: A linear search looks down a list, one item at a time, without jumping. In complexity terms this is an O(n) search - the time taken to search the list gets bigger at the same rate as the list does. A binary search is when you start with the middle of a sorted list, and see whether that's greater than or less than the value you're looking for, which determines whether the value is in the first or second half of the list.


# examples 

# linear
# find(3, [2, 1, 4, 3, 5]) 
# look through the array one item at a time until you find the item 

# binary
# find(3, [2, 1, 4, 3, 5]) 
# if the items in the array are numbers but they are not sorted, you can sort them first and then check middle number to see if the item you are searching for is less than or greater than the current number 

require 'pry' 

# linear 
def find_linear(num, array)
  result = []
  array.each_with_index do |item, index| 
    if item == num
      result << index
    end 
  end 
  if result.empty?
    result << "the item does not exist in the array"
  end
  result  
end

# binary from WDI vvv

# Returns the index of the needle in elements OR nil
def binary_search(elements, needle)
  min = 0
  max = elements.length - 1
  candidate = nil

  # Run until all possibilities are exhausted...
  until min > max do
    mid = (min + max) / 2

    candidate = elements[mid]

    puts "min #{min}, mid #{mid}, max #{max}, candidate #{candidate}"

    if candidate < needle # Too low, focus on the right half
      min = mid + 1
    elsif candidate > needle # Too high, focus on the left half
      max = mid - 1
    else
      return mid # Magic
    end
  end

  return nil
end


a = (0..100).map { Random.rand(500) }.sort

p binary_search(a, a.sample)
















