class Budget < ApplicationRecord
  belongs_to :user
  has_many :accounts
  validates :name, presence: true, length: { maximum: 32 }

  def total
    sum = 0
    accounts.each { |account| sum += account.total }
    return sum
  end
end
