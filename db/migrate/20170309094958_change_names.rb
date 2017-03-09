class ChangeNames < ActiveRecord::Migration
  def change
  	rename_column :products, :ProductID, :PID
  end
end
