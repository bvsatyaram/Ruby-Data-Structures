class RubyDataStructures::SinglyLinkedList  
  # Initializes the SinglyLinkedList
  def initialize
    @sentinal = RubyDataStructures::SinglyLinkedList::Element.new(self, nil)
    self.reset
  end

  def head
    @sentinal.next
  end

  def empty?
    self.head == @sentinal
  end

  def reset
    @sentinal.next = @sentinal
  end

  # Splices an element onto the front of the linked list
  # Arguments:
  # *item* => Value to store in the element to be inserted
  def insert(item)
    element = RubyDataStructures::SinglyLinkedList::Element.new(self, item)
    element.next = @sentinal.next
    @sentinal.next = element
  end

  # Returns the first element with a given key
  # Arguments:
  # *key* => Key of the element to be searched for
  def search(key)
    element = self.head
    while (element != @sentinal) && (element.key != key)
      element = element.next
    end

    return element
  end

  # Removes the first element with a given key from the linked list
  # Arguments:
  # *key* => Key of the element to be removed
  def delete(key)
    element = self.head
    prev_element = @sentinal
    
    while (element != @sentinal) && (element.key != key)
      prev_element = element
      element = element.next
    end

    if element == @sentinal
      raise "Argument Error - No element with the key found"
    else
      prev_element.next = element.next
    end
  end
end
