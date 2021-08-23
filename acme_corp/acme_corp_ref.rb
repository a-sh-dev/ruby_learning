# Greetings
def line
  puts "---------------------------------------"
end

def br
  puts "\n"
end

puts "Hi, what's your name?"
name = gets.chomp
line
puts "Hi, #{name}! Welcome to ACME Corporation Hiring Process"
puts "We will now begin assessing your competencies for our ideal Junior Developer"
puts "Please answer ( y / n ) if you have any of the following skills:"
line
sleep(1.25)

def assess(skill, user_skills, user_skills_needed)

    puts ">> #{skill[:skill]}? y / n"
    choice = gets.chomp.downcase
    case choice
    when "y"
      user_skills << skill
    when "n"
      user_skills_needed << skill
    else
      puts "Please choose y / n only"
      assess(skill, user_skills, user_skills_needed)
    end
    line

    # puts "skills: #{user_skills}"
    # puts "skills needed: #{user_skills_needed}"

end

# ACME Corp Skills
skills = [

  python = {skill: "Python", score: 1},
  ruby = {skill: "Ruby", score: 2},
  bash = {skill: "Bash", score: 4},
  git = {skill: "Git", score: 8},
  html = {skill: "HTML", score: 16},
  tdd = {skill: "TDD", score: 32},
  css = {skill: "CSS", score: 64},
  js = {skill: "JavaScript", score: 128}

]

user_skills = []
user_skills_needed = []

# * Assessment - refractored
skills.each do | skill |
  assess(skill, user_skills, user_skills_needed)
end

# Display Overall Score Result
score = user_skills.map { | skill | skill[:score] }
total_score = score.sum
br
line
puts "Thank you, #{name}!"
puts "Your overall coding skill score is #{total_score}"
line

# Display Skills to improve
if user_skills_needed.length > 0
  puts "You may want to learn the following skills to improve your score:"  
  user_skills_needed.each do |skill| 
    puts ">> #{skill[:skill]} - score: #{skill[:score]}"
  end 
else
  puts "You have all the skills needed for being our ideal Junior Developer!"
  br
end

line
br
puts "We will be in touch soon! 🙂"