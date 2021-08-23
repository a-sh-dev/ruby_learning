# Todo: Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 51 and 100, or above 100.

# ? Maybe for this sort of problem, case statement is not the best solution, hence if statement is more appropriate
# ! Update: found this on stack: https://stackoverflow.com/questions/40899186/case-statement-and-comparison-with-integers

def report(num)

  case num
  when -Float::INFINITY...0 then
    "You can't enter a negative number"
  when 0..50 then
    "#{num} is between 0 and 50"
  when 51..100 then
    "#{num} is between 51 and 100"
  else
    "#{num} is above 100"
  end

end

# ! Iryna's solution with (..0)

def report(numm)

  case numm
  when (..0) # this is a beginless range, same as the minus infinity to zero, but is much more readable imo. Can be used without () too: ..0
      "You can't enter a negative number"
  when 0..50
      "#{numm} is between 0 and 50"
  when 51..100
      "#{numm} is between 51 and 100"
  else 
      "#{numm} is above 100"
  end

end

# ! Tried to change all ranges to comparison -- and this works! (thanks to Daniel W) -- but is the case statement being written correctly despite it's working?

# def report(num1)

#   case
#   when num1 < 0 
#     "You can't enter a negative number"
#   when num1 >= 0 && num1 <= 50
#     "#{num1} is between 0 and 50"
#   when num1 >= 51 && num1 <= 100
#     "#{num1} is between 51 and 100"
#   else num1 > 100
#     "#{num1} is above 100"
#   end

# end
# ! Call above def -- make sure to change numm & num for the options above!
pp "Pick a number: "
numm = gets.chomp.to_i
pp report(numm)

# ! With IF statement -- works fine!

# pp "2. Pick a number between 0 and 100"
# number = gets.chomp.to_i

def report(number)

  if number < 0
    "You can't enter a negative number!"
  elsif number <= 50
    "#{number} is between 0 and 50"
  elsif number <=100
    "#{number} is between 51 and 100"
  else
    "#{number} is above 100"
  end

end

# ! Call above def
pp "(IF) Pick a number: "
number = gets.chomp.to_i
pp report(number)