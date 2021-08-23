teachers = []
    alex = {name: "Alex", location: "Melbourne", role: "Course Coordinator",age: 33, students: ["Alice", "Bob", "Charlie"]}
    iryna = {name: "Iryna", location: "Melbourne", role: "Teaching Assistant", age: 40}
teachers << alex
teachers.push(iryna)
teachers.push({name: "Bob", location: "Frankston", role: "Lead Educator", age:21})

# second_teacher = teachers[1]
# pp second_teacher[:role]
#  pp teachers[1][:role]
#  pp teachers[0][:students][2]

# positions = []
# teachers.each {|teacher|  positions.push(teacher[:role])}
#* below's solution is more efficient
pp teachers

positions = teachers.map {|teacher| teacher[:role]}
pp positions
puts "--------"
pp teachers[1]
puts "--------"
puts teachers[1][:location]