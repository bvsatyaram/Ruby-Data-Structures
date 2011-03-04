$:.unshift File.join(File.dirname(__FILE__),'..','lib')

require 'test/unit'
require 'RubyDataStructures'

class DoublyLinkedListTest < Test::Unit::TestCase
  def setup
    @list = RubyDataStructures::DoublyLinkedList.new
  end
  
  def test_initialize
    assert_nil @list.head.key
    assert_nil @list.tail.key
    assert @list.empty?
  end

  def test_singly_linked_list
    assert @list.empty?
    assert_nil @list.head.key
    assert_nil @list.tail.key
    assert_nil @list.search(7).key
    assert_nil @list.search(9).key

    @list.insert(7)
    assert !@list.empty?
    assert_equal 7, @list.head.key
    assert_equal 7, @list.tail.key
    assert_equal 7, @list.search(7).key
    assert_nil @list.search(9).key

    @list.insert(9)
    assert !@list.empty?
    assert_equal 9, @list.head.key
    assert_equal 7, @list.tail.key
    assert_equal 7, @list.search(7).key
    assert_equal 9, @list.search(9).key

    @list.delete(7)
    assert !@list.empty?
    assert_equal 9, @list.head.key
    assert_equal 9, @list.tail.key
    assert_nil @list.search(7).key
    assert_equal 9, @list.search(9).key

    assert_raise RuntimeError, "Argument Error - No element with the key found" do
      @list.delete(7)
    end
    assert !@list.empty?
    assert_equal 9, @list.head.key
    assert_equal 9, @list.tail.key
    assert_nil @list.search(7).key
    assert_equal 9, @list.search(9).key

    @list.reset
    assert @list.empty?
    assert_nil @list.head.key
    assert_nil @list.tail.key
    assert_nil @list.search(7).key
    assert_nil @list.search(9).key
  end
end
