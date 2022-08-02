require './lib/pantry'
require './lib/ingredient'
require './lib/recipe'
require './lib/cook_book'

describe Pantry do
 it 'can check overall stock, can check for certain ingreditent' do
   ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
   ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
   pantry = Pantry.new

   expect(pantry.stock).to eq({})
   expect(pantry.stock_check(ingredient1)).to eq(0)
  end

  it 'can add certain ingredient' do
    ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
    pantry = Pantry.new
    pantry.restock(ingredient1, 5)
    pantry.restock(ingredient1, 10)
    pantry.restock(ingredient2, 7)

    expect(pantry.stock_check(ingredient1)).to eq(15)
    expect(pantry.stock_check(ingredient2)).to eq(7)
  end

  it 'test' do
    pantry = Pantry.new
    cookbook = CookBook.new
   ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
   ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
   recipe1 = Recipe.new("Mac and Cheese")
   recipe1.add_ingredient(ingredient1, 2)
  recipe1.add_ingredient(ingredient2, 8)
  ingredient3 = Ingredient.new({name: "Ground Beef", unit: "oz", calories: 100})
  ingredient4 = Ingredient.new({name: "Bun", unit: "g", calories: 75})
  recipe2 = Recipe.new("Cheese Burger")
  recipe2.add_ingredient(ingredient1, 2)
  recipe2.add_ingredient(ingredient3, 4)
  recipe2.add_ingredient(ingredient4, 1)

  expect(recipe1.total_calories).to eq(440)
  expect(recipe2.total_calories).to eq(675)

end
  

end
