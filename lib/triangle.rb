require 'pry'
class Triangle

  attr_accessor :a, :b, :c

  @@all = []

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    @@all << self
end


def kind
  if a <= 0 || b <= 0 || c <= 0
    raise Triangle::TriangleError, "Size must be larger than 0 "
  end
  if ( (a+b) <= c) || ((a+c) <= b) || ((b+c) <= a)
    raise Triangle::TriangleError, "Illegal triangle!"
  end
    if a == b && b == c && c == a
    :equilateral
  elsif a != b && b == c || a == b && b != c || b != a && a == c 
    :isosceles
  else 
    :scalene
  end
end



  class TriangleError < StandardError
    
def message 
puts "YOU LOSE THE GAME!"
 end
end
end

#if @@all.any? == 0
  #riase TriangleError
#elsif a || b || c < 0
  #raise TriangleError
#elsif a² + b² != c² || a² + c² != b² || b² + c² != a²
  #raise TriangleError