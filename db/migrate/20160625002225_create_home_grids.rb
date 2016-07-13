class CreateHomeGrids < ActiveRecord::Migration
  def change
    create_table :home_grids do |t|
      t.integer :parent_id, default: 0
      t.integer :template_id, default: 0
      t.string :caption, limit: 50, default: "#"
      t.integer :row
      t.integer :col
      t.integer :size_x
      t.integer :size_y
      t.string :link, limit: 100, default: "#"
      t.string :picture, limit: 50
      t.timestamps null: false
    end
  end
end
