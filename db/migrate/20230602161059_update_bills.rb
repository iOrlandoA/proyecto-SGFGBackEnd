class UpdateBills < ActiveRecord::Migration[7.0]
  def change
    rename_column :bills, :startdate, :date_created
    change_column :bills, :date_created, :string

    rename_column :bills, :finishdate, :date_expired
    change_column :bills, :date_expired, :string

    rename_column :bills, :billtype, :area
    change_column :bills, :area, :string

    add_column :bills, :voucher, :integer
  end
end
