## time O(n), space O(1)

* Traverse node until tail(nil)    
  * change each pointer of each node, node next pointer should be pointed to prev  
  * reassign current node to prev node  
  * move loop to next node, by assign current node to next node  

> Make sure to copy current.next_node into next_node variable before setting current.next_node to previous node, otherwise the loop will not move on to next node but prev node instead