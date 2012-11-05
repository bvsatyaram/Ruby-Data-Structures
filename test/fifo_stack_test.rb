$:.unshift File.join(File.dirname(__FILE__),'..','lib')

require 'test/unit'
require 'RubyDataStructures'

class AutoStackTest < Test::Unit::TestCase
  def test_fifo_stack
    stack = RubyDataStructures::FifoStack.new(2)

    assert stack.empty?
    assert !stack.singleton?
    assert !stack.full?

    assert_raise RuntimeError, "Stack Underflow - The stack is empty" do
      stack.pop
    end

    stack.push(1)
    assert !stack.empty?
    assert stack.singleton?
    assert !stack.full?
    assert stack.first == 1

    stack.push(2)
    assert !stack.empty?
    assert !stack.singleton?
    assert stack.full?
    assert stack.first == 1

    stack.push(3)
    assert !stack.empty?
    assert !stack.singleton?
    assert stack.full?
    assert stack.first == 2
    assert stack.last == 3

    stack.push(4)
    assert !stack.empty?
    assert !stack.singleton?
    assert stack.full?
    assert stack.first == 3
    assert stack.last == 4
    assert stack.pop == 4
    assert !stack.full?
  end
end