# Roman Numerals

# Write a method that converts an integer to its Roman numeral equivalent, i.e., 476 => 'CDLXXVI'. For reference, these are the building blocks for how we encode numbers with Roman numerals: I = 1, V = 5, X = 10, L = 50, C = 100, D = 500, M = 1000 Choose Between Old-school Roman numerals (no subtraction of 4s and 9s) 4 = IIII, 9 = VIIII etc. Modern Roman numerals (subtraction) 4 = IV, 9 = IX, 14 = XIV, 40 = XL, 44 = XLIV, 90 = XC, 944 = CMXLIV

# examples 
# f(476) => CDLXXVI
# f(7) => VII
# f(623) => DCXXIII



  # pseudocode 

  # we need to setup a string to store the result 
  # is 476 greater than or equal to 1000 => no, go to the next integer 
  # is 476 greater than or equal to 900 => no, go to the next integer 
  # is 476 greater than or equal to 500 => no, go to the next integer 
  # is 476 greater than or equal to 400 => yes 
  # how many times is 476 divisible by 400 (1)
  # add the roman value of 400 to the result 
  # result += CD 
  # subtract the integer value from the number 
  # we are left with 76 
  # is 76 greater than or equal to 100 => no, go to the next integer 
  # is 76 greater than or equal to 50 => yes
  # how many times is 76 divisible by 50 (1)
  # add the roman value of 50 to the result 
  # subtract the integer value (50) from the number 
  # result += L 
  # we are left with 26 
  # is 26 greater than or equal to 40 => no, go to the next integer 
  # is 26 greater than or equal to 10 => yes 
  # how many times is 26 divisible by 10 (2)
  # subtract the integer value from the number 
  # result += XX 
  # we are left with 6 
  # is 6 greater than or equal to 9 => no, go to the next integer 
  # is 6 greater than or equal to 5 => yes 
  # how many times is 6 divisible by 5 (1)
  # add the roman value of 5 to the result 
  # result += V 
  # is 1 greater than or equal to 4 => no, go to the next integer 
  # is 1 greater than or equal to 1 => yes 
  # how many times is 1 divisible by 1 (1)


  
  ROMAN_NUMERALS = {
    "M" => 1000,
    "CM" => 900,
    "D" => 500,
    "CD" => 400,
    "C" => 100,
    "XC" => 90,
    "L" => 50,
    "XL" => 40,
    "X" => 10,
    "IX" => 9,
    "V" => 5,
    "IV" => 4,
    "I" => 1
  }



  # def to_roman(num)
  #   result = ""
  #   ROMAN_NUMERALS.each do |roman_key, integer_value|
  #     if num / integer_value >= 1 
  #       num_romans = (num / integer_value).floor
  #       result += roman_key * num_romans 
  #       num = num - (integer_value * num_romans) 
  #     end 
  #   end
  #   result  
  # end 

  def to_roman(number)
    # Construct an empty string to append Roman characters to it.
    result = ""
    # The Ruby each loop is smart enough to iterate through both a hash (with key and value) or an array of arrays.
    ROMAN_NUMERALS.each do |roman, integer|
      while number >= integer
        result += roman
        number -= integer
      end
    end
    result
  end

  p to_roman(24) # XXIV
  p to_roman(476) # CDLXXVI
  p to_roman(7) # VII 
  p to_roman(623) #DCXXIII
















