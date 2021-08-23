=begin
# ! ACME Corporation are hiring a new junior developer, as part of their hiring criteria they've created a "coding skill score" based on the specific competencies they require for this role; the more important the skill is for ACME corp, the more points it contributes to the "coding skill score" 
# ? Write a program that allows a user to input their skills and then tells them
# ? a) Their overall "coding skill score"
# ? b) Skills they may want to learn, and how much each one would improve their score
=end

# Greetings
def line
  puts "---------------------------------------"
end

puts "Hi, what's your name?"
name = gets.chomp
line
puts "Hi, #{name}! Welcome to ACME Corporation Hiring Process"
puts "We will now begin assessing your competencies for our ideal Junior Developer"
puts "Please answer ( y / n ) if you have any of the following skills:"
line
sleep(1.25)

# ACME Corp Skills
python = {skill: "Python", score: 1}
ruby = {skill: "Ruby", score: 2}
bash = {skill: "Bash", score: 4}
git = {skill: "Git", score: 8}
html = {skill: "HTML", score: 16}
tdd = {skill: "TDD", score: 32}
css = {skill: "CSS", score: 64}
js = {skill: "JavaScript", score: 128}

user_skills = []
user_skills_needed = []

# Assessment
puts ">> Python? y / n"
choice = gets.chomp.downcase
if choice == "y"
  user_skills << python
else
  user_skills_needed << python
end
line

puts ">> Ruby? y / n"
choice = gets.chomp.downcase
if choice == "y"
  user_skills << ruby
else
  user_skills_needed << ruby
end
line

puts ">> Bash? y / n"
choice = gets.chomp.downcase
if choice == "y"
  user_skills << bash
else
  user_skills_needed << bash
end
line

puts ">> Git? y / n"
choice = gets.chomp.downcase
if choice == "y"
  user_skills << git
else
  user_skills_needed << git
end
line

puts ">> HTML? y / n"
choice = gets.chomp.downcase
if choice == "y"
  user_skills << html
else
  user_skills_needed << html
end
line

puts ">> TDD? y / n"
choice = gets.chomp.downcase
if choice == "y"
  user_skills << tdd
else
  user_skills_needed << tdd
end
line

puts ">> CSS? y / n"
choice = gets.chomp.downcase
if choice == "y"
  user_skills << css
else
  user_skills_needed << css
end
line

puts ">> JavaScript? y / n"
choice = gets.chomp.downcase
if choice == "y"
  user_skills << js
else
  user_skills_needed << js
end
line

# user_skills for total score, user_skills_needed 
# pp user_skills
# puts "User skills needed:"
# pp user_skills_needed

# Display Result
score = user_skills.map { | skill | skill[:score] }
total_score = score.sum
puts "Thank you, #{name}!"
puts "Your overall coding skill score is #{total_score}"
line

if user_skills_needed.length >= 1
  puts "You may want to learn the following skills to improve your score:"  
  user_skills_needed.each { |skill| 
    puts ">> #{skill[:skill]} - score: #{skill[:score]}" } 
else
  puts "You have all the skills needed for being our ideal Junior Developer!"
end

line
puts "We will be in touch soon! 🙂"




