#! Danny's solution

def binary_search(arr, value)
	##check for empty arr and return
	return [-1, 0] if arr.empty?

	lower_bound = 0 #lowest index in arr
	upper_bound = arr.length - 1 #highest index in arr
	steps = 0 #loops

	found = false
	#if lower bound crosses upper bound then we're repeating searches so end loop
	while (!found && lower_bound <= upper_bound)
		steps += 1
		#get the middle of arr – might not need .floor (round down method)
		mid = ((lower_bound + upper_bound) / 2).floor 
		if arr[mid] == value
			found = true 
		elsif arr[mid] > value
			#highest index to search becomes 1 less than prev mid point
			upper_bound = mid - 1 
		else
			#lowest index to search becomes 1 more than prev mid point
			lower_bound = mid + 1 
		end
	end
	#return -1 with steps if not found else return the index and steps
	return !found ? [-1, steps] : [mid, steps]
end

pp binary_search([1,5,8,12,20,21,35], 8)
pp binary_search([], 8)
pp binary_search([1,5,8,12,20,21,35], 34)