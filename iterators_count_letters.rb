# Todo: count_letters method takes a string as an argument, and will return the count of each letter as a hash.
# ! e.g. count_letters("hello") should return {"h"=>1, "e"=>1, "l"=>2, o=>1}


def count_letters(input)
	# letter_count will store the hash you create in this challenge
	# from the input string that is passed to count_letters
	letter_count = {}
	
	input.split("").each do |letter|
		if letter != " "
			if letter_count[letter]
				letter_count[letter] += 1
			else
				letter_count[letter] = 1
			end
		end
	end

	return letter_count
end

# Outputting the return value of count_letters
p count_letters("Hello World")
p count_letters("Thats The Ticket")
p count_letters("")