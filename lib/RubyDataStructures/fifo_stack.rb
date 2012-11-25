class RubyDataStructures::FifoStack < RubyDataStructures::StackAsArray
  def push(element)
    
    if self.full?
      @array.shift
      @top -= 1
    end      

    if self.empty?
      @top = 0
    else
      @top = @top + 1
    end

    @array[@top] = element
  end  
end