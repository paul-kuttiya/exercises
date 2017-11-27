# Solution 1
### time complexity: O(NlogN)

* sort both array
* zip bot array in to 2 dimentional array
* iterate array and check  
  * if the first value != second value  
    * missing number is the first value  
    
# Solution 2
### time complexity: linear time O(n)

* use hash table  
* iterate array2 and store number as key and counter as value   
* iterate array1  
  * if value not found(nil) return the key(missing num)
  * check for duplicate number  
    * if value in the key is 0; return the key  
    * else subtract a count  