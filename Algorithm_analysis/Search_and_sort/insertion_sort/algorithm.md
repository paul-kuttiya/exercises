# insertion sort
iterate array starting from index 1 to last index, store the current value, then shift the values to the left of current iterated index until current value sorted accordingly

# implementation  
* iterate array starting from index 1 to last index  
  * store the current value in temp and position to current index  
  * set the inner while loop to check if index > 0 and position-1 > temp
    (loop breaks when hit first element or found sorted value; previous < temp)  
    * shift value; assign current value to position-1 value  
    * decrement position to lower index   
  * when inner loop breaks, position will be equal to the index of where temp should be sorted, hence, assign that position to temp value  
* return array