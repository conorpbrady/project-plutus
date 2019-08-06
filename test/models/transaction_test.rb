require 'test_helper'

class TransactionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @user = users(:finn)
    @budget = @user.budgets.build(name: "New Budget")
    @account = @budget.accounts.build(name: "Checking")
    @category = @user.categories.build(name: "Groceries")
    @payee = @user.payees.build(name: "CostCo")
    @transaction = @account.transactions.build(transaction_date: Date.today(),
                                              payee: @payee,
                                              category: @category)
  end

  test "should be valid" do
    assert @transaction.valid?
  end

  test "date should not be empty" do
    @transaction.transaction_date = nil
    assert_not @transaction.valid?
  end
end
