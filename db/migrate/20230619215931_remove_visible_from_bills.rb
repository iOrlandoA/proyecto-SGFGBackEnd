class RemoveVisibleFromBills < ActiveRecord::Migration[7.0]
  def change
    remove_column :bills, :visible
  end
end