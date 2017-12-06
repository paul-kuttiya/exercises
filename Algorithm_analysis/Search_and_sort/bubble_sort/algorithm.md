# Bubble sort
Bubble Sort is the simplest sorting algorithm that works by repeatedly swapping the adjacent elements if they are in wrong order.

# implement
* set swapped to true(enforce the loop)    
* keep looping with `while swapped`  
  * set swapped to false  
  * loop inner loop from start index to (n-1) index; (n-1) index since no any element to swap for the last one  
    * if current value is greater than next value; swapped  
    * then set swapped to true  
      (if there is at least one swapped, when inner loop breaks,   
      swapped will be true and enforce inner loop to keep going),  
      (if there is no swapped, swapped is remained false,   
      when inner loop breaks, outer while loop will break as well)  
* return bubble sort array  
