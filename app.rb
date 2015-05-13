require("bundler/setup")
Bundler.require(:default)
require('pry')

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @recipes = Recipe.all()
  erb(:index)
end

get('/recipe/:id') do
  @recipe = Recipe.find(params.fetch('id'))
  erb(:recipe)
end


post('/recipe_add/') do
  @title = params.fetch('title')
  @rating = params.fetch('rating')
  Recipe.create({:title => @title, :rating => @rating})
  @recipes = Recipe.all()
  erb(:index)
  # redirect('/')
end
