class RubyDataStructures::SinglyLinkedList::Element
  attr_accessor :key
  attr_accessor :next

  # Initializes an Element of SinglyLinkedList
  # Arguments:
  # *list* => Instance of SinglyLinkedList to which the element belongs to
  # *key*  => Value to be stored in the element.
  def initialize(list, key)
    @list = list
    @key = key
  end
end
