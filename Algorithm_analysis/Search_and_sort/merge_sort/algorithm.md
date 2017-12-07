# Mergesort; time: O nlog(n)
First keep divide the list in half until the smallest unit (1 element), then compare each element with the adjacent list to sort and merge the two adjacent lists. Finally all the elements are sorted and merged.  

# implementation
* return array if the length is <= 1  
* set variable `mid = length / 2`   
* set variable left and right to recursion with `mergesort` and recursively break down array until 1 element  
* set variable `i = j = k = 0`; will use i to compare left elements, j for right elements and k for merging back to original elements  
* set while loop to merge array back together after break down to 1;  
  when i and j has equal elements(iterate array i and j, compare which one is smaller, then set to k)  
  (when loop breaks meaning that i or j is not equal array; and i or j has left over sorted elements)  
  * if `left[i]` is smaller than `right[j]`, then set `array[k]` to `left[i]`  
    * increment i  
  * else, array[k] is equal to `right[j]`  
    * increment j  
  * increment k  
* set while loop to merge array back when i runs out of element but j still has left over sorted elements   
  * set `arr[k] = left[i]`  
  * increment `k,i`  
* set while loop to merge array back when j runs out of elements but i still has left over sorted elements  
  * set `arr[k] = right[j]`  
  * increment `k,j` 
* return merge_sort array  
