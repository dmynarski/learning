require 'test_helper'

class ChefTest < ActiveSupport::TestCase
  def setup
    @chef = Chef.new(chefname: "dominik", email: "asd@asd.com")
  end

  test "should be vaild" do
    assert @chef.valid?
  end

  test "length test" do
    @chef.chefname = "a"*20
    assert_not @chef.valid?
  end
end