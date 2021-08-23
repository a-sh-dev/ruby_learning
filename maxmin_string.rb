# ! Max and Min in String
# ? Write a method that will take a string of space separated numbers as an argument, and return the highest and lowest number from this string.

# * E.g. max_min_in_string("5 2 9 8 23 1") should return "23 1"

# * E.g. max_min_in_string("15 4 4 38 -9") should return "38 -9"

# * E.g. max_min_in_string("-23 4 4 -23 8 0 -2") should return "8 -23"

# ! Nam's solution
def max_min_in_string_v1(str)
  numbers = str.split(" ")
  sorted_numbers = numbers.map {|num| num.to_i}
  sorted_numbers.sort!
  return "#{sorted_numbers.last} #{sorted_numbers.first}" 
end

# ! Alex's solution
def max_min_in_string_v2(str)
  nums = str.split(" ").map(&:to_i)
  "#{nums.max} #{nums.min}"
end

# ! Iryna's solution
def max_min_in_string_v3(str)
  numbers = str.split(" ").map {|num| num.to_i}
  numbers.minmax.reverse.join(" ")
end

# ! Rey's solution
def max_min_in_string_v4(str)
  "#{str.split.map(&:to_i).max.to_s} #{str.split.map(&:to_i).min.to_s}"
end


puts "--v1--"
pp max_min_in_string_v1("5 2 9 8 23 1")
pp max_min_in_string_v1("15 4 4 38 -9")
pp max_min_in_string_v1("-23 4 4 -23 8 0 -2")

puts "\n--v2--"
pp max_min_in_string_v2("5 2 9 8 23 1")
pp max_min_in_string_v2("15 4 4 38 -9")
pp max_min_in_string_v2("-23 4 4 -23 8 0 -2")

puts "\n--v3--"
pp max_min_in_string_v3("5 2 9 8 23 1")
pp max_min_in_string_v3("15 4 4 38 -9")
pp max_min_in_string_v3("-23 4 4 -23 8 0 -2")

puts "\n--v4--"
pp max_min_in_string_v4("5 2 9 8 23 1")
pp max_min_in_string_v4("15 4 4 38 -9")
pp max_min_in_string_v4("-23 4 4 -23 8 0 -2")
