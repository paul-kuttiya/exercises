class Node
  attr_accessor :next, :prev

  def initialize(value)
    @value = value
    @next = nil
    @prev = nil
  end
end

a = Node.new(1)
b = Node.new(2)
c = Node.new(3)

a.next = b
b.prev = a
b.next = c
c.prev = a

p a
puts ""
p b
puts ""
p c