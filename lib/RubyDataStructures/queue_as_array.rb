class RubyDataStructures::QueueAsArray
  # Initializes a stack of size +size+
  # The value of +head+ for a new stack is +nil+
  # The value of +tail+ for a new stack is +0+
  def initialize(size = 1)
    @length = size
    self.reset
  end

  # Returns +true+ if the queue is empty
  def empty?
    @head.nil?
  end

  # Returns +true+ if the queue is full
  def full?
    @head == @tail
  end

  # The queue is enqueued with +element+
  def enqueue(element)
    raise "Queue Overflow - The queue is full" if self.full?

    @array[@tail] = element

    if @head.nil?
      @head = 0
    end

    if @tail == @length - 1
      @tail = 0
    else
      @tail = @tail + 1
    end
  end

  # The queue is dequeued
  def dequeue
    raise "Queue Underflow - The queue is empty" if self.empty?
    
    x = @array[@head]

    if @head == @length - 1
      @head = 0
    else
      @head = @head + 1
    end

    if @head == @tail
      self.reset
    end

    return x
  end

  # Resets the queue
  def reset
    @array = Array.new(@length)
    @head = nil
    @tail = 0
  end
end
