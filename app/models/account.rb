class Account < ApplicationRecord
  belongs_to :budget
  validates :name, presence: true, length: { maximum: 32 }
end
