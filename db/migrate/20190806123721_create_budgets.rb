class CreateBudgets < ActiveRecord::Migration[5.2]
  def change
    create_table :budgets do |t|
      t.integer :user_id
      t.string :name

      t.timestamps
    end
  end
end
