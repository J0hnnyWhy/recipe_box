require('spec_helper')

describe(Recipe) do
  describe('#ingredient') do
    it('returns the ingredients in the recipe') do
      test_recipe = Recipe.create({:title => 'Lemon Curd Tart'})
      test_ingredient = Ingredient.create({:name => '8 lemons', :recipe_id => test_recipe.id()})
      test_ingredient2 = Ingredient.create({:name => '3 eggs', :recipe_id => test_recipe.id()})
      expect(test_recipe.ingredients()).to(eq([test_ingredient, test_ingredient2]))
    end
  end
end
