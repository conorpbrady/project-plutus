require 'test_helper'

class BudgetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = users(:finn)
    @budget = @user.budgets.build(name: "New Budget")
  end

  test "should be valid" do
    assert @budget.valid?
  end

  test "name should not be empty" do
    @budget.name = '';
    assert_not @budget.valid?
  end

  test "name should not exceed 32 chars" do
    @budget.name = "a" * 33;
    assert_not @budget.valid?
  end

end
