class Recipe

  attr_reader :name, :ingredients_required, :ingredients
  def initialize(name)
    @name = name
    @ingredients_required = {}
    @ingredients = []
  end

  def add_ingredient(ingredient, num_ingredients)
  
    @ingredients << ingredient
    if @ingredients_required.keys.include?(ingredient)
        @ingredients_required[ingredient] += num_ingredients
    else
      @ingredients_required[ingredient] = num_ingredients
    end
  end

  def total_calories
      calorie_counter = []
      @ingredients_required.each do |ingredient|
        calorie_counter << ingredient[1]

      end
      calorie_counter.sum
  end

  
end
