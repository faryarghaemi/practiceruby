# Shuffle

# Without using a shuffle or sort write your own shuffle method for an array. The method will take an array and returns a new array with all of the elements in a random order. One important property of a good shuffle method is that every permutation is equally likely.


# examples 

# shuffle(array) => new order 
# shuffle(["a", "e", "i", "o", "u"]) => new order 


# pseudocode 

# randomly pick out the first object in the array  
# take it out of the array and randomly choose what's remaining in the array until there are no more items 

# draw it out 
# shuffle[1, 2, 3, 4, 5]
#            V
#        [1, 3, 4, 5]
#            V
#         [1, 4, 5]
#            V
#         [4, 5]
#            V
#         [5]

# new array => [2, 3, 1, 4, 5]

def shuffle(array)
  # start a new_array to store the shuffled items into
  new_array = [] 
  while array.length > 0 do 
    # get a random index number of an element in the array 
    index_element = Random.rand(0...array.length)
    # push the element at the randomly chosen index into the new_array 
    new_array << array[index_element]
    array.delete_at(index_element)
  end 
  new_array
end


array = [1, 3, 4, 5, 6, 7, 8]
p shuffle(array)











