require 'test_helper'

class MicropostTest < ActiveSupport::TestCase
  def setup
    @user = users(:michael)
    # このコードは習慣的にただしくない
    @micropost = Micropost.new(content: "Lorem ipsum", user_id: @user.id)
  end

  test "shuld be valid" do
    assert @micropost.valid?
  end

  test "user id should be present" do
    @micropost.user_id = nil
    assert_not @micropost.valid?
  end

  test "content should be present" do
    @micropost.content = " "
    assert_not @micropost.valid?
  end

  test "content should be at most 140 characters" do
    @micropost.content = "a" * 141
  end
end
