def decimal_to_binary(decimal)
	number = decimal
	binary = number.to_s(2)
	binary_str = binary

	# formatting the binary into sets of 4 digits
  # by the help of Iryna to achieve this!!
	arr = []
	length = binary_str.length

	for i in (1..length) do
	remainder =  i % 4
	# pp "i: #{i}"
	# pp "remainder: #{remainder}"
	# pp "binary_str[-i]: #{binary_str[-i]}"

	if (remainder == 0) && (i < length)
	arr.unshift(' ' + binary_str[-i])
	elsif i == length && remainder > 0 
	# puts remainder
	arr.unshift('0' * (4 - remainder) + binary_str[-i])
	else
	arr.unshift(binary_str[-i])
	end
	end
	# pp arr
	binary_str = arr.join
  
    # view result nicely
  result = " #{decimal} decimal to base 2 is #{binary_str}"
	dashx = result.size + 1
	dash = "-" * dashx
	puts dash
	puts result
	puts dash
end

decimal_to_binary(7)
decimal_to_binary(15)
