### some language would privide api  
* split in words, reverse then join  

### in interview will be asked to do low level implementation  

## Solution 1
* iterate array  
  * check if current value is not space  
    * store the letter in variable word  
  * if (current value is space or index is the end of string) and word is not empty  
    * unshift word that we store in words array  
    * reset word to empty string  
  * join word with space  

### time complexity: O(N)  
### space complexity: O(N)

## Solution 2
* create variable i starts from 0 to store the index  
* iterate string with while using i(ruby .each method will force to go through each element)  
  * if letter  
    * word_start index is i(current index)  
    * loop and keep increment i until the end of the word  
    * when hits space, push the string from word_start to i  
  * else(space)  
    * keep increment i  

### time complexity: O(N)  
### space complexity: O(N)  