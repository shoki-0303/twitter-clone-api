require 'test_helper'

class UserTest < ActiveSupport::TestCase
  #testの前に呼び出す
  def setup
    @user = User.new(name: 'test_user', email: 'test@example.com')
  end
end