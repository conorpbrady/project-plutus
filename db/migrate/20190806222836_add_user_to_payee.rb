class AddUserToPayee < ActiveRecord::Migration[5.2]
  def change
    add_column :payees, :user_id, :integer
  end
end
