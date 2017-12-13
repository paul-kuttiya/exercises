class Node
  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next = nil
  end
end

def target_node(head, n)
  left = head
  right = head
  
  # set right forward at position n from starting point
  (n).times do 
    if right.next == nil
      raise Exception, "Node lists size is smaller than n"
    end
    
    right = right.next
  end

  # traverse right to the last node; 
  # check for right_pointer next_node is nil
  while right
    # increment each pointer
    right = right.next
    left = left.next
  end

  # when right hits tail, left will eq nth position  
  left
end

a = Node.new(1)
b = Node.new(2)
c = Node.new(3)
d = Node.new(4)
e = Node.new(5)

a.next = b
b.next = c
c.next = d
d.next = e

p target_node(a, 2).value