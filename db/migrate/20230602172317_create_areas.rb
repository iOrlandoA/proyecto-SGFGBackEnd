class CreateAreas < ActiveRecord::Migration[7.0]
  def change
    create_table :areas do |t|
      t.integer :area_type
      t.string :name
      t.boolean :visible, default: true

      t.timestamps
    end
  end
end
