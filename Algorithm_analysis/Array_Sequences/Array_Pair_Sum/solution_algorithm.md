### edge case
* check if input has at least one pair  
  * return zero

# algorithm  
* use 2 array variable to store data; check_pairs and result
* iterate input array and find current value pair by substract sum k with the current value  
  * check if the pair is included in our check_pairs array; check_pairs is array that stored pair values from previous iteration
    * if not, store current value in pairs which will use to check as A pair for next iteration  
    * if pair is included in pairs array, sorted and push the current iteration value and its pair as a sub array in result array  
* return output length    

## Big O
Time complexity: O(n)  
Space complexity: O(n) 