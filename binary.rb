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

# binary 
def find_binary(num, array)
  return [] if array.empty? 
  middle_index = (array.length / 2).floor 
  if num > middle_index 
    array[middle_index..-1]
end 

p find_linear(3, [2, 1, 4, 5, 3]) # index => 4 
p find_binary(3, [2, 1, 4, 5, 3]) # index => 4 
p find_linear(3, [2, 1, 4, 6, 5, 7]) # "the item does not exist in the array"
p find_binary(3, [2, 1, 4, 6, 5, 7]) # "the item does not exist in the array"
p find_binary(3, []) # []
















