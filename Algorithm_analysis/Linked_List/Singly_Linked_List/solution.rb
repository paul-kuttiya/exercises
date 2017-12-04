class Node
  attr_accessor :next

  def initialize(value)
    @value = value
    @next = nil
  end
end

a = Node.new(1)
b = Node.new(2)
c = Node.new(3)

a.next = b
b.next = c

p a
puts ""
p b
puts ""
p c