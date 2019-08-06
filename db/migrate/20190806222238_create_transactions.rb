class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.integer :account_id
      t.date :transaction_date
      t.integer :payee_id
      t.integer :category_id
      t.text :notes
      t.decimal :amount_in
      t.decimal :amount_out

      t.timestamps
    end
  end
end
