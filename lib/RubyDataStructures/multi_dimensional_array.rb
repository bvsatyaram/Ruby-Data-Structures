class RubyDataStructures::MultiDimensionalArray
  def initialize(*dimensions)
    @dimensions = Array.new(dimensions.length)
    @factors = Array.new(dimensions.length)
    product = 1
    i = dimensions.length - 1

    while i >= 0
      @dimensions[i] = dimensions[i]
      @factors[i] = product
      product *= dimensions[i]
      i -= 1
    end

    @data = Array.new(product)
  end

  def get_offset(indices)
    raise IndexError if indices.length != @dimensions.length

    offset = 0

    (0..(@dimensions.length - 1)).each do |i|
      
      raise IndexError if indices[i] < 0 || indices[i] >= @dimensions[i]

      offset += @factors[i]*indices[i]
    end

    return offset
  end

  def [](*indices)
    @data[self.get_offset(indices)]
  end

  def []=(*indices_and_value)
    value = indices_and_value.pop
    @data[self.get_offset(indices_and_value)] = value
  end
end