$:.unshift File.join(File.dirname(__FILE__),'..','lib')

require 'test/unit'
require 'RubyDataStructures'

class DoublyLinkedListElementTest < Test::Unit::TestCase
  def setup
    @list = RubyDataStructures::SinglyLinkedList.new
    @element = RubyDataStructures::SinglyLinkedList::Element.new(@list, 9)
  end

  def test_initialize
    assert_equal 9, @element.key
    assert_nil @element.next
  end

  def test_key
    assert_equal 9, @element.key

    @element.key = 3
    assert_equal 3, @element.key
  end

  def test_next
    e1 = @element
    e2 = RubyDataStructures::SinglyLinkedList::Element.new(@list, 9)
    assert_nil e1.next
    assert_nil e2.next

    e1.next = e2
    assert_equal e2, e1.next
    assert_nil e2.next

    e2.next = e1
    assert_equal e2, e1.next
    assert_equal e1, e2.next

  end
end
