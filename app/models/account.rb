class Account < ApplicationRecord
  belongs_to :budget
  has_many :transactions
  validates :name, presence: true, length: { maximum: 32 }
end
