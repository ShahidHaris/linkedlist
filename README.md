# LinkedList Implementation in Ruby
This repository contains an implementation of a singly linked list data structure in Ruby. Linked lists are fundamental data structures consisting of nodes where each node contains a data element and a reference (link) to the next node in the sequence.

# Features
- Node Class: Defines a node with a value and a reference to the next node.
- LinkedList Class: Provides methods to manipulate the linked list, including:
  - append(value): Adds a new value to the end of the list.
  - prepend(value): Adds a new value at the start of the list.
  - size: Returns the total number of nodes in the list.
  - head_node: Returns the first node in the list.
  - tail: Returns the last node in the list.
  - at(index): Returns the node at the given index.
  - pop: Removes the last element from the list.
  - contains?(value): Checks if a value is in the list.
  - find(value): Returns the index of the node containing the value, or nil if not found.
  - insert_at(value, index): Inserts a new node with the provided value at the given index.
  - remove_at(index): Removes the node at the given index.
  - to_s: Prints the list.

# Installation
Clone the repository to your local machine:
```sh
git clone https://github.com/your_username/linked-list-ruby.git
cd linked-list-ruby
```

# Usage
You can use the LinkedList class to create and manipulate linked lists. Here's an example:
```
link = LinkedList.new
link.append(10)
link.append(20)
link.append(30)
link.prepend(90)
link.insert_at(15, 2)
link.remove_at(3)
puts link.to_s  # Output: (90) -> (10) -> (15) -> (30) -> nil
```
# Contributing
Contributions are welcome! Please fork the repository and submit a pull request for any changes you'd like to make.

# License
This project is licensed under the Creative Commons Attribution 4.0 International License (CC BY 4.0).

In summary, you are free to:
  - Share: Copy and redistribute the material in any medium or format.
  - Adapt: Remix, transform, and build upon the material for any purpose, even commercially.

Under the following terms:
  - Attribution: You must give appropriate credit, provide a link to the license, and indicate if changes were made. You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.
