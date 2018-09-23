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

  test "email should be present" do
    @user.email = " "
    assert_not @user.valid?
  end

  test "name should not be too long" do
    @user.name = "a" * 51
    assert_not @user.valid?
  end

  test "email should not be too long" do
    @user.email = "a" * 244 + "@example.com"
  end

  test "email validation should accept valid adress" do
    valid_addresses = [
      "user@example.com",
      "USER@foo.COM",
      "A_US-ER@foo.bar.org",
      "first.last@foo.jp",
      "alice+bob@baz.cn"
    ]
    valid_addresses.each do |valid_adress|
      @user.email = valid_adress
      assert @user.valid?, "#{valid_adress.inspect} should be valid"
    end
  end
end