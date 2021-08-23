# ! not finished... 

def hex_string_to_ascii(str)
	#code here
end 

def hex_to_dec(str)

	hexes = str.split(" ")
	hex_dec = {"a"=> 10, "b"=> 11, "c"=> 12, "d"=> 13, "e"=> 14, "f"=> 15}
	dec = []

	hexes.map do |num|
		num.chars.each do |x,y| hex_dec.keys.include?(y) ? hex_dec.fetch(y) : y.to_i  
		
		y = (x[0] * 16) + x[1]
		
			end
		end

	pp dec

end

hex_to_dec("68 65 6c 6c 6f 20 77 6f 72 6c 64")

# hex_string_to_ascii("68 65 6c 6c 6f 20 77 6f 72 6c 64")