class Circle
    def initialize(radius)
      @radius = radius
    end
    
    def radius_squared
      @radius**2
    end
  
    def area
      Math::PI * radius_squared
    end
end
  
  