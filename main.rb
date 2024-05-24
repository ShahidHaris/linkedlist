# frozen_string_literal: true

# Node class, containing a value and a link to the next node
class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

# LinkedList class, representing the full list
class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end


end
