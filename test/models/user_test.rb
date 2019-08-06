require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @user = users(:finn)
  end

  test "user is valid" do
    assert @user.valid?
  end

end
