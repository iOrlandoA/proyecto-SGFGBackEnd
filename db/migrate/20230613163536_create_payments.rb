class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.integer :bill_ref
      t.date :date_created
      t.float :amount
      t.integer :voucher

      t.timestamps
    end
  end
end
