=begin

Tribonacci will take the last 3 inputs (as oppose to 2), and add them together to get another value. 

Create a method that will be given an array and an integer as it's argument. The array will hold the first 3 numbers of the tribonacci sequence, whilst the integer will be the nth number of the sequence we want to access.

E.g. tribonacci([1,1,2], 5), should return 7 -> (as the sequence would add 1 + 1 + 2 to get 4, so would be [1,1,2,4], then would add 1 + 2 + 4, and get 7, so would be [1,1,2,4,7], meaning our final result would be 7)

E.g. tribonacci([5,6,11], 9), should return 449

=end
  
end

def tribonacci(nums, nth_num)

  return "Please enter a positive integer"
  if nth_num <= 0

  unless nums.length < 3
    while nums.length < nth_num
      nums << (nums[-1] + nums[-2] + nums[-3])
    end
  end

  nums[nth_num - 1]

end

pp tribonacci([1,1,2], 5)
pp tribonacci([5,6,11], 9)