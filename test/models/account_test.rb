require 'test_helper'

class AccountTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = users(:finn)
    @budget = @user.budgets.build(name: "New Budget")
    @account = @budget.accounts.build(name: "Checking")
  end

  test "should be valid" do
    assert @account.valid?
  end

  test "name should not be empty" do
    @account.name = '';
    assert_not @account.valid?
  end

  test "name should not exceed 32 chars" do
    @account.name = "a" * 33;
    assert_not @account.valid?
  end
end
