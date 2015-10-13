def fibonacci_iterative(num)
  a = 1
  b = 1 

  while num > 1 
    a, b = b, a + b
    num -= 1
  end

  a
end



def fibonacci_recursive_a(num)
  if (num <= 2)
    1 
  else
    fibonacci_recursive_a(num - 1) + fibonacci_recursive_a(num - 2)
  end 
end 


def fibonacci_recursive_b(num, a=1, b=1)
  if (num <= 1)
    a 
  else
    fibonacci_recursive_b(num - 1, b, a + b) 
  end 
end 

1.upto(10) do |i|
  puts fibonacci_recursive_a(i)
  puts fibonacci_recursive_b(i)
  puts fibonacci_iterative(i)
end

