# Design an algorithm and write code to remove the duplicate characters in a string without using any additional buffer. NOTE: One or two additional variables are fine. An extra copy of the array is not. Write the test cases for this method.


require 'set'

# answer below has an extra copy of the array 
def unique(string)
  unique_set = Set.new
  new_array = string.chars 
  new_array.each do |x|
    unique_set.add(x)    
  end
  unique_set
end 



p unique("my name is faryar") # {"m", "y", " ", "n", "a", "e", "i", "s", "f", "r"}
p unique("abcdef") # {"a", "b", "c", "d", "e", "f"}
p unique("abcef ") # {"a", "b", "c", "e", "f", " "}
p unique("abcdeffff") # {"a", "b", "c", "d", "e", "f"}