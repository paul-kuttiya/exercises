def rev_word(s)
  words = []
  space = ' '

  # stored index
  i = 0

  # starts the loop
  while i < s.length
    # check if current is letter
    if s[i] != space
      # find start of the word's index
      word_start = i

      # keep incrementing i until the end of the word
      while i < s.length && s[i] != space
        i += 1
      end

      # exit while loop when find space or end of the string
      # unshift string from word's start and end index 
      words.unshift s[word_start...i]
    
    # if current is space
    else
      # increment i to next value
      i += 1
    end
  end

  words.join(' ')
end

# p rev_word('    space before')
p rev_word('    space before') == 'before space'
p rev_word('space after     ') == 'after space'
p rev_word('   Hello John    how are you   ') == 'you are how John Hello'
p rev_word('1') == '1'
