# Solution
* create variable `count = 1` to count run length string and `compress = ''` to store run-length  
* iterate string  
  * check if next value is the same as current value  
    * if so increment count  
    * if not(different string value) concat count with current value, store in compress, then reset count to 1
* return compress  
  
### time complexity: O(N)  
### space complexity: O(1)