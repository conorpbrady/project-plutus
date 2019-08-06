class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.integer :user_id
      t.string :name
      t.integer :parent_id

      t.timestamps
    end
  end
end
