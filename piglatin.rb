

# Pig Latin

# Write a method the takes in a string and returns the pig latin equivalent. Pig Latin takes the first vowel, moves it to the end of the word and places “ay” at the end. If the string starts with a vowel do nothing. “pig” = “igpay”, “banana” = “ananabay”

# examples 

# to_pig(“pig”) => “igpay”
# to_pig(“banana”) => “ananabay”
# to_pig("australia") => "australia"
# to_pig("yellow") => "ellowyay"
# to_pig("i went to the park") => "i entway otay ethay arkpay"

#pseudocode 

# check to see if the first letter is a vowel 
# if it is a vowel, spit out the same word 
# if it is not a vowel, find the first vowel 
# take the vowel and all following letters and store it in a variable (beg_word)
# take the letters before the vowel and add "ay" and store it in variable end_word 
# join the beg_word and end_word variables to get the pig latin equivalent 



def to_pig(string)
  vowels = ["a", "e", "i", "o", "u"]
  pig_latin = ""
  array_words = string.split(" ")
  array_words.each do |word|
    if vowels.include?(word[0])
      pig_latin += word + " "
    else
      index_of_vowel = word.index(/[aeiou]/)
      end_word = word[0, index_of_vowel] 
      beg_word = word[index_of_vowel, word.length] 
      pig_latin += (beg_word + end_word + "ay ") 
    end 
  end 
  pig_latin
end 


p to_pig("pig") # “igpay”
p to_pig("banana") # “ananabay”
p to_pig("australia") # "australia"
p to_pig("i went to the park") # "i entway otay ethay arkpay"


