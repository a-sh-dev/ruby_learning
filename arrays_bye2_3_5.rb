def bye_bye_3_and_5(num)
	
  #* Create a new array for the selections
	new_array = []
  
  #* Loop to go through 1 to whatever argument/parameter in 'num' 
	for numbers in 1..num do
		unless numbers % 3 == 0 || numbers % 5 == 0
		new_array << numbers # << is short hand for new_array.push(numbers)  
		end 
	end
	return new_array
end

pp bye_bye_3_and_5(4)
pp bye_bye_3_and_5(13)
pp bye_bye_3_and_5(0)

# ! Alex's solution:

def bye_bye_3_and_5_alex(num)
	(1..num).to_a.reject {|num| num % 3 == 0 || num % 5 == 0}
end

pp bye_bye_3_and_5_alex(4)
pp bye_bye_3_and_5_alex(13)
pp bye_bye_3_and_5_alex(0)

