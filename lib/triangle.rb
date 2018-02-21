class Triangle
  # write code here
  attr_accessor :a, :b, :c 

  def initialize(a, b, c)
    @a = a
    @b = b 
    @c = c 
  end
end

class TriangleError < StandardError

end
