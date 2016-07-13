class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :asset, limit: 50
      t.references :imageable, index: true, polymorphic: true
      t.integer :seq, default: 0
      t.timestamps null: false
    end
  end
end
