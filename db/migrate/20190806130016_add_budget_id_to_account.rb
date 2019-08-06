class AddBudgetIdToAccount < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :budget_id, :integer
  end
end
