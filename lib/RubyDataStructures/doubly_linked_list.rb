class RubyDataStructures::DoublyLinkedList < RubyDataStructures::SinglyLinkedList

  # Overrides the +initialize+ method in SinglyLinkedList
  # Initializes the DoublyLinkedList
  def initialize
    @sentinel = RubyDataStructures::DoublyLinkedList::Element.new(self, nil)
    self.reset
  end

  # Extends the +reset+ method in SinglyLinkedList to also set +previous+
  # attribute to the sentinel
  def reset
    super
    @sentinel.previous = @sentinel
  end

  # Returns the last element of the linked list
  def tail
    @sentinel.previous
  end

  # Overrides the +insert+ method in SinglyLinkedList to also set/update
  #  +previous+ attributes to the elements
  def insert(item)
    element = RubyDataStructures::DoublyLinkedList::Element.new(self, item)
    element.next = @sentinel.next
    @sentinel.next = element
    element.next.previous = element
    element.previous = @sentinel
  end

  # Overrides the +delete+ method in SinglyLinkedList to optimize the 
  # implementation.
  def delete(key)
    element = search(key)
    
    if element == @sentinel
      raise "Argument Error - No element with the key found"
    else
      element.previous.next = element.next
      element.next.previous = element.previous
    end
  end
end
