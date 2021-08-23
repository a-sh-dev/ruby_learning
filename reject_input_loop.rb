def ask(name, collect_y, collect_n)
  puts "Hello #{name.capitalize}, type Y or N!"
  input = gets.chomp.downcase
  case input
  when "y"
      puts "----YEP!"
      collect_y << name
  when "n"
      puts "----NOPE!"
      collect_n << name
  else
      puts "Please choose Y or N only"
      ask(name, collect_y, collect_n)
  end
  puts "-------------"
  puts "Team Y: #{name.capitalize} -- Team N: #{name.capitalize}"
  puts "-------------"
end

collect_y = []
collect_n = []

names = ["ruby", "jessica"]
index = 0

puts "-- FOR Result"
for name in names
  ask(name, collect_y, collect_n)
end

puts "-- ITERATION Result"
names.map { |name| ask(name, collect_y, collect_n) }

# puts "-- WHILE Result"
# while index < names.length
#     ask(names[index])
#     index += 1
# end