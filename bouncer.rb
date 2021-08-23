# Code that denies entry to underage, or drunk people, or both
# INPUTS: age(number) is_drunk(boolean)
# OUTPUT: message(string) either come in, go away, or very rude
# && means and 
# || means or 
age = 16
is_drunk = false 

if age >= 18 && !is_drunk
    puts "Come in"
elsif age >= 18 && is_drunk
    puts "Go home you're drunk"
elsif age < 18 && is_drunk
    puts "I'm calling the cops"
else
    puts "You're too young"
end 