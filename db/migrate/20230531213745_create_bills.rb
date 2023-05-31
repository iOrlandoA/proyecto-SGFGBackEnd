class CreateBills < ActiveRecord::Migration[7.0]
  def change
    create_table :bills do |t|
      t.string :name
      t.integer :price
      t.integer :billtype
      t.string :description
      t.date :startdate
      t.date :finishdate

      t.timestamps
    end
  end
end
