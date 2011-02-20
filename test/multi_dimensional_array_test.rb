# To change this template, choose Tools | Templates
# and open the template in the editor.

$:.unshift File.join(File.dirname(__FILE__),'..','lib')

require 'test/unit'
require 'multi_dimensional_array'

class MultiDimensionalArrayTest < Test::Unit::TestCase
  def setup
    @mda = MultiDimensionalArray.new(2,3,4)
  end

  def test_multi_dimensional_array
    assert_equal nil, @mda[1,2,3]

    @mda[1,2,3] = 5
    assert_equal 5, @mda[1,2,3]
  end
end
