# Runtime: 36 ms, faster than 76.84% of Ruby submissions.
# Memory Usage: 9.9 MB, less than 41.17% of Ruby submissions.

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    # Hash map that maps numbers to tbe indices at which they occured.
    hashMap = Hash.new
    
    # Output array
    output = []
    
    # Traverse array.
    nums.each_with_index do |i, index|
        # If the target - i is present in the hashmap,
        # push the two indices onto the output array and return.
        if hashMap.has_key?(target - i)
            output << hashMap[target - i]
            output << index
            return output
        # Otherwise, add the number and index to the hash.
        else
            hashMap[i] = index
        end    
    end
    # Catch-all return statment (we should never get here,
    # given problem guarentees that an answer exists.)
    return output
end