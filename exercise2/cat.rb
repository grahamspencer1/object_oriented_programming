class Cat

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

end

pet1 = Cat.new("Felix", "Fish", "Lunch")
pet2 = Cat.new("Garfield", "Lasanga", "Dinner")

puts "#{pet1}"
puts "#{pet2}"
