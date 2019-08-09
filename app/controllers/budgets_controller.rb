class BudgetsController < ApplicationController

  before_action :authenticate_user!

  def show
    current_budget
    @accounts = @budget.accounts
  end

  def index
    @budgets = current_user.budgets
  end


end
