class AccountsController < ApplicationController

  def show
    @budget = current_user.budgets.find(params[:budget_id])
    @accounts = @budget.accounts
    @account = @accounts.find(params[:id])
    @transactions = @account.transactions
  end
end
