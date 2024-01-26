class Shape
    def area
      raise NotImplementedError, "Subclasses must implement the 'area' method."
    end
end
  
class Circle < Shape
    def initialize(radius)
      @radius = radius
    end
  
    def area
      Math::PI * @radius**2
    end
end
  
  