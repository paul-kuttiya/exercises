# selection sort
* sort by scan the whole array to find the minimum, then swapped minimum with current iterate index  

# implementation  
* set outer loop from index 0 to (n-1); n-1 is the last index which will be the largest anyway when swapped from the inner loop  
  * set minimum index to current index  
  * set inner loop to loop from current iterated index to last index  
    * check if current value in inner loop is smaller than array[minimum_index]; if true, update new minimum index  
  * swap current outer loop value with minimum value using minimum index(if current value is minimum, the minimum index would stay the same)  
* return selection sort array  