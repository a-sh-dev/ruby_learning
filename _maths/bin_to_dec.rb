def binary_to_decimal(binary)
	number = binary.to_s
	decimal = number.to_i(2)
    
  # view
	msg = " #{binary} binary to base 10 -> #{decimal}" 
  # dashx = (binary.to_s.length + decimal.to_s.length)  + msg.size
  dashx = msg.size + 1
	dash = "-" * dashx

  puts dash
	puts msg
	puts dash
end

binary_to_decimal(11)