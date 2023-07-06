class AddFullPaidToBills < ActiveRecord::Migration[7.0]
  def change
    add_column :bills, :full_paid, :boolean, default: false
  end
end
