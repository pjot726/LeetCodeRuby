# Runtime: 48 ms, faster than 52.10% of Ruby online submissions for Shuffle the Array.
# Memory Usage: 10.1 MB, less than 100.00% of Ruby online submissions for Shuffle the Array.

# @param {Integer[]} nums
# @param {Integer} n
# @return {Integer[]}
def shuffle(nums, n)
    # Create result 
    result = Array.new
    
    # Loop through nums, pushing index and n + index 
    # elements into result.
    for index in 0..(n-1)
        result.push(nums[index])
        result.push(nums[n + index])
    end
    
    return result
end