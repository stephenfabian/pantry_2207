class Pantry
  attr_reader :stock
    def initialize 
      @stock = {}
    end

    def stock_check(ingredient_looking_for)
      count = 0
      @stock.keys.each do |ingredient|
        if ingredient == ingredient_looking_for
          count += @stock[ingredient]
        end
      end
      count
    end

    def restock(ingredient, num_ingredient)
      if @stock.keys.include?(ingredient)
          @stock[ingredient] += num_ingredient
      else
        @stock[ingredient] = num_ingredient
      end
    end

end
