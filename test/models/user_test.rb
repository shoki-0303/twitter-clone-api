require 'test_helper'

class UserTest < ActiveSupport::TestCase
  #testの前に呼び出す
  def setup
    @user = User.new(name: 'test_user', email: 'test@example.com')
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "name should be present" do
    @user.name = " "
    assert_not @user.valid?
  end
end