class ApplicationController < ActionController::Base


  def current_budget
    unless params[:id].nil?
      @budget = current_user.budgets.find(params[:id])
    else
      @budget = current_user.budgets.first
    end
  end

  def current_account
    unless params[:id].nil?
      @account = current_budget.accounts.find(params[:id])
    else
      @budget = current_budget.accounts.first
    end
  end

  protected
    def authenticate_user!
      if user_signed_in?
        super
      else
        redirect_to user_session_path
      end
    end
end
