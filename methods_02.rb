def add(num1, num2)
  if num1.class != Integer || num2.class != Integer
      return "Can only add numbers"
  end
  puts "#{num1} + #{num2} = #{num1 + num2}"
  return num1 + num2 
end 

# ! Ask user to input the numbers -- with a different variable names
# puts "Please enter First number"
# first_number = gets.chomp.to_i
# puts "Please enter second number"
# second_number = gets.chomp.to_i
# sum = add(first_number,second_number)
# pp sum

puts "Please enter First number"
num1 = gets.chomp.to_i
puts "Please enter second number"
num2 = gets.chomp.to_i
sum = add(num1,num2)
pp sum