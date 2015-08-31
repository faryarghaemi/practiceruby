# Implement an iterative version of the Fibonacci sequence which take an integer n as input and returns the nth Fibonacci number. Implement a recursive version of the Fibonacci sequence which take an integer n as input and returns the nth Fibonacci number. In mathematics, the Fibonacci numbers or Fibonacci series or Fibonacci sequence are the numbers in the following integer sequence:[1][2] 0,1,1,2,3,5,8,13,21,34,55,89,144 By definition, the first two numbers in the Fibonacci sequence are 0 and 1, and each subsequent number is the sum of the previous two. In mathematical terms, the sequence Fn of Fibonacci numbers is defined by the recurrence relation F_n = F_{n-1} + F_{n-2}


# examples 
# f(1) => 0
# f(2) => 1 
# f(3) => 1 
# f(4) => 2 
# f(5) => 3
# f(6) => 5 

# f(1) => 0 base case 
# f(2) => 1 base case 
# f(3) => f(2) + f(1) => 1 general case 
# f(4) => f(3) + f(2) => 2 general case 
# f(5) => f(4) + f(3) => 3 general case 
# f(6) => f(5) + f(4) => 5 general case 

# f(n) = f(n-1) + f(n-2)

def f(num)
  if num < 1 
    "WARNING: Number must be greater than 0"
  elsif num == 1 
    0 
  elsif num == 2 
    1 
  else 
    f(num - 1) + f(num - 2)
  end 
end 

p f(1) # 0
p f(2) # 1
p f(3) # 1 
p f(4) # 2 
p f(5) # 3 
p f(-5) 







