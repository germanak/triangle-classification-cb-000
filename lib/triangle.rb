class Triangle
  # write code here
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if self.a < 0 && self.b < 0 && self.c < 0
      raise TriangleError
    else
      if (a == b) && (b == c) && (a == c)
        :equilateral
      elsif (a == b) || (b == c) || (a == c)
        :isosceles
      end
    end
  end
end

class TriangleError < StandardError

end
