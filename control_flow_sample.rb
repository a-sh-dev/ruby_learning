=begin
Taken from Codecademy:

Using if / else statements, we can produce different results based on different user input.

In this project, we’ll combine control flow with a few new Ruby string methods to Daffy Duckify a user’s string, replacing each "s" with "th".
=end

# gsub() = global substitution

print "Pick a word please!: "
user_input = gets.chomp
user_input.downcase!

if
  user_input.include? "s"
  user_input.gsub!(/s/, "th")
  puts "Hmmmm, your word is now #{user_input}"
else
  print "There is no s in your word"
end