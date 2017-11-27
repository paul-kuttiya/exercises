def rev_word(s)
  len = s.length - 1
  words = []
  space = ' '
  word = ''

  (0..len).each do |i|
    # if letter is letter
    if s[i] != space
      # build the word
      word += s[i]
    end

    # if (letter is space or end of the string) and has word
    if ((s[i] == space || i == len) && word.length != 0)
      # unshift word in words array
      words.unshift(word)
      # then reset word to empty string
      word = ''
    end
  end

  # return words in string
  words.join(space)
end

p rev_word('    space before') == 'before space'
p rev_word('space after     ') == 'after space'
p rev_word('   Hello John    how are you   ') == 'you are how John Hello'
p rev_word('1') == '1'
