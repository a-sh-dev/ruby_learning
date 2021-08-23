# ! Create a method that takes a string, and turns it into a Mexican Wave. Ignore spaces, and notice that everything else becomes down cased!

def mexican_wave(str)

	# Dan's solution
	wave = []
	for i in 0...str.length do
		next if str[i] == " "
		temp_str = str.downcase
		temp_str[i] = temp_str[i].upcase
		wave << temp_str
	end

	return wave

  #! My failed attempt
	# return [] if str == ""

	# # count the letters ignoring whitespace
	# count = str.scan(/\S/).count - 1
	# wave = []

	# for i in (0..count) do
	# 	Array(str).map do |s|
	# 	s[i] = s[i].upcase
	# 	puts s[i]
	# 	wave << s
	# 	puts s
	# 	s.downcase!
	# 	puts s
	# 	end
	# end

end

def mexican_wave_iryna(str)
  wave = []

  (0...str.length).each do |i|
    unless str[i] == " "
      current_str = str.downcase
      current_str[i] = current_str[i].upcase
      wave << current_str
    end
  end
  wave
end


pp mexican_wave("hello")
pp mexican_wave("rabbit")
pp mexican_wave("Ole Ole Ole")