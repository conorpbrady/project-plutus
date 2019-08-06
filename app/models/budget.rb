class Budget < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, length: { maximum: 32 }
end
