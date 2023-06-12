class CreateBills < ActiveRecord::Migration[7.0]
  def change
    create_table :bills do |t|
      t.string :name
      t.integer :price
      t.integer :bill_ref
      t.string :description
      t.string :area
      t.date :date_created
      t.date :date_expired
       

      t.timestamps
    end
  end
end

