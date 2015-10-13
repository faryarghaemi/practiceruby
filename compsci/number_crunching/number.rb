require 'pry'

class Number 


  def self.bin2dec(binary)
    # turning it into an array 
    array = binary.split('')
    sum = 0 
    array.reverse.each_with_index do |x,i|
      # taking each number in reverse order and raising it to the power of 2 ^ index 
      sum += x.to_i * (2 ** i)
    end 
    # returning the sum 
    sum 
  end 

  def self.dec2bin(decimal_number)
    x = 0 
    binary_array = []
    # this is to basically get all of the binary numbers below the decimal_number 
    until 2 ** x > decimal_number.to_i do 
      binary_array << 2 ** x 
      x += 1
    end 

    answer = []
    # go through the binary array in reverse order because we want to start at the end (aka 8 here)
    binary_array.reverse.each do |binary| 
      remainder = decimal_number / binary 
      # placing the remainder, which is always either 0 or 1, into our answer array 
      answer << remainder
      # to get the next number that we use above to divide by the binary number 
      # the if statement is so that when the decimal_number is 1, it doesn't keep subtracting 
      decimal_number = decimal_number - binary if decimal_number > 1
    end 
    answer.join

  end 

  def self.bin2hex(binary)
      hash = {
      10 => 'a', 
      11 => 'b', 
      12 => 'c', 
      13 => 'd', 
      14 => 'e', 
      15 => 'f'
    }

    array = binary.split('')
    answer = []
    # reversing the array to get groups of 4 starting at the right hand side 
    array.reverse.each_slice(4) do |batch|
      sum = 0
      # like above, taking the sum of the groups of 4 
      batch.each_with_index do |x,i|
        sum += x.to_i * (2 ** i)
      end 
      # if the sum is in the hash (aka >= 10), then use a letter, if not, just give me the sum 
      if hash.keys.include? sum 
        answer << hash[sum]
      else 
        answer << sum 
      end
    end 
    # need to reverse the answer array because it was reversed above 
    answer.reverse.join 
  end 


  def self.hex2bin(hexadecimal)
    hash = {
      'a' => 10,
      'b' => 11,
      'c' => 12,
      'd' => 13,
      'e' => 14,
      'f' => 15
    } 

    x = 0 
    binary_array = []
    array = hexadecimal.split('')
    answer = []
    array.reverse.each_with_index do |hex,i|
      if hash.keys.include? hex 
        hex = hash[hex]
      else 
        hex
      end 
      until 2 ** x > hex.to_i do 
        binary_array << 2 ** x 
        x += 1
      end 

      batch = []
      binary_array.reverse.each do |binary| 
        remainder = hex.to_i / binary.to_i 
        batch << remainder
        hex = hex.to_i - binary.to_i if hex.to_i > 1
      end
      if batch.length < 4
        batch.unshift 0 until batch.length == 4
      end 
      answer << batch.join
    end 
    final_answer = []
    answer.reverse.each_slice(4) do |slice|
      final_answer << slice 
    end 
    if final_answer[0][0].include? "0"
      final_answer[0][0].sub!(/^[0]*/,"")
    end
    final_answer.flatten.join 
  end 
end 


# puts Number.hex2bin('1df3')


# hex = Hash.new do |hash, key| do 
#   key.to_i if key.to_i <= 9 
# end 
































