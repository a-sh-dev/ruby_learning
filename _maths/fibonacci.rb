=begin
  
  A Fibonacci sequence is a list of numbers that begins with 0 and 1, and each subsequent number is the sum of the previous two. I.e. 0,1,1,2,3,5,8...

  Write a method that will return the nth number of the sequence. The syntax is easy, getting your head around the algorithm is the challenge. It might be worth writing this in pseudocode before writing the method.

  E.g. nth_fibonacci(1) should return 0

  E.g. nth_fibonacci(3) should return 1

  E.g. nth_fibonacci(15) should return 377

  E.g. nth_fibonacci(0) should return "Please enter a positive integer"

  E.g. nth_fibonacci(-5) should return "Please enter a positive integer"

=end

def nth_fibonacci(count)

  return "Please enter a positive integer" if count <= 0 

  # fib_array -> the sequence of 0 + 1 + ... until the count:
  # fib[4] = fib[3] + fib[2]
  # fib[i] = fib[i - 1] + fib[i - 2]
  # first two of fib are 0,1
  fib = [0,1]
  
  for i in (0..count - 1) do
      # sum last digit & 2nd last digit from the array
      fib << (fib[-1] + fib[-2])
  
  end

  # p fib
  pp fib[count]

end    

nth_fibonacci(10)