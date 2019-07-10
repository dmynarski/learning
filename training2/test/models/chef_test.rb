require 'test_helper'

class ChefTest < ActiveSupport::TestCase
  def setup
    @chef = Chef.new(chefname: "dominik", email: "asd@asd.com", password: "password",
                     password_confirmation: "password")
  end

  test "should be vaild" do
    assert @chef.valid?
  end

  test "length test" do
    @chef.chefname = "a"*20
    assert_not @chef.valid?
  end

  test "password should be present" do
    @chef.password = @chef.password_confirmation = ""
    assert_not @chef.valid?
  end

  test "minimum length of password" do
    @chef.password = @chef.password_confirmation = "x"*4
    assert_not @chef.valid?
  end
end