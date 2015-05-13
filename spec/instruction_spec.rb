require('spec_helper')

describe(Instruction) do

  describe('#recipe') do
    it('tells which recipe the instruction belongs to') do
      test_recipe = Recipe.create({:title => 'Pork Chops', :rating => '5'})
      test_instruction = Instruction.create({:text => 'Brine for 24 hours.', :recipe_id => test_recipe.id})
      expect(test_instruction.recipe()).to(eq(test_recipe))
    end
  end
end
