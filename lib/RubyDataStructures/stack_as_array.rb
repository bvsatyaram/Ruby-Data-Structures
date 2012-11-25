class RubyDataStructures::StackAsArray
  attr_reader :length, :top

  # Initializes a stack of size +size+
  # The value of +top+ for an empty stack is +nil+
  def initialize(size = 1)
    @length = size
    self.reset
  end

  # Returns +true+ if the stack is empty
  def empty?
    @top.nil?
  end

  # Returns +true+ if the stack is full
  def full?
    @top == @length - 1
  end

  def singleton?
    @top == 0
  end

  # Pushes an element +element+ into the stack
  def push(element)
    
    raise "Stack Overflow - The stack is full" if self.full?

    if self.empty?
      @top = 0
    else
      @top = @top + 1
    end

    @array[@top] = element
  end

  # Pops the stack
  def pop
    raise "Stack Underflow - The stack is empty" if self.empty?

    x = @array[@top]
    if self.singleton?
      @top = nil
    else
      @top = @top - 1
    end

    return x
  end

  # Resets the stack
  def reset
    @array = Array.new(@length)
    @top = nil
  end
  alias_method :reset!, :reset

  def size
    @array.size
  end

  def first
    @array.first
  end

  def last
    @array[@top]
  end

  def each
    @array.each do
      yield
    end
  end
end
