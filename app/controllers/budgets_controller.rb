class BudgetsController < ApplicationController
  def show
    @budget = current_user.budgets.find(params[:id])
    @accounts = @budget.accounts
  end

  def index
    @budgets = current_user.budgets
  end
end
