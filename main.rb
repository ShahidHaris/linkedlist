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

  # Adds a new value to the end of the list
  def append(value)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
    else
      current = @head
      current = current.next_node while current.next_node
      current.next_node = new_node
    end
  end

  # Adds a new value at the start of the list
  def prepend(value)
    @head = Node.new(value, @head)
  end

  # Returns the total number of nodes in the list
  def size
    counter = 0
    current = @head
    while current
      counter += 1
      current = current.next_node
    end
    counter
  end

  # Returns the first node in the list
  def head_node
    @head
  end

  # Returns the last node in the list
  def tail
    return nil unless @head

    current = @head
    current = current.next_node while current.next_node
    current
  end

  # Returns the node at the given index
  def at(index)
    return nil if index >= size

    current = @head
    index.times { current = current.next_node }
    current
  end

  # Removes the last element from the list
  def pop
    return if @head.nil?

    if @head.next_node.nil?
      @head = nil
    else
      current = @head
      current = current.next_node while current.next_node.next_node
      current.next_node = nil
    end
  end

  # Returns true if the passed-in value is in the list, otherwise false
  def contains?(value)
    current = @head
    while current
      return true if current.value == value

      current = current.next_node
    end
    false
  end

  # Returns the index of the node containing the value, or nil if not found
  def find(value)
    current = @head
    index = 0
    while current
      return index if current.value == value

      index += 1
      current = current.next_node
    end
    nil
  end

  # Prints the list
  def to_s
    current = @head
    while current
      print "(#{current.value}) -> "
      current = current.next_node
    end
    print 'nil'
  end
end
