class CreateBills < ActiveRecord::Migration[7.0]
  def change
    create_table :bills do |t|
      t.string :name
      t.integer :price
      t.string :description
      t.integer :area
      t.string :date_created
      t.string :date_expired
      t.integer :voucher 

      t.timestamps
    end
  end
end

