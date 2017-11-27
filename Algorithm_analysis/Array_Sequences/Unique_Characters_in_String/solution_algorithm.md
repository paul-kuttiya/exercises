## with ruby built-in method  
```ruby
return string.chars.uniq.length == string.chars.length
```

# with low level  
* will store value in dictionary as hash, `letters = {}`  
* iterate string and store in letters hash  
  * if string exists in hash return false  
  * else store string in letters  
* return true after all iteration    

### Time complexity: O(n)
### Space complexity: O(n)
