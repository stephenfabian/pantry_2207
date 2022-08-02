require './lib/pantry'
require './lib/ingredient'
require './lib/recipe'
require './lib/cook_book'

describe Recipe do
  it 'test' do
   ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
   ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
   recipe1 = Recipe.new("Mac and Cheese")

   expect(recipe1.name).to eq("Mac and Cheese")
   expect(recipe1.ingredients_required).to eq({})
  end

  it 'test' do
   ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
   ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
   recipe1 = Recipe.new("Mac and Cheese")
    recipe1.add_ingredient(ingredient1, 2)
    recipe1.add_ingredient(ingredient1, 4)
    recipe1.add_ingredient(ingredient2, 8)

    expected = { ingredient1 => 6, ingredient2 => 8 }
   
    expect(recipe1.ingredients_required).to eq(expected)
    expect(recipe1.ingredients).to eq([ingredient1, ingredient1, ingredient2])
  
  end

end