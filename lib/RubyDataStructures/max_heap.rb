class RubyDataStructures::MaxHeap < Array
  Infinity = 1.0/0

  attr_accessor :heapsize

  # It is assumed that the binary trees rooted at left(i) and right(i) are max heaps,
  # but self[i] might be smaller than its children, thus violating the max-heap property.
  # max_heapify! lets the value at self[i] float down in the max-heap,
  # so that the subtree rooted at index i obeys the max-heap property
  def max_heapify!(i)
    l = left(i)
    r = right(i)

    if l < self.heapsize && self[l] > self[i]
      largest = l
    else
      largest = i
    end

    if r < self.heapsize && self[r] > self[largest]
      largest = r
    end

    if largest != i
      exchange(i, largest)
      max_heapify!(largest)
    end

    return self
  end

  # Builds a max-heap from an array
  def self.build(array)
    heap = self.new(array)
    heap.heapsize = array.size

    if heap.heapsize > 0
      ((heap.heapsize/2) - 1).downto(0) do |i|
        heap.max_heapify!(i)
      end
    end

    return heap
  end

  # Returns the maximum element of the heap
  def maximum
    return self[0]
  end

  # Extracts the maximum of the heap and max_heapifies the remaining heap.
  # Returns the maximum of the input heap
  def extract_maximum!
    raise "Heap Underflow - The heap is empty" if self.heapsize < 1

    max_value = self[0]
    self[0] = self[self.heapsize - 1]
    self.heapsize = self.heapsize - 1
    self.max_heapify!(0)

    return max_value
  end

  def increase_key!(i, key)
    raise "New key is smaller than the current key" if key < self[i]

    self[i] = key
    while (i > 0) && (self[parent(i)] < self[i])
      exchange(i, parent(i))
      i = parent(i)
    end

    return self
  end

  def insert!(key)
    self.heapsize = self.heapsize + 1
    self[self.heapsize  - 1] = -Infinity
    self.increase_key!(self.heapsize - 1, key)
  end

  private

  def parent(i)
    return ((i+1)/2) - 1
  end

  def left(i)
    return (2*i) + 1
  end

  def right(i)
    return (2*i) + 2
  end

  def exchange(i, j)
    tmp = self[i]
    self[i] = self[j]
    self[j] = tmp
  end
end
