require('spec_helper')

describe(Ingredient) do

  describe('#recipe') do
    it('tells which recipe the instruction belongs to') do
      test_recipe = Recipe.create({:title => 'Pork Chops', :rating => '5'})
      test_ingredient = Ingredient.create({:name => '2 pork chops', :recipe_id => test_recipe.id})
      expect(test_ingredient.recipe()).to(eq(test_recipe))
    end
  end
end
