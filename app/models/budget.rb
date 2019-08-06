class Budget < ApplicationRecord
  belongs_to :user
  has_many :accounts
  validates :name, presence: true, length: { maximum: 32 }
end
