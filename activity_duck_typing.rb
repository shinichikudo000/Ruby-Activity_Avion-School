class Duck
  def quack
    "Quack!"
  end
end
  
class Goose
  def quack
    "Honk!"
  end
end
  
class QuackOrHonk
  def make_sound(duck_or_goose)
    duck_or_goose.quack
  end
end
  
duck = Duck.new
goose = Goose.new
  