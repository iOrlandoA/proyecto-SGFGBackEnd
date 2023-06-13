class ModifyBillsTable < ActiveRecord::Migration[7.0]
  def change
    rename_column :bills, :voucher, :bill_ref
    change_column :bills, :price, :float
  end
end
