def balance_check(s)
  # not pair return false  
  return false if s.length < 2

  # opening paren
  opening = "({["
  # matching paren
  matched = {
    ")" => "(",
    "}" => "{",
    "]" => "["
  }
  stack = []

  # iterate string
  (0...s.length).each do |i|
    # if open paren, push in the stack
    if opening.include?(s[i])
      stack.push(s[i])
    # closing paren
    else
      # no any open in stack, closing with no pair, return false
      return false if (stack.length == 0)

      # check if opening is matching with current closing
      if stack.pop != matched[s[i]]
        return false
      end
    end
  end

  # iterate whole string, all match, no opening in stack
  stack.length == 0
end

p balance_check('[](){([[[]]])}(') == false
p balance_check('[{{{(())}}}]((()))') == true
p balance_check('[[[]])]') == false



