# ! Write a method that will take an array of numbers as an argument. Square each of these numbers, and return the entire array

def square_numbers_of_an_array (array_of_numbers)

	squared = []
	array_of_numbers.map do |num| 
    doubled = num ** 2	
		squared << doubled
	end
	return squared
end

# 	array_squared = []
# use the array_squared varibale to store
# the result of squareing each value in array_of_numbers
	
# 	array_of_numbers.each { |number| array_squared << number ** 2 }
# 	return array_squared
# end

pp square_numbers_of_an_array([1,2,3,4,5])
pp square_numbers_of_an_array([9])
pp square_numbers_of_an_array([])