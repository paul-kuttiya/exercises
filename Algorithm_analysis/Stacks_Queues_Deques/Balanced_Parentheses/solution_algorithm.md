# Solution  
### Use stack and FILO  
### Time: O(n<sup>2</sup>), space: O(n)

* return false if length of string < 2  

* create hash to store matching parenthesis  
* iterate string  
  * if see opening parenthesis, push to stack  
  * else(not opening parenthesis)  
    * if stack empty, return false  
    * pop the closing parenthesis, compare with matching hash  
      * return false if not match  
* check stack empty?, if yes return true, else false  

```ruby
sol('[](){([[[]]])}(') == false
sol('[{{{(())}}}]((()))') == true
sol('[[[]])]') == false
```