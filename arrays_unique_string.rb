# Implement an algorithm to determine if a string has all unique characters. What if you cannot use additional data structures?

# examples 

# unique(string) => true || false 

# unique("my name is faryar") => false 
# unique("abcdef") => true


# psuedocode 
# add items to a hash 
# if you can add all of the characters to the hash, then it is a unique string 
# if the item has already been added, then you know the string is not unique 

require 'set'

def unique(string)
  unique_set = Set.new
  new_array = string.chars 
  new_array.each do |x|
    unless unique_set.add?(x)
      return false
    end 
  end
  true
end 

p unique("my name is faryar") # false 
p unique("abcdef") # true
p unique("abcef ") # true
p unique("abcdeffff") # false

