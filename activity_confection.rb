class Confection
    def prepare
      puts "Baking at 350 degrees for 25 minutes"
    end
  end
  
  class Cupcake < Confection
    def prepare
      super
      puts "Applying Frosting"
    end
  end
  
  class BananaCake < Confection 
  end