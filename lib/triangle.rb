class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    begin 
      raise TriangleError unless [side1, side2, side3].all?{|side| side.positive?()} && side1+side2>side3 && side1+side3>side2 && side2+side3>side1
    end
    if side1 == side2 && side2 == side3
      :equilateral
    elsif side1 == side2 || side2 == side3 || side1 == side3
      :isosceles
    else :scalene
    end
  end

  class TriangleError < StandardError
    # triangle error code
    def message
      "error"
    end
  end
end
