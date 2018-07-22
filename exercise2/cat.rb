class Cat

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    if @meal_time >= 12
      "#{@meal_time} PM"
    else
      "#{@meal_time} AM"
    end
  end

  def meow
    "My name is #{@name}! I love to eat #{@preferred_food} at #{eats_at}!"
  end

end

pet1 = Cat.new("Felix", "Fish", 6)
pet2 = Cat.new("Garfield", "Lasanga", 18)

puts pet1.meow
puts pet2.meow
