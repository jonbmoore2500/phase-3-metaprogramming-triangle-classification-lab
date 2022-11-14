class Triangle
  # write code here

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @sides = [@side1, @side2, @side3].sort
  end

  def kind
    if @sides[0] <= 0 || (@sides[0] + @sides[1]) <= @sides[2]
      raise TriangleError
    elsif @sides[0] == @sides[1] && @sides[1] == @sides[2] then
      :equilateral
    elsif @sides[0] == @sides[1] || @sides[1] == @sides[2] then
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
  end
end
