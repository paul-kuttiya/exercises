## Check cycle or loop  
* have two marker, marker1 and marker2  
* have both marker begin at first node  
* loop and traverse to the end of the lists  
  * marker1 move +1 node, maker2 move +2 node    
    * if marker1 equal to marker2; circular nodes, true  
    * if reach to the tail(nil), no circular false
      * check by, for even lists; when marker2 almost last node, marker2.next.next, which is now marker2 will eq tail(nil),
        Or for odd lists; when marker2 is lastnode; marker2.next, will eq tail(nil)  