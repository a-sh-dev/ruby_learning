# ! ATM machines allow 4 or 6 digit PIN codes and PIN codes cannot contain anything but exactly 4 digits or exactly 6 digits. Your task is to create a method that takes a string and returns true if the PIN is valid and false if it's not.

def is_valid_PIN(pin)
	
	pin.match?(/^([0-9]{4}|[0-9]{6})$/)
	# pin.match?(/^(\d{4}|\d{6})$/)
  
	# /^(\d{4}|\d{6})$/ === pin
end

# ! Snake? Write a method where, given a string as an argument, you return true whether the person is a snake, or false if they are not. Someone is a snake if they have 2 or more s's together in one of the words they say (Case insensitive).

def is_it_a_snake(str)
	str.match?(/[sS]{2,}/)

	# another approach:
	# str.downcase.include?('ss')

end

def is_it_a_snake_logical(str)
	
	chars = str.downcase.chars
	for i in (0..str.length - 1) do
		if chars[i] == 's' ? (return true) : i += 1
	end
	end
	return false
end

p is_valid_PIN("1234")
p is_valid_PIN("a234")
p is_valid_PIN("123456")
p is_valid_PIN("123456a")
p is_valid_PIN("12345")

