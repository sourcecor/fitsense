class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.integer :parent_id, default: 0
      t.string :caption, limit: 20, default: '#'
      t.string :description, :limit => 100, default: '#'
      t.string :link, :limit => 50, default: '#'
      t.string :picture, :limit => 50
      t.integer :seq, default: 0
      t.timestamps null: false
    end
  end
end
