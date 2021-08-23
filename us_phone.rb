# ! From CodeWars

# \(\d{3}\) \d{3}-\d{4}

def create_phone_number(numbers)

  numbers = numbers.join
  "(#{numbers[0,3]}) #{numbers[3,3]}-#{numbers[6,4]}"

end

def create_phone_number_v2(numbers)

  '(%d%d%d) %d%d%d-%d%d%d%d' % numbers

end

def create_phone_number_v3(numbers)

  area_code, prefix, *extension = digits.each_slice(3).map(&:join)
"(#{area_code}) #{prefix}-#{extension.join}"


end


pp create_phone_number_v2([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])