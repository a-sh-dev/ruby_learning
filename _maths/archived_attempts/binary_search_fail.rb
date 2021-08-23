# ! Failed... 

def binary_search_old(arr, value)
	# find the length of array
	array = arr
	length = arr.length
	count = 0

	# find midpoint index
	midpoint = length / 2
	
	tmp_arr = []
	result = []

	pp length
	pp midpoint


	while array[midpoint] != value
		
		count =+ 1
		
		# if binary_found > than value, discard upper part of array
		if array[midpoint] > value
			array[midpoint] = (array[midpoint] / 2)
			for i in 0..midpoint do
			arr.map { |x| array << x[i] }
			pp array
			end
		else
			array[midpoint] < value
			array[midpoint] = (array[midpoint] / 2)
			for i in midpoint..(arr.length) do
			arr.map { |x| array << x[i] }
			pp array
			end
		end 
		return count
		return array
	end

	# result << array
	# result << count

end