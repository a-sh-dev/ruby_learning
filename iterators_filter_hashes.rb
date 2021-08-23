teacher = {
    name: "Alex", 
    location: "Melbourne", 
    role: "Course Coordinator",
    age: 33
    }

teacher.each do |key, value|
    puts "#{key.capitalize} - #{value}"
end 

