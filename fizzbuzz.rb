# * Task
#Write a program that prints the numbers from 1 to 100. 
#But for multiples of three print “Fizz” instead of the number 
#and for the multiples of five print “Buzz”. 
#For numbers which are multiples of both three and five print “FizzBuzz”."

# * Write PSEUDOCODE first to help before coding!
#INPUTS: numbers 1-100
#OUPUTS: "Fizz"(string), "Buzz"(string), "FizzBuzz"(string), number 
#STEP 1: Loop over numbers
#STEP 2: Is number divisble by both? if yes print "fizzbuzz" else if no move on
#STEP 3: Is number divisible by 3? if yes print "fizz" else if no move on 
#STEP 4: Is number divisible by 5? if yes print "buzz" else if no move on 
# STEP 5: Print number

# * Alex's solution

for num in 1..100
  if num % 3 == 0 && num % 5 == 0 #! 0 here is remainder (like no decimal points)
      puts "FizzBuzz"
  elsif num % 3 == 0 
      puts "Fizz"
  elsif num % 5 == 0 
      puts "Buzz"
  else 
      puts num 
  end 
end 

# * Iryna's solution:

for number in (1..100) do
  to_print = ""

  if number % 3 == 0
    to_print << "fizz"
  end
  
  if number % 5 == 0
    to_print << "buzz"
  end

  puts to_print.empty? ? number : to_print

end