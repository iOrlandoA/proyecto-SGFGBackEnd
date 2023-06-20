class AddBillIdToPayments < ActiveRecord::Migration[7.0]
  def change
    add_reference :payments, :bill, null: false, foreign_key: true
  end
end
