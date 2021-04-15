class CreateBalanceManagements < ActiveRecord::Migration[5.2]
  def change
    create_table :balance_managements do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.integer :category_id

      t.timestamps
    end
  end
end
