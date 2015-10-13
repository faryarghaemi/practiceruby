def factorial_iterative(num)
  product = 1 
  while (num > 0)
    product = product * num 
    num -= 1
  end 
  product 
end

# puts factorial_iterative(5)

def factorial_recursive(num)
  (num > 0) ? num * factorial_recursive(num - 1) : 1 
end 

puts factorial_recursive(5)


