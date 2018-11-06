require 'test_helper'

class UsersShowTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:michael)
  end

  test "successful show" do
    get user_path(@user)
    assert_template 'users/show'
  end

  test "unsuccessful show for not activated user" do
    @user.update_attribute(:activated, false)
    get user_path(@user)
    assert_redirected_to root_url
  end

end
