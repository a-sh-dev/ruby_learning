def add(num1, num2)
  if num1.class != Integer || num2.class != Integer
      return "Can only add numbers"
  end
  puts "#{num1} + #{num2} = #{num1 + num2}"
  return num1 + num2 
end 

puts "Please enter the first number:"
first_number = gets.chomp.to_i
puts "Please enter the second number:"
second_number = gets.chomp.to_i
sum = add(first_number,second_number)
pp sum