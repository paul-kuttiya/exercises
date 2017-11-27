## with ruby methods
# def anagram(s1, s2)
#   s1.gsub(/\s/, '').downcase.chars.sort.join('') == s2.gsub(/\s/, '').downcase.chars.sort.join('')
# end

## using custom dictionary
def anagram(s1, s2)
  # strip space and downcase
  s1 = s1.downcase.gsub(/\s/, '')
  s2 = s2.downcase.gsub(/\s/, '')  

  # create custom dictionary
  letters = {}

  (0...(s1.length)).each do |idx|
    letters[s1[idx]] = letters[s1[idx]] || 0
    letters[s1[idx]] += 1
  end

  (0...(s2.length)).each do |idx|
    letters[s2[idx]] = letters[s2[idx]] || 0
    letters[s2[idx]] -= 1
  end

  letters.each do |k, v|
    return false if v != 0
  end

  true
end

p anagram('go go go','gggooo') == true
p anagram('abc','cba') == true
p anagram('hi man','hi     man') == true
p anagram('aabbcc','aabbc') == false
p anagram('123','1 2') == false