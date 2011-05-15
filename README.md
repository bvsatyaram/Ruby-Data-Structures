RubyDatStructures
=============

`RubyDataStructures` gem is a `ruby` implementation of common data structures that are not by default supported by the Ruby programming language.
The `RubyDatStructures` supports the following data structures:

- Multi Dimensional Array
- Stack (Implemented as an array)
- Queue (Implemented as an array)
- Singly Linked List
- Doubly Linked List
- Max Heap

Installation
------------

    gem install RubyDataStructures

Usage
-----

The `RubyDatStructures` library can be easily imported by running:

    require 'rubygems'
    require 'RubyDatStructures'

The usage of each of the data structures is described below.

## Multi Dimensional Array

A `multi dimensional array` can be initialized by running:

    RubyDataStructures::MultiDimensionalArray.new(n)

where `n` is the number of dimensions of the multi dimensional array.

The key at a particular index can be easily accessed by calling the array with the dimensions of the index.
The key at the index with dimensions `(2,4,3)` of a multi dimensional array `mul_dim_array` can be access by calling:

    mul_dim_array[2,4,3]

The key for an index can also be easily set by calling the setter with the dimensions of the index.
The key at the index with dimensions `(2,4,3)` of a multi dimensional array `mul_dim_array` can be set to `36` by calling:

    mul_dim_array[2,4,3] = 36

## Stack

A `Stack` can be initialized by running:

    RubyDataStructures::StackAsArray.new(n)

where `n` is the max-size of stack.

The following methods available on a `stack` are self explanatory:

- empty?
- full?
- singleton?
- push(`element`)
- pop
- reset

Examples:

    my_stack = RubyDataStructures::StackAsArray.new(5)
    my_stack.empty?     # Returns `true`
    my_stack.full?      # Returns `false`
    my_stack.singleton? # Returns `false`
    my_stack.push(1)
    my_stack.push(2)
    my_stach.push(3)
    my_stack.pop        # Return `3`

## Queue

A `Queue` can be initialized by calling:

    RubyDataStructures::QueueAsArray.new(n)

where `n` is the max-size of the queue.

The following methods available on a `queue` are self explanatory:

- empty?
- full?
- enqueue(`element`)
- dequeue
- reset

Examples:

    my_queue = RubyDataStructures::QueueAsArray.new(5)
    my_queue.empty?     # Returns `true`
    my_queue.full?      # Returns `false`
    my_queue.enqueue(1)
    my_queue.enqueue(2)
    my_queue.enqueue(3)
    my_queue.dequeue    # Returns `1`

## Singly Linked List

A `singly linked list` can be initialized by running:

    RubyDataStructures::SinglyLinkedList.new

The following methods available on a  `singly linked list` are self explanatory:

- head
- empty?
- insert(`item`)
- search(`key`)
- delete(`key`)
- reset

Examples:

    my_list = RubyDataStructures::SinglyLinkedList.new
    my_list.head # Returns `nil`
    my_list.empty? # Returns `true`
    my_list.insert(7)
    my_list.search(7) # Returns a `RubyDataStructures::SinglyLinkedList::Element` element, whose key is `7`
    my_list.delete(7)

## Doubly Linked List

A `doubly linked list` can be intialized by running:

    RubyDataStructures::DoublyLinkedList.new

The following methods available on a  `doubly linked list` are self explanatory:

- head
- tail
- empty?
- insert(`item`)
- search(`key`)
- delete(`key`)
- reset

Examples:

    my_list = RubyDataStructures::DoublyLinkedList.new
    my_list.head       # Returns a `RubyDataStructures::DoublyLinkedList::Element` element, whose key is nil
    my_list.tail       # Returns a `RubyDataStructures::DoublyLinkedList::Element` element, whose key is nil
    my_list.empty?     # Returns `true`
    my_list.insert(7)
    my_list.search(7)  # Returns a `RubyDataStructures::DoublyLinkedList::Element` element, whose key is `7`
    my_list.delete(7)

## Max Heap

`MaxHeap` inherits most of its functionality from `Array`.
A `max heap` can be initialized by running:

  RubyDataStructures::MaxHeap.build(array)

where `array` is an array, out of which we would like to build a max heap.

For example, a heap can be built out of an array `[4, 1, 3, 2, 16, 9, 10, 14, 8, 7]` by running:

    heap = RubyDataStructures::MaxHeap.build([4, 1, 3, 2, 16, 9, 10, 14, 8, 7])
    # Returns the MaxHeap: [16, 14, 10, 8, 7, 9, 3, 2, 4, 1]

The `maximum` of the heap can be accessed by running:

    heap.maximum # Returns `16`

The maximum of the heap can be extracted by running:

    heap.extract_maximum!

The key of a particular element can be increased by running:

    heap.increase_key!(index, key)

Example:

    heap.increase_key!(8, 15)

A key can be inserted into a heap by running:

    heap.insert!(key)

Example:

    heap.insert!(11)


Author
------

B V Satyaram <[bvsatyaram.com](http://bvsatyaram.com)>