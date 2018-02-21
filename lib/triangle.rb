class Triangle
  # write code here
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if (self.a <= 0 || self.b <= 0 || self.c <= 0)
      raise TriangleError
    else
      if (self.a == self.b) && (self.b == self.c) && (self.a == self.c)
        :equilateral
      elsif (self.a == self.b) || (self.b == self.c) || (self.a == self.c)
        :isosceles
      else
        :scalene
      end
    end
  end
end

class TriangleError < StandardError

end
