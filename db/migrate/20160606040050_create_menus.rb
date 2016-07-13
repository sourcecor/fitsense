class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.integer :parent_id, default: 0
      t.string :caption, :limit => 30
      t.string :action, :limit => 50
      t.string :icon, default: "fa-th", :limit => 20
      t.integer :seq, default: 0
      t.timestamps null: false
    end
  end
end
