def uni_char2(s)
  letters = {}

  (0..s.length).each do |n|
    if letters[s[n]]
      return false
    else
      letters[s[n]] = 1
    end
  end

  true
end

p uni_char2('') == true
p uni_char2('goo') == false
p uni_char2('abcdefg') == true