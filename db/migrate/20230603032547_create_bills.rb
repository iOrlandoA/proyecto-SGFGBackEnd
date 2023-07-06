class CreateBills < ActiveRecord::Migration[7.0]
  def change
    create_table :bills do |t|
      t.string :name
      t.float :price
      t.string :description
      t.string :area
      t.date :date_created
      t.date :date_expired
      t.integer :bill_ref 

      t.timestamps
    end
  end
end

