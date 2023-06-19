class AddVisibleToBills < ActiveRecord::Migration[7.0]
  def change
    add_column :bills, :visible, :boolean
  end
end
