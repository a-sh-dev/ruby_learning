def binary_search(arr, value)

	max = arr.length - 1
	min = 0
	count = 0
	result = []

	if arr.empty?
		result << -1
		result << count
		return result 
	else

		while min <= max
			count += 1
			mid = (min + max) / 2
			if arr[mid] == value
				result.push(mid, count)
				return result
			elsif arr[mid] > value
				max = mid - 1
			elsif
				min = mid + 1
			else
				result.push(-1, count)
				return result
			end
			return result
		end
	end

end

pp binary_search([1,5,8,12,20,21,35], 8)
pp binary_search([], 8)
pp binary_search([1,5,8,12,20,21,35], 34)