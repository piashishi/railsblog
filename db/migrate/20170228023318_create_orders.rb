class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :OrderID
      t.integer :number
      t.float :price
      t.datetime :date

      t.timestamps null: false
    end
  end
end
