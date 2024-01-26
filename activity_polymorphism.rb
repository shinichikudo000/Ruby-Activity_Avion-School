class Animal
    def speak
      raise NotImplementedError, "Subclasses must implement the 'speak' method."
    end
end
  
class Dog < Animal
    def speak
      "Woof!"
    end
end
  
class Cat < Animal
    def speak
      "Meow!"
    end
end
  