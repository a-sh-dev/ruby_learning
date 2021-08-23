def exclusive_or(num1, num2)
	# transform num1 and num2 from decimal to binary first
	binary1 = num1.to_s(2)
	binary2 = num2.to_s(2)

	# both binary nums have to be in the same length to be compared
	# find the smaller num and binary to be added
	# set = {xdigit_to_be_added: ["smler_bin", "lrger_bin"]}
	set = {}

	if num1 < num2
		set[(binary2.size - binary1.size)] = [binary1, binary2]
	else
		set[(binary1.size - binary2.size)] = [binary2, binary1]
	end

	# the smaller num binary to be in the same length as the larger one
	binary3 = [set.values[0][0]]
	key = set.keys
	binary3 = binary3.unshift("0" * key[0])
	binary3 = binary3.join


	# split the digits for binary3 and binary4
	binary3 = binary3.split("")
	binary4 = (set.values[0][1]).split("")
	# to store the result of xor
	xor_bin = []
	# helpers
	length = binary3.length - 1
	i = 0

	# compare the binary3 and binary 4
	# for i in (0..length) do

	# 	xor_bin = binary3.map {|x| x == binary4[i] ? "0" : "1"}
	# 	xor_bin1 = binary3.map do |x| 
	# 		puts "x --> #{x}"
	# 		puts "bin4--> #{binary4[i]}" "index: #{i}"
	# 	end

	# end

	for i in (0..length) do

		binary3[i] == binary4[i] ? xor_bin << "0" : xor_bin << "1"
		# puts "xor  --> #{xor_bin}"
		# puts "bin4 --> #{binary4[i]}" " i: #{i}"

	end

	# puts "binary1 --> #{binary1}"
	# puts "binary2 --> #{binary2}"
	puts
	puts "set: #{set}"
	puts
	puts "binary3(sml) -> #{binary3}"
	puts "binary4(lrg) -> #{binary4}"

	puts "xor bin ------> #{xor_bin}"
	# pp xor_bin
	puts "#{num1} xor #{num2} is:"
	pp xor_bin.join.to_i(2)

end

exclusive_or(3, 7)