# ! Danny's solution
# ! Need to check the HEX >> ASCII table for the "-55" part

def hex_string_to_ascii(str)
  arr = str.split
  out = ""
  arr.each do |x|
      b10 = to_b_10(x)
      out += b10.chr
  end
  return out
end 

def to_b_10(str)
  b10 = 0
  str.chars.each_with_index do |ch, i|    
    power = (16 ** (str.length - i - 1))

    #if "A"+
    if ch.upcase.ord >= 65
      #map ch to number it represents and do multiplication - check hex > ascii table
      b10 += ((ch.upcase.ord - 55) * power)
    else
      #no mapping needed
      b10 += ((ch.to_i) * power)
    end
  end
  return b10
end

hex_string_to_ascii("46 6f 6f 21 20 42 61 72 21")