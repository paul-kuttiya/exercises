# Anagram Check
Problem
Given two strings, check to see if they are anagrams. An anagram is when the two strings can be written using the exact same letters (so you can just rearrange the letters to get a different phrase or word).
For example:
"public relations" is an anagram of "crap built on lies."

"clint eastwood" is an anagram of "old west action"

> Note: Ignore spaces and capitalization. So "d go" is an anagram of "God" and "dog" and "o d g".

### test cases
```ruby
sol('go go go','gggooo') == True
sol('abc','cba') == True
sol('hi man','hi     man') == True
sol('aabbcc','aabbc') == False
sol('123','1 2') == False