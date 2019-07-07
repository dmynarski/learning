require 'test_helper'

class RecipesTest < ActionDispatch::IntegrationTest

  def setup
    @chef = Chef.create!(chefname: "Pablo", email: "picasso@gmail.com")
    @recipe = Recipe.create(name: "Caramelized baby carrots", description: "Little baby carrots cameralized on pan", chef: @chef)
    @recipe2 = @chef.recipes.create(name: "Caramelized beetroot", description: "Pieces of beetroot cameralized on pan")
    @recipe2.save
  end


  test "should get recipes index" do
    get recipes_url
    assert_response :success
  end

  test "should get recipes listing" do
    get recipes_path
    assert_template 'recipes/index'
    assert_match @recipe.name, response.body
    assert_match @recipe2.name, response.body
  end

  test "should get recipes show" do
    get recipe_path(@recipe)
    assert_template 'recipes/show'
    assert_match @recipe.name, response.body
    assert_match @recipe.description, response.body
    assert_match @chef.chefname, response.body
  end
end
