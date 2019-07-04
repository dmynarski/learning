require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  def setup
    @recipe = Recipe.new(name: "Vegetable", description: "Yummy recipe of vegetable!")
  end

  test "recipe should be valid" do
    assert @recipe.valid?
  end
  test "recipe should be present" do
    @recipe.name = " "
    assert_not @recipe.valid?
  end
end