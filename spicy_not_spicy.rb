# Spicy and Not Spicy
# It's Sunday, and it's time for Thai. You love spicy food, but your friend does not. You will be given two ordered arrays. One array, will have 'S' and 'N' (where S means spicy and N means not spicy). The other array will be the price of the dish. The arrays will always be the same length.

# You will pay for all spicy meals, whilst you and your friend will split the non-spicy dishes. Return an ordered array of your owing and your friends owing.

# Note: Regardless of whether you are given an int or a float, always return a float 

# E.g. spicy_food(['S', 'N', 'N', 'S'], [12, 18, 17, 15]), should return [44.5, 17.5]

# E.g. spicy_food(['N'], [23]), should return [11.5, 11.5]

# E.g. spicy_food(['S', 'S', 'S', 'S', 'N'], [15, 14, 19, 23, 20]), should return [81.0, 10.0]

# E.g. spicy_food([], []), should return [0.0, 0.0]

def spicy_food(spice_arr, price_arr)
  my_pay = 0.0
  friend_pay = 0.0

  items = spice_arr.length

  items.times do |dish|
    case spice_arr[dish]
    when "S"
      my_pay += price_arr[dish]
    when "N"
      my_pay += 0.5 * price_arr[dish]
      friend_pay += 0.5 * price_arr[dish]
    else
      puts "Check your data"
    end
  end
  return my_pay, friend_pay
end

print spicy_food(['S', 'N', 'N', 'S'], [12, 18, 17, 15])
puts
print spicy_food(['N'], [23])
puts
print spicy_food(['S', 'S', 'S', 'S', 'N'], [15, 14, 19, 23, 20])
puts
print spicy_food([], [])