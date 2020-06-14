# Runtime: 92 ms, faster than 12.71% of Ruby online submissions
# Memory Usage: 9.8 MB, less than 52.06% of Ruby online submissions

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    # Create array to store sums
    sums = []
    
    # Iterate through linked lists, adding the sum of the numbers
    while l1 != nil && l2 != nil
        sums.push(l1.val + l2.val)
        l1 = l1.next
        l2 = l2.next
    end
    while l2 != nil
        sums.push(l2.val)
        l2 = l2.next
    end
    while l1 != nil
        sums.push(l1.val)
        l1 = l1.next
    end   
    
    sums.push(0)
    sums.each_with_index { |val, index|
        if val >= 10
            sums[index] = val % 10
            sums[index + 1] = sums[index + 1] + 1
        end
    }
    
    if sums.last == 0
        sums.pop()
    end
    
    root = ListNode.new
    trav = root
    
    sums.each_with_index { |sumVal, index|
        if index == sums.length - 1
            trav.val = sumVal
        else
            trav.val = sumVal
            trav.next = ListNode.new
            trav = trav.next
        end
    }
    
    return root
end