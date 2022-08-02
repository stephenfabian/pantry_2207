require './lib/pantry'
require './lib/ingredient'
require './lib/recipe'
require './lib/cook_book'

describe CookBook do
it 'test' do
  ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
   ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
   recipe1 = Recipe.new("Mac and Cheese")
    recipe1.add_ingredient(ingredient1, 2)
    recipe1.add_ingredient(ingredient1, 4)
    recipe1.add_ingredient(ingredient2, 8)
    recipe2 = Recipe.new("Cheese Burger")
    cookbook = CookBook.new
    cookbook.add_recipe(recipe1)
    cookbook.add_recipe(recipe2)


    expect(cookbook.recipes).to eq([recipe1, recipe2])
end

end