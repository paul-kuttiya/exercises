# Problem
Given a string in the form 'AAAABBBBCCCCCDDEEEE' compress it to become 'A4B4C5D2E4'. For this problem, you can falsely "compress" strings of single or double letters. For instance, it is okay for 'AAB' to return 'A2B1' even though this technically takes more space.  
The function should also be case sensitive, so that a string 'AAAaaa' returns 'A3a3'.  

```ruby
sol('') == ''
sol('AABBCC') == 'A2B2C2'
sol('AAABCCDDDDD') == 'A3B1C2D5'
```