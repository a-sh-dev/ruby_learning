# ! We will use control flow to tell the user what time of the day it currently is. 

# TODO Write a program that asks the user to input the current hour of the day as an integer. This integer represents the time on a 24hr clock. Use this value to tell the user what time of the day it is. If the time is:

print "What time is it? "
time_input = gets.chomp.to_i

case time_input
when 6..11 
  print "Good morning!"
when 12
  print "Lunchtime"
when 13..18
  print "Afternoon blues"
when 19..20
  print "Dinnertime"
when 20..23
  print "Sleepy time"
when 1..5
  print "Sleep time"
else
  print "#{time_input} is not correct 24hr time!"
end