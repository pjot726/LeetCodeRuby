# Runtime: 28 ms, faster than 98.02% of Ruby online submissions for Jewels and Stones.
# Memory Usage: 9.3 MB, less than 42.28% of Ruby online submissions for Jewels and Stones.

# @param {String} j
# @param {String} s
# @return {Integer}
def num_jewels_in_stones(j, s)
    # Create set of all jewel characters
    jewelSet = Set.new
        
    # Add each jewel to the set.
    j.each_char { |charJ|
        jewelSet.add(charJ)
    }
          
    # Declare result
    result = 0
    
    # Check to see if each member of s is in j
    s.each_char { |charS|
        if jewelSet.include?(charS)
            result = result + 1
        end
    }
    
    return result
end