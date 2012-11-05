def fifo_stack size=1
  RubyDataStructures::FifoStack.new size
end

def stack size=1
  RubyDataStructures::Stack.new size
end

def multi_array(*dimensions)
  RubyDataStructures::MultiDimensionalArray.new(*dimensions)
end

def max_heap(*array)
  RubyDataStructures::MaxHeap.build(array.flatten)
end

def linked_list(type = :single)
  case type
  when :single 
    RubyDataStructures::SinglyLinkedList.new 
  when :double, :dbl
    RubyDataStructures::DoublyLinkedList.new
  else
    raise ArgumentError, "Unknown or unsupported kind of Linked List: #{type}, must be: :single or :double"
  end
end

def aqueue size
  RubyDataStructures::QueueAsArray.new size
end