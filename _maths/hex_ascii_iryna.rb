def hex_str_to_dec(str)
  hex_add_digits = {
    'a' => 10, 
    'b' => 11, 
    'c' => 12, 
    'd' => 13, 
    'e' => 14, 
    'f' => 15
    }
  
  #? str = "68 65 6c 6c 6f 20 77 6f 72 6c 64"
  # convert str to decimal first 
  decimal_numbers = str.split('').map do |char|  
    # search the key hash and return with the value
    (hex_add_digits[char] || char).to_i
  end

  sum = 0
  decimal_numbers.reverse.each_with_index do |el, ind|
    sum += el * (16 ** ind)
  end

  sum
end

def hex_string_to_ascii(str)

  letters = str.split.map do |num|
    hex_str_to_dec(num).chr
  end

  letters.join  
end

hex_string_to_ascii("68 65 6c 6c 6f 20 77 6f 72 6c 64")
hex_string_to_ascii("46 6f 6f 21 20 42 61 72 21")