## Binary search  
### use devide and conquer  
### need to be sorted array 
* first is 0 and last is array last idx  
* keep looping the whole array `while first <= last`   
  * find middle value  
  * if array[middle] match with search; return and done!  
  * if the search is greater than the middle; drop the lower half  
  * if the search is lower than the middle; drop the upper half  
  * if no match found, eventually first will > last and break loop