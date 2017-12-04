class Node
  attr_accessor :next, :value

  def initialize(value)
    @value = value
    @next = nil
  end
end

def reverse_node(head)
  # set prev
  prev_node = nil

  # traverse node
  while head
    # store head.next in variable next_node, because we will assign value for head.next to prev node later on
    next_node = head.next
    # point current_node's next_node to prev node
    head.next = prev_node

    # re-assign previous node to current_node
    prev_node = head
    # move to next loop by assign current node to next node, move to next loop need to be on the last of the list
    head = next_node
  end

  prev_node
end

a = Node.new(1)
b = Node.new(2)
c = Node.new(3)
d = Node.new(4)

a.next = b
b.next = c
c.next = d

reverse_node(a)
p a.next
p b.next
p c.next
p d.next