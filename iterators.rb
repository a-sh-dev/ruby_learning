students = ["Alice", "Bob", "Charlie"]


students.each do |student_name|
    #variable only availble inside block
    puts "Hello #{student_name}"
end 

# ! Best not to use 'for in loop' because memory is not localised 
# for student in students
#     #variable stays availble
#     puts "goodbye #{student}"
# end 

# puts student 

# puts student_name