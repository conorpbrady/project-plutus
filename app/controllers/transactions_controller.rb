class TransactionsController < ApplicationController
  def create
    category = Category.find_by(name: params[:transaction][:category])
    payee = Payee.find_by(name: params[:transaction][:payee])
    payee ||= current_user.payees.build(name: params[:transaction][:payee])

    @transaction = current_account.transactions.build(
        transaction_date: params[:transaction][:transaction_date],
        payee: payee,
        category: category,
        amount_in: params[:transaction][:amount_in],
        amount_out: params[:transaction][:amount_out]
      )

    if @transaction.save
      @account = current_account
      @transactions = current_account.transactions
      notice = "Transaction saved"
      respond_to do |format|
        format.js { render :layout => !request.xhr? }
      end
    else
      notice = "Transaction could not be saved"
    end

  end

  def destroy
  end

  def update
  end


  private
    def transaction_params
      params.require(:transaction).permit(:transaction_date, :payee,
                                          :category, :amount_in, :amount_out)
    end
end
