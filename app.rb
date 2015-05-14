require("bundler/setup")
Bundler.require(:default)
require('pry')


Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @recipes = Recipe.all()
  @categories = Category.all()
  erb(:index)
end

get('/recipe/:id') do
  @recipe = Recipe.find(params.fetch('id'))
  erb(:recipe)
end

post('/category_add/') do
  @cat_name = params.fetch('cat_name')
  Category.create({:cat_name => @cat_name})
  @categories = Category.all()
  @recipes = Recipe.all()
  erb(:index)
end

post('/recipe_add/') do
  @title = params.fetch('title')
  @rating = params.fetch('rating')
  Recipe.create({:title => @title, :rating => @rating})
  @categories = Category.all()
  @recipes = Recipe.all()
  erb(:index)
end

post('/ingredient_add') do
  @recipe = Recipe.find(params.fetch('id'))
  @name = params.fetch('name')
  Ingredient.create({:name => @name, :recipe_id => recipe.id().to_i})
  @ingredients = Ingredient.all()
  erb(:recipe)
end
