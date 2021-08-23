grades = [30, 55, 85, 90]

updated_grades = grades.map do |grade|
    grade *= 2
    grade - 10
end

pp updated_grades