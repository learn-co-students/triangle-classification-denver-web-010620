require 'pry'

class Triangle
  attr_reader :side_1, :side_2, :side_3

  def initialize (side_1, side_2, side_3)
    if side_1 <=0 || side_2 <= 0 || side_3 <= 0
      raise TriangleError

#      rescue

#      end
    end
    if side_1 + side_2 <= side_3 || side_1 + side_3 <= side_2 || side_2 + side_3 <= side_1
      raise TriangleError

#      rescue

#      end
    end

    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  class TriangleError < StandardError
    def message
      "Sides specified do not create a triangle."
    end
  end

  def kind
    if @side_1 == @side_2 && @side_2 == @side_3
      :equilateral
    elsif @side_1 != @side_2 && @side_1 != @side_3 && @side_2 != @side_3
      :scalene
    elsif @side_1 == @side_2 || @side_1 == @side_3 || @side_2 == @side_3
      :isosceles
    end
  end

  
end

#binding.pry