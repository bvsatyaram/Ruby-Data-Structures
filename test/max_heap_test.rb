$:.unshift File.join(File.dirname(__FILE__),'..','lib')

require 'test/unit'
require 'RubyDataStructures'

class MaxHeapTest < Test::Unit::TestCase
  def test_build
    assert_equal [16, 14, 10, 8, 7, 9, 3, 2, 4, 1], RubyDataStructures::MaxHeap.build([4, 1, 3, 2, 16, 9, 10, 14, 8, 7])
  end

  def test_maximum
    array = [4, 1, 3, 2, 16, 9, 10, 14, 8, 7]
    heap = RubyDataStructures::MaxHeap.build(array)

    assert_equal 16, heap.maximum
  end

  def test_extract_maximum
    array = [4, 1, 3, 2, 16, 9, 10, 14, 8, 7]
    heap = RubyDataStructures::MaxHeap.build(array)

    assert_equal 10, heap.heapsize
    assert_equal 16, heap.extract_maximum!
    assert_equal 9, heap.heapsize
    assert_equal [14,  8, 10, 4, 7, 9, 3, 2, 1, 1], heap
  end

  def test_increase_key
    array = [4, 1, 3, 2, 16, 9, 10, 14, 8, 7]
    heap = RubyDataStructures::MaxHeap.build(array)

    assert_equal [16, 15, 10, 14, 7, 9, 3, 2, 8, 1], heap.increase_key!(8, 15)
  end

  def test_insert
    array = [4, 1, 3, 2, 16, 9, 10, 14, 8, 7]
    heap = RubyDataStructures::MaxHeap.build(array)

    assert_equal 10, heap.heapsize
    assert_equal 16, heap.extract_maximum!
    assert_equal 9, heap.heapsize
    assert_equal [14,  8, 10, 4, 7, 9, 3, 2, 1, 1], heap

    assert_equal [14, 11, 10, 4, 8, 9, 3, 2, 1, 7], heap.insert!(11)
  end
end
