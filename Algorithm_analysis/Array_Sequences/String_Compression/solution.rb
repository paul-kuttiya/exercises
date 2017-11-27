def compress(s)
  # count = 1, compress = ''
  count = 1
  compress = ''

    # iterate string
    (0...s.length).each do |n|
      # if next string is same letter
      if s[n + 1] == s[n]
        # increment count
        count += 1
      # if next string is new letter
      else
        # concat count with current string and store in compress
        compress += "#{s[n]}#{count}"
        # reset count to 1
        count = 1
      end
    end
  
  # return compress
  p compress
end

# compress('AAABCCDDDDD')
p compress('') == ''
p compress('AABBCC') == 'A2B2C2'
p compress('AAABCCDDDDD') == 'A3B1C2D5'
