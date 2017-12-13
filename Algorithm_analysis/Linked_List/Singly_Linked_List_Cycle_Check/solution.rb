class Node
  attr_reader :value
  attr_accessor :next

  def initialize(value)
    @value = value
    @next = nil
  end
end

def cycle?(node)
  # use 2 markers, start at first node
  marker1 = node
  marker2 = node

  ## option1
  while marker2 != nil && marker2.next != nil
    marker1 = marker1.next
    marker2 = marker2.next.next

    if marker1 == marker2
      return true
    end
  end

  false

  ## option2
  ## traverse lists
  # loop do
  #   # marker1 move +1, marker2 move +2
  #   marker1 = marker1.next
  #   marker2 = marker2.next.next
    
  #   # if circular both marker will match
  #   if marker1 == marker2
  #     return true
  #   end
    
  #   # check even lists; when marker2 almost last node, marker2.next.next, which is now marker2 will eq tail(nil)
  #   # check odd lists; when marker2 is lastnode; marker2.next, will eq tail(nil)
  #   if marker2 == nil || marker2.next == nil
  #     return false
  #   end
  # end
end

a = Node.new(1)
b = Node.new(2)
c = Node.new(3)
d = Node.new(4)
e = Node.new(5)
f = Node.new(6)
g = Node.new(7)
h = Node.new(8)
i = Node.new(9)
j = Node.new(10)

a.next = b
b.next = c
c.next = d
d.next = e
e.next = f
f.next = g
g.next = h
h.next = i
i.next = j
j.next = a

p cycle?(a)