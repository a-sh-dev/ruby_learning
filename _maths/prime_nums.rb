# ! Create a method that takes a number as an argument and returns "This is a prime number", if its a prime number, otherwise it returns "This is not a prime number". Note, negative numbers can not be considered prime. 0 and 1 are also not prime!

# Alex's, my modification
def is_it_prime(num)  
  not_prime = "This is not a prime number"
  return not_prime if num < 2
  for x in 2..(num - 1)
    if num % x == 0
    return not_prime end
  end
  return "This is a prime number"
end

def is_it_prime_nam(num) 
  return "This is not a prime number" if num < 2
  primes = Array(2..num)
  i = 0
  while primes[i] <= Math.sqrt(num)
    primes.delete_if { |number| (number % primes[i] == 0) && (number > primes[i])}
    i += 1
  end
  primes.include?(num) ? (return "This is a prime number") : (return "This is not a prime number")
end


is_it_prime(7)
is_it_prime(100)
is_it_prime(0)
is_it_prime(-1)