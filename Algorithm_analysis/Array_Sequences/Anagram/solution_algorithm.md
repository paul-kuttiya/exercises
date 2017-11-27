> note: do not use language built-in sort method

### edge case
* check if same number of letters  
  * return false if not the same  

# algorithm 
* remove space and lower case letter  
* create dictionary and store with hash variable  
* iterate string1 and store letter in hash dictionary  
* iterate string2 and substract letter in hash dictionary  
* check dictionary  
  * if keys in hash, false  
  * if no keys in hash, true

## Big O
Time complexity: O(n)  
Space complexity: O(1) 