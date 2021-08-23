def decimal_to_binary_old (decimal)
	number = decimal
	# if(number == 0) then 0 end

	round = 0

	binary = ""
	while(number != 0)
		binary = String(number % 2) + binary
		number = number / 2
		round += 1
		puts "#{round} -> " + binary
	end
	dashx = (binary.length + decimal.to_s.length) + 13
	dash = "-" * dashx
	puts dash
	puts " #{decimal} base 2 is #{binary}"
	puts dash
end


def decimal_to_binary(decimal)
	number = decimal
	binary = number.to_s(2)
	
	# # on every 4 digits, insert a space from the right
	# binary_digits = binary.split("").map(&:to_i)
	# puts "-#{binary_digits}"
    
  # view
  dashx = (binary.length + decimal.to_s.length) + 16
	dash = "-" * dashx
	puts dash
	puts " #{decimal} to base 2 is #{binary}"
	puts dash
end


decimal_to_binary(378)


decimal_to_binary(10)