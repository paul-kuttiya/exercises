# Solution
### time complexity: O(N)
### space complexity: O(1)

* check edge cases  
  * return 0 if arr length is 0  

* assign variable to store max_sum and current_sum  
* iterate array from second element(index 1)  
  * compare between (current_sum + value) and value; then assign higher value to current_sum(because the highest current_sum can be the current number itself. Also if current_sum is negative, it will keep decreasing, so the sequence wouldn't be the largest anyway; starts the new sequence with current value)  
  * compare max_sum to current_sum; if current_sum is higher, re-assign current_sum to max_sum   

> we don’t reset the current sum to 0 because the array can contain all negative integers  