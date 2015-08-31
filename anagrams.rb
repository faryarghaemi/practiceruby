# Anagrams

# An anagram is a word formed by rearranging the letters of another word, e.g., iceman is an anagram of cinema. We're going to write a method called anagrams_for that takes as its input a word and an array of words, representing a dictionary, and returns an array consisting of all the anagrams of the input word. anagrams_for should return an empty array ([]) if no anagrams are found in the dictionary. You don't have to worry about the order of the returned Array.


# examples 
# anagrams_for(word, array) => anagrams_array 
# anagrams_for("cat", ["dog", "catacomb", "act", "car", "catt"]) => ["act"]

# pseudocode 
# need to check if the dictionary contains the letters in the word 
# need to make sure that words with all the same numbers of letters as well 
# for example catt is not an anagram of cat so we need to watch out for that 
# make sure to lowercase all words so that capital letters don't get in the way 
# take the letters in the word, sort them (so that they're in order), and see if it matches with any of the dictionary entries 


def anagrams_for(word, array)
  anagrams_array = []
  array.each do |dictionary_word|
    sorted_dictionary_word = dictionary_word.chars.sort 
    if word.chars.sort == sorted_dictionary_word
      anagrams_array << dictionary_word
    end 
  end 
  anagrams_array
end 

p anagrams_for("cat", ["dog", "catacomb", "act", "car", "catt"]) # ["act"]

p anagrams_for("cat", ["dog", "catacomb", "car", "catt"]) # ["act"]












