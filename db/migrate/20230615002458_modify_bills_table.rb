class ModifyBillsTable < ActiveRecord::Migration[7.0]
  def change
    # Remove the area column
    remove_column :bills, :area

    # Add the reference column
    add_reference :bills, :area, foreign_key: true
  end
end
