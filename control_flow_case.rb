# ! Case Statement
# * The chief differences (between 'case' and 'if' are that we only need to specify the variable we want to test once (as the argument to case) and we don't specify a == on the individual when statements.

pp "a is "
a = gets.chomp.to_i

case a
when 5
  puts "a is 5"
when 6
  puts "a is 6"
else
  puts "a is neither 5, nor 6"
end

# ! Refactored

answer = case a
  when 5
    "a is 5"
  when 6
    "a is 6"
  else
    "a is neither 5, nor 6"
  end

puts answer