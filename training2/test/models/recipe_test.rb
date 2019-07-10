require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  def setup
    @chef = Chef.create!(chefname: "Dominik",email: "dominik@ex.com", password: "password", password_confirmation: "password")
    @recipe = @chef.recipes.build(name: "Vegetable", description: "Yummy recipe of vegetable!")
  end

  test "recipe should be valid" do
    assert @recipe.valid?
  end
  test "recipe should be present" do
    @recipe.name = " "
    assert_not @recipe.valid?
  end
end