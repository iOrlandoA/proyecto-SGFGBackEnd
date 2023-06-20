class AddVisibleToAreas < ActiveRecord::Migration[7.0]
  def change
    add_column :areas, :visible, :boolean
  end
end
