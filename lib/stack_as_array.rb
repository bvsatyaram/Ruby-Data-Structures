class StackAsArray
  # Initializes a stack of size *size*
  # The value of *top* for an empty stack is +nil+
  def initialize(size = 1)
    @array = Array.new(size)
    @top = nil
  end

  # Returns true if the stack is empty
  def empty?
    @top.nil?
  end

  # Returns true if the stack is full
  def full?
    @top == @array.length - 1
  end

  def singleton?
    @top == 0
  end

  # Pushes an element *element* into the stack
  def push(element)
    if self.full?
      raise "Stack Overflow - The stack is full"
    end

    if self.empty?
      @top = 0
    else
      @top = @top + 1
    end

    @array[@top] = element
  end

  def pop
    if self.empty?
      raise "Stack Underflow - The stack is empty"
    end

    x = @array[@top]
    if self.singleton?
      @top = nil
    else
      @top = @top - 1
    end

    return x
  end

  def reset
    @array = Array.new(@array.length)
    @top = nil
  end

  #TODO: Implement *each* method
end
