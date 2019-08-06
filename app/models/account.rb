class Account < ApplicationRecord
  belongs_to :budget
  has_many :transactions
  validates :name, presence: true, length: { maximum: 32 }



  def total
    transactions.sum(:amount_in) - transactions.sum(:amount_out)
  end
end
