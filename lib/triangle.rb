class Triangle
  attr_accessor :side_1, :side_2, :side_3
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end
    
  def kind #instance method
    # Return (as a symbol), triangle's type
    # sum of lengths of 2 sides always exceed length of third side
    # each side must be larger than 0
    
    positive_length = (@side_1 > 0) && (@side_2 > 0) && (@side_3 > 0)
    triangle_inequality = (@side_1 + @side_2 > @side_3) || (@side_1+ @side_3 > @side_2) || (@side_2 + @side_3 > @side_1) 
    
    raise TriangleError unless positive_length && triangle_inequality
    
    if @side_1 == @side_2 && @side_2 == @side_3 
      :equilateral #equal sides
    #isosceles triangles have two sides equal
    elsif @side_1 == @side_2 || @side_2 = @side_3 || @side_1 == side_3
      :isosceles
    # scalene triangles have no equal sides
    elsif @side_1 != @side_2 && @side_2 != @side_3 && @side_1 != @side_3
      :scalene
    end
    
    # if ...
    #   begin
    #     raise PartnerError
    #   rescue PartnerError => error  #rescue method creates instance of PartnerError 
    #       puts error.message #and puts out the result of calling message on that inst
    #   end
    # else
    # ...
    # end
  end
    
  # Custom error class, `TriangleError`  inherits from `StandardError`:
  class TriangleError < StandardError 
    def message
      "This is an invalid triangle"
    end
  end
  
end


# class Triangle
  
#   def initialize(side_1,side_2,side_3)
#     @side_1 = side_1
#     @side_2 = side_2
#     @side_3 = side_3
#   end
  
#   def kind()
#     if (@side_1 <= 0) || (@side_2 <= 0) || (@side_3 <= 0)
#       raise TriangleError
#     elsif (@side_1+@side_2 <= @side_3) || (@side_1+@side_3 <= @side_2) || (@side_2+@side_3 <= @side_1)
#       raise TriangleError
#     else
#       if (@side_1 == @side_2) && (@side_2 == @side_3)
#         :equilateral
#       elsif (@side_1 == @side_2) || (@side_2 == @side_3) || (@side_1 == @side_3)
#         :isosceles
#       elsif (@side_1 != @side_2) && (@side_2 != @side_3) && (@side_1 != @side_3)
#         :scalene
#       elsif (@side_1 == false) && (@side_2 == false) && (@side_3 == false)
#       raise TriangleError
#       end
#     end

#   end
  
# end

# class TriangleError < StandardError
#   def message
#     "This is an illegal triangle"
#   end
# end