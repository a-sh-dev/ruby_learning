# Ask for their first name
# Ask for a their last name
# generate full name

print "Enter your first name "
first_name = gets.chomp
print "Enter your last name "
last_name = gets.chomp
# puts "Hello, " + first_name + " " + last_name + "! Nice to meet you"
puts "Hello, #{first_name} #{last_name}! Nice to meet you"

# repeat this 10 times

# store the information in an array

full_name = []

# for each of the customers in the database, print out a welcome message