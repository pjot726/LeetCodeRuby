# Runtime: 48 ms, faster than 78.26% of Ruby online submissions
# Memory Usage: 9.6 MB, less than 100.00% of Ruby online submissions

# @param {Integer[]} nums
# @return {Integer[]}
def running_sum(nums)

	# Declare array
    result = Array.new

    # Running sum variable 
    runningSum = 0

    # For each value in nums, 
    # add it to runningSum and store the result
    # in result 
    nums.each { |val|
        runningSum = runningSum + val
        result.push(runningSum)
    }

    # return result
    return result
end