# Factorial

# Write a recursive and iterative solution for a finding the factorial of a number. If you don't remember, the factorial of a non-negative integer n, denoted n! is the product of all positive integers less than it. For example, 5! = 5 * 4 * 3 * 2 * 1


# examples 

# factorial(0) => 1  
# factorial(1) => 1 => 1  
# factorial(2) => 2 * 1 => 2 
# factorial(3) => 3 * 2 * 1 => 6 
# factorial(4) => 4 * 3 * 2 * 1 => 24 
# factorial(5) => 5 * 4 * 3 * 2 * 1 => 120 

# factorial(0) => 1  
# factorial(1) => 1 => 1  
# factorial(2) => 2 * f(1) => 2 
# factorial(3) => 3 * f(2) => 6 
# factorial(4) => 4 * f(3) => 24 
# factorial(5) => 5 * f(4) => 120 

# pseudocode 

# recursive 
# take previous factorial and multiply it by n 

# iterative 
# multiply all of the numbers until you get to 1 
# factorial(0) => 1 
# factorial(1) => 1 
# factorial(2) => 2 * 1 
# factorial(3) => 3 * 2 * 1 
# factorial(4) => 4 * 3 * 2 * 1 
# factorial(5) => 5 * 4 * 3 * 2 * 1 


# recursive 
# def factorial(n)
#   if n == 1 || n == 0 
#     1 
#   elsif n < 0 
#     "negative factorials do not exist"
#   else 
#     n * factorial(n - 1)
#   end 
# end 


# iterative 
def factorial(n)
  if n == 1 || n == 0
    result = 1  
  elsif n < 0 
    result = "negative factorials do not exist"
  else 
    while n >= 2 
      result += result * n * (n - 1)
      n -= 1 
    end
  end
  result 
end 


p factorial(0) # 1  
p factorial(1) # 1  
p factorial(2) # 2 
p factorial(3) # 6 
p factorial(4) # 24 
p factorial(5) # 120 
p factorial(-5) # "negative factorials do not exist" 





