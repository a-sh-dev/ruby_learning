def intersection(set1, set2)

	intersection = []

	# join both set first into a new variable nums
	nums = []
	set1.each { |x| nums << x }
	set2.each { |y| nums << y }

	# joining it and splitting it wont retain the original class
	# nums = (set1 << set2).join.split(",")

	# put each digits into a hash {x => x_count}
	nums_set = Hash.new(0)

	# count each number's frequencies
	nums.each { |x| nums_set[x] += 1 }
	
	# filter the numbers if occurance is more than 1 (x_count == 1)
	nums_set.each { |k,v| intersection << k unless v == 1 }
	
	pp intersection

end

def union(set1, set2) 

	union = []

	# combine set1 and set2 into a new variable
	nums = []
	set1.each { |x| nums << x }
	set2.each { |y| nums << y }

	# filter out any duplicates
	nums.select { |x| union << x unless union.include?(x) }
	
	pp union

end

def symmetric_difference(set1, set2)

	xor = []

	# combine set1 and set2 into a new variable
	nums = []
	set1.each { |x| nums << x }
	set2.each { |y| nums << y }

	# turn nums into a hash pair {x => x_count}
	nums_set = Hash.new(0)
	nums.each { |x| nums_set[x] += 1 }

	# remove/reject any duplicates where x_count > 1
	# select only digits that x_count == 1 into xor
	nums_set.each { |k,v| xor << k if v == 1 }

	pp xor

end


intersection([1,2,3],[3,4,5])
union([1,2,3], [3,4,5])
union(["a", "b", "c"], ["d", "e", "f"])
symmetric_difference([1,2,3],[3,4,5])
