class Transaction < ApplicationRecord
  belongs_to :account
  belongs_to :payee
  belongs_to :category
  validates :transaction_date, presence: true

end
