class AccountsController < ApplicationController
  before_action :authenticate_user!

  def show
    @budget = current_budget
    @accounts = @budget.accounts
    @account = current_account
    @transactions = @account.transactions
  end
end
